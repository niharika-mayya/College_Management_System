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
public partial class afp : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        if(txtuname .Text ==""||txtans .Text == ""||txtnp .Text == ""||txtcp .Text =="")
         {
             MessageBox.Show("Enter All fields");
         }
        else
        {
            string str1;
            try
            {
                c = new connect();
                c.cmd.CommandText = "select secureans from asignup where username='"+txtuname.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "ans");
                str1 = Convert.ToString(ds.Tables["ans"].Rows[0][0]);
                if (str1 == txtans.Text)
                {
                    if (ds.Tables["ans"].Rows.Count > 0)
                    {
                        c.cmd.CommandText = "update asignup set password='" +txtcp .Text + "'where username='" +txtuname .Text + "'";
                        c.cmd.ExecuteNonQuery();
                        MessageBox.Show("Password changed");
                        Response.Redirect("adminlogin.aspx");
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

    protected void btnclick_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select Security_Question from asignup where username ='"+txtuname .Text +"'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "qn");
            if (ds.Tables["qn"].Rows.Count > 0)                            
            {
               GridView1 .DataSource =ds.Tables ["qn"];
               GridView1 .DataBind ();
               
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
    
}


