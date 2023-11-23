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

public partial class studentlogin : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        c = new connect();
        SqlCommand cmd = new SqlCommand("select studentid,password from ssignup where studentid='" +txtluser .Text+ "'and password='" +txtlpswd .Text + "'", c.cnn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (txtluser .Text == "" || txtlpswd .Text == "")
        {
            MessageBox.Show("Enter Studentid and password");
        }
        else if (dr.Read())
        {
            MessageBox.Show("Login successful!!");
            Session["sid"] = txtluser.Text;
            Response.Redirect("student.aspx");
        }
        else
        {
            MessageBox.Show("Invalid username or password");
        }
        
    }
   
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ssignup.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("sfp.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.aspx");
    }
}
