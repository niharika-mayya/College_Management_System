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

public partial class notice : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                c = new connect();
                String eo = "0";
                int count;
                c.cmd.CommandText = "select count(slno) from notice";
                count = Convert.ToInt32(c.cmd.ExecuteScalar()) + 1;
                Label1.Text = eo + count.ToString();

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
    protected void btnsend_Click(object sender, EventArgs e)
    {
        DateTime dt1 = DateTime.Now;
        c = new connect();
        if (txtmsg.Text == "")
        {
            MessageBox.Show("You cannot send blank message");
        }
        else
        {
            c.cmd.CommandText = "insert into notice values(@slno,@date_and_time,@message)";
            c.cmd.Parameters.Add("@slno", SqlDbType.SmallInt).Value =Label1 .Text ;
            c.cmd.Parameters.Add("@date_and_time", SqlDbType.DateTime).Value =dt1 ;
            c.cmd.Parameters.Add("@message", SqlDbType.NVarChar).Value = txtmsg .Text ;
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("Message Sent");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from notice";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dis");
            if (ds.Tables["dis"].Rows.Count > 0)
            {
               GridView1.DataSource =ds.Tables ["dis"];
                GridView1 .DataBind ();
            }
            else
            {
                MessageBox.Show("No messages");
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
        Response.Redirect("admin.aspx");
    }
}
    


    

