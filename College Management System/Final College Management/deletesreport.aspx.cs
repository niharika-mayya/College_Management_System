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


public partial class deletesreport : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnscancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentreport.aspx");
    }
    protected void btnsdelete_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from stdreport where rollno=" + Convert.ToInt16(txtdelrn.Text);
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "rep");
            if (ds.Tables["rep"].Rows.Count > 0)
            {
                c.cmd.CommandText = "delete from stdreport where rollno=" + Convert.ToInt16(txtdelrn.Text);
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("Record deleted");
            }
            else
            {
                Response.Write("No records Found");
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
