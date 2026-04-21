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

public partial class admin_admin_feculty : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\server.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        show();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] validFileTypes = { "bmp", "gif", "png", "jpg", "jpeg","GIF" };
        string ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        bool isValidFile = false;
        for (int i = 0; i < validFileTypes.Length; i++)
        {
            if (ext == "." + validFileTypes[i])
            {
                isValidFile = true;
                break;
            }
        }
        if (!isValidFile)
        {

            MessageBox.Show("File Extension Not Mathed....");
        }
        else
        {
            string strfilepath = Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());
            string mypath = Server.MapPath(@"~/admin/feculty/" + strfilepath);
            FileUpload1.PostedFile.SaveAs(mypath);


            SqlCommand cmd = new SqlCommand("insert into feculty_info values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + "~/admin/feculty/" + strfilepath + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MessageBox.Show("File Successfully Stored In DataBase....");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("delete from feculty_info where id='" + TextBox7.Text.ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Delete Record...ID is :'" + TextBox7.Text.ToString() + "'");
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
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        TextBox7.Text = string.Empty;

    }
    public void show()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info",con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}