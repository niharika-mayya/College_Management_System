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
using System.Data .SqlClient ;
using System.Windows .Forms ;

public partial class stdattndsearch : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnview_Click(object sender, EventArgs e)
    {
         try
        {
            c = new connect();
            c.cmd.CommandText = "select * from stdattendance where Roll_no="+txtsrollno .Text ;
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "att");
            if (ds.Tables["att"].Rows.Count > 0)
            {
                GridView2.DataSource = ds.Tables["att"];
                GridView2.DataBind();
            }
            else
            {
               MessageBox .Show("No Records Found");
                   
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

