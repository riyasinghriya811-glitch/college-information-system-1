using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Windows.Forms;

public partial class admin_admin_fecultylist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\server.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        display();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into faculty_list values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "') ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Successfully Stored.....");
        }
        catch (Exception ex)
        {
            MessageBox.Show("Error..." + ex.Message);
        }



    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("delete from faculty_list where fid='" + TextBox4.Text.ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("You  Success");
        }
        catch (Exception ex)
        {
            MessageBox.Show("Record Not Deleted...." + ex.Message);
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("update faculty_list set fname='" + TextBox1.Text.ToString() + "',desg='" + TextBox2.Text.ToString() + "',branch='" + TextBox3.Text.ToString() + "' where fid='" + TextBox4.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            MessageBox.Show("Error..." + ex.Message);
        }

    }
    public void display()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from faculty_list", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
}