using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;


public partial class parentlogin : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("psignup.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("pfp.aspx");
    }
   
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        c = new connect();
        SqlCommand cmd = new SqlCommand("select username,password from psignup where username='" + txtluser.Text + "'and password='" + txtlpswd.Text + "'", c.cnn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (txtluser.Text == "" || txtlpswd.Text == ""||TextBox1 .Text =="")
        {
            MessageBox.Show("Enter all fields");
        }
        else if (dr.Read())
        {
            MessageBox.Show("Login successful!!");
            Session["sid"] = TextBox1.Text;
            Response.Redirect("parent.aspx");
        }
        else
        {
            MessageBox.Show("Invalid username or password");
        }
        
    }
}
