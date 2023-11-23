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

public partial class ssignup : System.Web.UI.Page
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
            if(txtsuser .Text ==""||txtsans .Text ==""||txtspwd .Text ==""||txtcpwd .Text ==""||txtmob .Text ==""||txtemail .Text==""||TextBox1 .Text=="")
            {
                MessageBox .Show ("Enter All Fields");
            }
            else
            {
                c.cmd.CommandText = "insert into ssignup values(@studentid,@username,@Security_Question,@secureans,@password,@mobileno,@email)";
                c.cmd.Parameters.Add("@studentid", SqlDbType.NVarChar).Value = TextBox1 .Text;
                c.cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value =txtsuser .Text ;
                c.cmd.Parameters.Add("@Security_Question", SqlDbType.NVarChar).Value =ddls .SelectedItem .Text ;
                c.cmd.Parameters.Add("@secureans", SqlDbType.NVarChar).Value = txtsans .Text ;
                c.cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = txtspwd .Text ;
                c.cmd.Parameters.Add("@mobileno", SqlDbType.Decimal).Value = Convert.ToDecimal(txtmob .Text );
                c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value=txtemail .Text ;
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("Registered successfully");
                txtsuser .Text ="";
                txtsans .Text ="";
                txtspwd .Text ="";
                txtcpwd .Text ="";
                txtmob .Text ="";
                txtemail .Text="";
                TextBox1.Text = "";
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
    protected void  btnlogin_Click(object sender, EventArgs e)
{
        Response .Redirect ("studentlogin.aspx");
}
  
}
