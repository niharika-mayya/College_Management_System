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

public partial class adminlogin : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void Btnlogin_Click(object sender, EventArgs e)
    {
        c = new connect();
        SqlCommand cmd = new SqlCommand("select username,password from asignup where username='" + txtuser .Text+ "'and password='" + txtpaswd .Text  + "'", c.cnn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (txtuser .Text  == "" || txtpaswd .Text  == "")
        {
            MessageBox.Show("Enter username and password");
        }
        else if (dr.Read())
        {
            MessageBox.Show("Login successful!!");
            Response.Redirect("admin.aspx");
        }
        else
        {
            MessageBox.Show("Invalid username or password");
        }
        
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("afp.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("asignup.aspx");
    }

   
}
