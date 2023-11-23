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

public partial class stdattendance_ : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdate.Text = Convert.ToString(DateTime.Now);
        btnsave.Enabled = false;
        btnclear.Enabled = false;
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into stdattendance values(@Roll_no,@Full_Name,@Course,@Specification,@Date,@Total_class_held,@Total_class_attended,@Percentage)";
            c.cmd.Parameters.Add("@Roll_no", SqlDbType.SmallInt).Value = txtroll.Text;
            c.cmd.Parameters.Add("@Full_Name", SqlDbType.NVarChar).Value = txtname.Text;
            c.cmd.Parameters.Add("@Course", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
            c.cmd.Parameters.Add("@Specification", SqlDbType.NVarChar).Value = txtspeci.Text;
            c.cmd.Parameters.Add("@Date", SqlDbType.DateTime).Value = txtdate.Text;
            c.cmd.Parameters.Add("@Total_class_held", SqlDbType.SmallInt).Value = txtch.Text;
            c.cmd.Parameters.Add("@Total_class_attended", SqlDbType.SmallInt).Value = txtcatt.Text;
            c.cmd.Parameters.Add("@Percentage", SqlDbType.Decimal).Value = Convert.ToDouble(txtpercent.Text);
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("Record submitted");
            txtname.Text = "";
            txtroll.Text = "";
            txtch.Text = "";
            txtdate.Text = "";
            txtcatt.Text = "";
            txtpercent.Text = "";
            txtspeci.Text = "";
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
    protected void btncalc_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            int totalheld = Convert.ToInt16(txtch.Text);
            int totalattended = Convert.ToInt16(txtcatt.Text);
            if (totalattended > totalheld)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Attended hours cannot be more than total class')</script>");
            }
            double per=0.0;
            per = (Convert.ToDouble(this.txtcatt.Text) / Convert.ToDouble(this.txtch.Text)) * 100;
            txtpercent.Text = per.ToString();
            btnsave.Enabled = true;
            btnclear.Enabled = true;
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
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtroll.Text = "";
        txtch.Text = "";
        txtdate.Text = "";
        txtcatt.Text = "";
        txtspeci.Text = "";
        txtpercent.Text = "";
    }
    protected void btndisplay_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from stdattendance";
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
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("stdattndsearch.aspx");
    }
}
