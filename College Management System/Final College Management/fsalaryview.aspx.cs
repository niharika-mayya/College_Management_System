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

public partial class fsalaryview : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtfid.Text = (String)Session["user"];
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from salary where Faculty_Id='" + txtfid .Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dis");
            if (ds.Tables["dis"].Rows.Count > 0)
            {
               GridView1.DataSource = ds.Tables["dis"];
               GridView1.DataBind();
            }
            else
            {
               MessageBox .Show("No records found");
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
