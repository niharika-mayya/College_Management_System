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

public partial class phelp : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                c = new connect();
                String eo = "0";
                int count;
                c.cmd.CommandText = "select count(slno)from help";
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



        c = new connect();
        DateTime dt1 = DateTime.Now;
        if (txtpmsg .Text== "")
        {
            MessageBox.Show("You cannot send blank message!");
        }
        else
        {
            c.cmd.CommandText = "insert into help values(@slno,@category,@date_and_time,@message)";
            c.cmd.Parameters.Add("@slno", SqlDbType.SmallInt).Value = Label1.Text;
            c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
            c.cmd.Parameters.Add("@date_and_time", SqlDbType.DateTime).Value = dt1;
            c.cmd.Parameters.Add("@message", SqlDbType.NVarChar).Value = txtpmsg .Text;
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("Sent");
        }

    }
}


