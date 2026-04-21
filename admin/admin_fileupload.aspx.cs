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

public partial class admin_admin_fileupload : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\server.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        show();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //FileUpload1.PostedFile.FileName=="*.pdf" || FileUpload1.PostedFile.FileName=="*.docx" || FileUpload1.PostedFile.FileName=="*.txt" 
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
            string mypath = Server.MapPath(@"~/admin/files/" + strfilepath);
            FileUpload1.PostedFile.SaveAs(mypath);
            SqlCommand cmd = new SqlCommand("insert into file_upload values('" + TextBox1.Text.ToString() + "','" + "~/admin/files/" + strfilepath + "') ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Successfully Uploaded....");
        }
    }

    public void show()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from file_upload ",con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}