using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class client_department : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\server.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void IT()
    {
        SqlDataAdapter dit = new SqlDataAdapter("select * from faculty_list where branch='IT'", con);
        DataSet ds = new DataSet();
        dit.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
    public void CE()
    {
        SqlDataAdapter dce = new SqlDataAdapter("select * from faculty_list where branch='CE'", con);
        DataSet ds = new DataSet();
        dce.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    public void ME()
    {
        SqlDataAdapter dme = new SqlDataAdapter("select * from faculty_list where branch='ME'", con);
        DataSet ds = new DataSet();
        dme.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    public void EE()
    {
        SqlDataAdapter dee = new SqlDataAdapter("select * from faculty_list where branch='EE'", con);
        DataSet ds = new DataSet();
        dee.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    public void EC()
    {
        SqlDataAdapter dec = new SqlDataAdapter("select * from faculty_list where branch='EC'", con);
        DataSet ds = new DataSet();
        dec.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }

    public void GENRAL()
    {
        SqlDataAdapter dge = new SqlDataAdapter("select * from faculty_list where branch='GENERAL'", con);
        DataSet ds = new DataSet();
        dge.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Label1.Text = "Faculty of Information Technology Department";
        
        IT();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Label1.Text = "Faculty of Computer Engineering Department";
        CE();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Label1.Text = "Faculty of Mechanical Engineering Department";
        ME();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Label1.Text = "Faculty of Electrical Engineering Department";
        EE();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Label1.Text = "Faculty of Electronics & Communication Department";
        EC();
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Label1.Text = "Faculty of General Department";
        GENRAL();
    }
}