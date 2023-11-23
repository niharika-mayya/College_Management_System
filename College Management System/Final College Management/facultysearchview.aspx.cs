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

public partial class facultyinfo : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = (String)Session["user"];
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (TextBox1.Text == "")
            {
                MessageBox.Show("Enter Faculty Id");
            }
            else
            {
                c.cmd.CommandText = "select * from facultyrecord where Faculty_Id='" + TextBox1.Text + "'";
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
                    MessageBox.Show("No records found");
                }
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
        Response.Redirect("faculty.aspx");
    }
}
