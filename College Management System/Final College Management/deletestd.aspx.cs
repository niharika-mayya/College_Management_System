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

public partial class deletestd : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from admission where rollno=" + Convert.ToInt16(txtrn.Text);
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "adm");
            if (ds.Tables["adm"].Rows.Count > 0)
            {
                c.cmd.CommandText = "delete from admission where rollno=" + Convert.ToInt16(txtrn.Text);
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("Record deleted");
            }
            else
            {
                Response.Write("No records");
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
    protected void btncan_Click(object sender, EventArgs e)
    {
        Response.Redirect("admisn.aspx");
    }
}
