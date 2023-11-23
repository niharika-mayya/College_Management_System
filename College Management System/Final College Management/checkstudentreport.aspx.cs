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

public partial class checkstudentreport : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from stdreport where course='"+TextBox1 .Text +"'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dis");
            Session["course"] = TextBox1.Text;
            if (ds.Tables["dis"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["dis"];
                GridView1.DataBind();

            }
            else
            {
                MessageBox.Show("No Records Found");
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
        Response.Redirect("faculty.aspx");
    }
}
    
