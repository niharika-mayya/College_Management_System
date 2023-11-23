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

public partial class salary : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdate.Text = DateTime.Now.ToShortDateString();
        btnadd.Enabled = false;
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        c = new connect();
        c.cmd.CommandText="insert into salary values(@Faculty_Id,@Faculty_Name,@Mobile_no,@date,@Working_day,@Leave_day,@Salary,@Total_salary)";
        c.cmd.Parameters.Add("@Faculty_Id", SqlDbType.SmallInt).Value = Convert.ToInt16(txtfid.Text);
        c.cmd.Parameters.Add("@Faculty_Name", SqlDbType.NVarChar).Value = txtname.Text;
        c.cmd.Parameters.Add("@Mobile_no", SqlDbType.Decimal).Value = Convert.ToDecimal(txtphone.Text);
        c.cmd.Parameters.Add("@date", SqlDbType.NVarChar).Value = txtdate.Text;
        c.cmd.Parameters.Add("@Working_day", SqlDbType.SmallInt).Value = txtwrk.Text;
        c.cmd.Parameters.Add("@Leave_day", SqlDbType.SmallInt).Value = txtleave.Text;
        c.cmd.Parameters.Add("@Salary", SqlDbType.BigInt).Value = txtsalperday.Text;
        c.cmd.Parameters.Add("@Total_salary", SqlDbType.BigInt).Value = txttot.Text;
        c.cmd.ExecuteNonQuery();
        MessageBox.Show("Record inserted");
        txtfid.Text ="";
        txtname.Text = "";
        txtphone.Text ="";
        txtwrk.Text ="";
        txtleave.Text ="";
        txtsalperday.Text = "";
        txttot.Text ="";      
    }
    protected void btncalc_Click(object sender, EventArgs e)
    {
        int total;
        int workingday, sal;
        int leave;
        workingday = Convert.ToInt16(txtwrk.Text);
        leave = Convert.ToInt16(txtleave.Text);
        sal = Convert.ToInt16(txtsalperday.Text);
        total = (workingday - leave)*sal;
        txttot.Text = Convert.ToString(total);
        btnadd.Enabled = true;
       
    }

    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
    protected void btndisplay_Click(object sender, EventArgs e)
    {
        try
        {
         c = new connect();
            c.cmd .CommandText ="select * from salary";
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
