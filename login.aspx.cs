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

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\server.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select login_id, login_pwd from login where login_id='" + TextBox1.Text.ToString() + "' and login_pwd='" + TextBox2.Text.ToString() + "'  ", con);
        try
        {
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {


                Session["login_id"] = TextBox1.Text.ToString();

                    Response.Redirect("~/admin/admin_home.aspx");
               



            }
            else
            {
                MessageBox.Show("wrong enter your u_name & pass....");
            }

            con.Close();
        }
        catch (Exception ex)
        {
            Label1.Text = ("error......" + ex.Message);

        }

    }
}