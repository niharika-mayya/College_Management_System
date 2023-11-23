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

public partial class fsignup : System.Web.UI.Page
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
            c.cmd.CommandText = "insert into fsignup values(@facultyid,@name,@Sequrity_Question, @secureans, @password,@mobileno, @email)";
            c.cmd.Parameters.Add("@facultyid", SqlDbType.NVarChar).Value = txtfuser.Text;
            c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtname.Text;
            c.cmd.Parameters.Add("@Sequrity_Question", SqlDbType.NVarChar).Value = ddlsecure.SelectedItem.Text;
            c.cmd.Parameters.Add("@secureans", SqlDbType.NVarChar).Value = txtfans.Text;
            c.cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = txtfpwd.Text;
            c.cmd.Parameters.Add("@mobileno", SqlDbType.Decimal).Value = Convert.ToDecimal(txtmob.Text);
            c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtemail.Text;
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("Registered Successfully");
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
        Response.Redirect("facultylogin.aspx");
    }
}
