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

public partial class client_client : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\server.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsPostBack == false)
        //{
        //    string str = "select * from NewsEvents order By NewsTitle";
        //    SqlDataAdapter da = new SqlDataAdapter(str,con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);

        //    lstnewsevents.DataSource = ds.Tables[0];
        //    lstnewsevents.DataBind();


            
           
        //}
        //notice();


    }
    //public void notice()
    //{
    //    string str = "select * from newsdisplay ";
    //    SqlDataAdapter da = new SqlDataAdapter(str,con);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    DataList1.DataSource = ds;
    //    DataList1.DataBind();
    //}
}
