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
using System.Data.SqlClient;
public partial class sfp : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        if(txtsuser .Text ==""||txtsans .Text ==""||txtsnpwd .Text ==""||txtscpwd .Text ==""||TextBox1 .Text=="")
         {
             MessageBox .Show ("Enter all Fields");
         }
        else
        {
            string str1;
            try
            {
                c = new connect();
                c.cmd.CommandText = "select secureans from ssignup where studentid='" + TextBox1 .Text+ "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "ans");
                str1 = Convert.ToString(ds.Tables["ans"].Rows[0][0]);
                if (str1 == txtsans.Text)
                {
                    if (ds.Tables["ans"].Rows.Count > 0)
                    {
                        c.cmd.CommandText = "update ssignup set password='" + txtscpwd.Text + "'where Rollno='" + TextBox1 .Text+ "'";
                        c.cmd.ExecuteNonQuery();
                        MessageBox.Show("Password changed");
                        Response.Redirect("studentlogin.aspx");
                        txtsuser.Text = "";
                        txtsans .Text ="";
                        txtsnpwd .Text ="";
                        txtscpwd .Text ="";
                        TextBox1.Text = "";
                    }
                    else
                    {
                        MessageBox.Show("Error");
                    }
                }
                else 
                {
                    MessageBox .Show ("Wrong Answer");
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
    }
    protected void btnsclick_Click(object sender, EventArgs e)
    {
          try
        {
            c = new connect();
            c.cmd.CommandText = "select Security_Question from ssignup where studentid='"+TextBox1 .Text +"'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "qn");
            if (ds.Tables["qn"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["qn"];
                GridView1.DataBind();
            }
            else
            {
                Response.Write("No records found");
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
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentlogin.aspx");
    }
}


