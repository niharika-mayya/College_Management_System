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
using System.Windows.Forms;

public partial class psignup : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }   
    protected void btnok_Click1(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (txtpuser.Text == "" || txtpans.Text == "" || txtppwd.Text == "" || txtpcpwd.Text == "" || txtpmob.Text == "" || txtpemail.Text == ""||TextBox1 .Text=="")
            {
                MessageBox.Show("Enter All Fields");
            }
            else
            {
                c.cmd.CommandText = "insert into psignup values(@username,@chrollno,@secureqn,@secureans,@password,@mobileno,@email)";
                c.cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = txtpuser.Text;
                c.cmd.Parameters.Add("@chrollno", SqlDbType.NVarChar).Value = TextBox1 .Text;
                c.cmd.Parameters.Add("secureqn", SqlDbType.NVarChar).Value = ddlp.SelectedItem.Text;
                c.cmd.Parameters.Add("secureans", SqlDbType.NVarChar).Value = txtpans.Text;
                c.cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = txtppwd.Text;
                c.cmd.Parameters.Add("@mobileno", SqlDbType.Decimal).Value = Convert.ToDecimal(txtpmob.Text);
                c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtpemail.Text;
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("Registered successfully");
                txtpuser.Text ="";
                txtpans.Text = "";
                txtppwd.Text = "";
                txtpcpwd.Text = "";
                txtpmob.Text = "";
                txtpemail.Text = "";
                TextBox1.Text ="";
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
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("parentlogin.aspx");
    }
}

