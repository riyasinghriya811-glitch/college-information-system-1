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

public partial class client_faculty : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\server.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Default_show();
    }
   
    
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Default_show();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        second_data();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        third_data();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        fourth_data();
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        fifth_data();
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        sixth_data();
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        seventh_data();
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        eight_data();
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        nineth_data();
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        tenth_data();
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        eleven_data();
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        twelve_data();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        thirteen_data();
    }
    protected void LinkButton15_Click(object sender, EventArgs e)
    {
        fourteen_data();
    }
    public void Default_show()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (2,3,4,5) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }

    public void second_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (6,7,8,9,10) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void third_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (11,12,13,14,15) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void fourth_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (18,19,20,21,22) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void fifth_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (23,24,25,26,27) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void sixth_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (28,29,30,31,32) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }

    public void seventh_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (33,34,35,36) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void eight_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (37,38,39,40) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void nineth_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (41,42,43,44,45) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void tenth_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (46,47,48,49,50) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void eleven_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (51,52,53,54) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void twelve_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (55,56,57,58) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void thirteen_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (59,60,61,62) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void fourteen_data()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from feculty_info where id IN (63,64,65) ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }










   
}