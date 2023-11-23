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

public partial class facultylogin : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            SqlCommand cmd = new SqlCommand("select  facultyid,password from fsignup where facultyid='" + txtluser.Text + "'and password='" + txtlpswd .Text + "'", c.cnn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (txtluser.Text == "" || txtlpswd.Text == "")
            {
                MessageBox.Show("Enter username and password");
            }
            else if (dr.Read())
            {
                MessageBox.Show("Login successful!!");
                Session["user"] = txtluser.Text;
                Response.Redirect("faculty.aspx");
            }
            else
            {
                MessageBox.Show("Invalid username or password");
            }
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            c.cnn.Close();
        }  
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("start.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("fsignup.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ffp.aspx");
    }
   
}
