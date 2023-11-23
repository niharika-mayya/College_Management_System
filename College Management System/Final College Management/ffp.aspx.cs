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

public partial class ffp : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
        
    protected void btnok_Click(object sender, EventArgs e)
    {
        if(txtfuname .Text ==""|| txtfans .Text ==""||txtfnpwd .Text ==""||txtfcpwd .Text ==""||txtfid .Text =="")
         {
             MessageBox .Show ("Enter all Fields");
         }
        else
        {
            string str1;
            try
            {
                c = new connect();
                c.cmd.CommandText = "select secureans from fsignup where facultyid='"+txtfid .Text+ "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "ans");
                str1 = Convert.ToString(ds.Tables["ans"].Rows[0][0]);
                if (str1 ==txtfans .Text)
                {
                    if (ds.Tables["ans"].Rows.Count > 0)
                    {
                        c.cmd.CommandText = "update fsignup set password='" +txtfcpwd .Text + "'where facultyid='" +txtfid .Text + "'";
                        c.cmd.ExecuteNonQuery();
                        MessageBox.Show("Password changed");
                        Response.Redirect("facultylogin.aspx");
                    }
                    else
                    {
                        MessageBox.Show("Error");
                    }
                }
                else
                {
                    MessageBox.Show("Wrong answer");
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
 
    protected void btnfclick_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select Sequrity_Question from fsignup where facultyid ='"+txtfid .Text +"'";
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
    protected void btnback_Click1(object sender, EventArgs e)
    {
        Response.Redirect("facultylogin.aspx");
    }
}




