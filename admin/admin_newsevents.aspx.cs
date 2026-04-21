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

public partial class admin_admin_newsevents : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\server.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] validFileTypes = { "txt", "doc", "xls", "pdf" };
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
            string mypath = Server.MapPath(@"~/admin/NewsAndEvents/" + strfilepath);
            FileUpload1.PostedFile.SaveAs(mypath);
            SqlCommand cmd = new SqlCommand("insert into NewsEvents values('" + TextBox1.Text.ToString() + "','" + "~/admin/NewsAndEvents/" + strfilepath + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "') ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Successfully Uploaded....");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = "delete from NewsEvents where id='"+TextBox4.Text.ToString()+"'";
        SqlDataAdapter da = new SqlDataAdapter(str,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        MessageBox.Show("Record are Deleted...:'"+TextBox4.Text.ToString()+"'");
    }
}