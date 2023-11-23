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


public partial class signup : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnok_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if(txtausr .Text ==""||txtaans .Text ==""||txtapwd .Text ==""||txtacpwd .Text ==""||txtmob .Text ==""||txtaemail .Text =="")
            {
                MessageBox .Show ("Enter All fields");
            }
            else 
            {
                c.cmd.CommandText = "insert into asignup values(@username,@secureqn,@secureans,@password,@mobileno,@email)";
                c.cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = txtausr.Text;
                c.cmd.Parameters.Add("secureqn", SqlDbType.NVarChar).Value = ddla.SelectedItem.Text;
                c.cmd.Parameters.Add("secureans", SqlDbType.NVarChar).Value = txtaans.Text;
                c.cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = txtapwd.Text;
                c.cmd.Parameters.Add("@mobileno", SqlDbType.Decimal).Value = Convert.ToDecimal(txtmob.Text);
                c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtaemail.Text;
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("Registered successfully");
                txtausr.Text = "";
                txtaans.Text = "";
                txtmob.Text = "";
                txtaemail.Text = "";

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
        Response.Redirect("adminlogin.aspx");
    }
}
