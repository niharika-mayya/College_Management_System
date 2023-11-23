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
public partial class studentreport : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        btnsubmit.Enabled = false;
        ddlcorse.SelectedItem.Text = (String)Session["course"];
        TextBox2 .Text = DateTime.Now.ToShortDateString();

    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("faculty.aspx");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into stdreport values(@Full_Name,@Rollno,@Course,@Specification,@Semester,@exam,@date,@Subject1,@Mark1,@subject2,@mark2,@Subject3,@Mark3,@Subject4,@Mark4,@subject5,@Mark5,@Subject6,@Mark6,@Total_Marks,@Percentage,@Grade,@Remarks)";
            c.cmd.Parameters.Add("@Full_Name", SqlDbType.NVarChar).Value = txtsname.Text;
            c.cmd.Parameters.Add("@Rollno", SqlDbType.SmallInt).Value = Convert.ToInt16(txtsrollno.Text);
            c.cmd.Parameters.Add("@Course", SqlDbType.NVarChar).Value = ddlcorse.SelectedItem.Text;
            c.cmd.Parameters.Add("@Specification", SqlDbType.NVarChar).Value = txtspeci.Text;
            c.cmd.Parameters.Add("@Semester", SqlDbType.SmallInt).Value = Convert.ToInt16(txtsem.Text);
            c.cmd.Parameters.Add("@exam", SqlDbType.NVarChar).Value = TextBox1.Text;
            c.cmd.Parameters.Add("@date", SqlDbType.NVarChar).Value = TextBox2.Text;
            c.cmd.Parameters.Add("@Subject1", SqlDbType.NVarChar).Value = txtsub1.Text;
            c.cmd.Parameters.Add("@Mark1", SqlDbType.SmallInt).Value = Convert.ToInt16(txtm1.Text);
            c.cmd.Parameters.Add("@Subject2", SqlDbType.NVarChar).Value = txtsub2.Text;
            c.cmd.Parameters.Add("@Mark2", SqlDbType.SmallInt).Value = Convert.ToInt16(txtm2.Text);            
            c.cmd.Parameters.Add("@Subject3", SqlDbType.NVarChar).Value = txtsub3.Text;
            c.cmd.Parameters.Add("@Mark3", SqlDbType.SmallInt).Value = Convert.ToInt16(txtm3.Text);           
            c.cmd.Parameters.Add("@Subject4", SqlDbType.NVarChar).Value = txtsub4.Text;
            c.cmd.Parameters.Add("@Mark4", SqlDbType.SmallInt).Value = Convert.ToInt16(txtm4.Text);           
            c.cmd.Parameters.Add("@Subject5", SqlDbType.NVarChar).Value = txtsub5.Text;
            c.cmd.Parameters.Add("@Mark5", SqlDbType.SmallInt).Value = Convert.ToInt16(txtm5.Text);       
            c.cmd.Parameters.Add("@Subject6", SqlDbType.NVarChar).Value = txtsub6.Text;
            c.cmd.Parameters.Add("@mark6", SqlDbType.SmallInt).Value = Convert.ToInt16(txtm6.Text); 
            c.cmd.Parameters.Add("@Total_Marks", SqlDbType.SmallInt).Value = Convert.ToInt16(txttotmarks.Text);
            c.cmd.Parameters.Add("@Percentage", SqlDbType.Decimal).Value = Convert.ToDecimal(txtavg.Text);
            c.cmd.Parameters.Add("@Grade", SqlDbType.NVarChar).Value = txtgrade.Text;
            c.cmd.Parameters.Add("@Remarks", SqlDbType.NVarChar).Value = txtremarks.Text;
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("Submitted successfully");
            txtsname.Text = "";
            txtsrollno.Text = "";
            txtsem.Text = "";
            txtspeci.Text = "";
            txtsub1.Text = "";
            txtm1.Text = "";
            txtsub2.Text = "";
            txtm2.Text = "";
            txtsub3.Text = "";
            txtm3.Text = "";
            txtsub4.Text = "";
            txtm4.Text = "";
            txtsub5.Text = "";
            txtm5.Text = "";
            txtsub6.Text = "";
            txtm6.Text = "";
            txttotmarks.Text = "";
            txtavg.Text = "";
            txtgrade.Text = "";
            txtremarks.Text = "";

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
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtsname.Text = "";
        txtsrollno.Text = "";
        txtsem.Text = "";
        txtspeci.Text = "";
        txtsub1.Text = "";
        txtm1.Text = "";
        txtsub2.Text = "";
        txtm2.Text = "";
        txtsub3.Text = "";
        txtm3.Text = "";
        txtsub4.Text = "";
        txtm4.Text = "";
        txtsub5.Text = "";
        txtm5.Text = "";
        txtsub6.Text = "";
        txtm6.Text = "";
        txttotmarks.Text = "";
        txtavg.Text = "";
        txtgrade.Text = "";
        txtremarks.Text = "";
    }

    protected void btncalc_Click(object sender, EventArgs e)
    {
        if (txtsub1.Text =="" || txtm1.Text == "" || txtsub2.Text == "" || txtm2.Text == "" || txtsub3.Text == "" || txtm3.Text == "" || txtsub4.Text == "" || txtm4.Text == "" || txtsub5.Text =="" || txtm5.Text == "" || txtsub6.Text == "" || txtm6.Text == "")
        {
            MessageBox.Show("Enter all fields");
        } 
        int m1, m2, m3, m4, m5, m6, total;
        double avg;
        String grade;
        m1 = Convert.ToInt16(txtm1.Text);
        m2 = Convert.ToInt16(txtm2.Text);
        m3 = Convert.ToInt16(txtm3.Text);
        m4 = Convert.ToInt16(txtm4.Text);
        m5 = Convert.ToInt16(txtm5.Text);
        m6 = Convert.ToInt16(txtm6.Text);
        total = m1 + m2 + m3 + m4 + m5 + m6;
        avg = total / 6;
        if (m1 < 35 || m2 < 35 || m3 < 35 || m4 < 35 || m5 < 35 || m6 < 35)
        {
            grade = "Fail";
        }
        else if (avg >= 75)
            grade = "Distinction";
        else if (avg >= 60)
            grade = "First class";
        else if (avg >= 55)
            grade = "Second Class";
        else
            grade = "Pass Class";
        txttotmarks.Text=Convert.ToString (total);
        txtavg.Text = Convert.ToString(avg);
        txtgrade.Text = grade;
        btnsubmit.Enabled = true;

    }

    protected void btndisplay_Click(object sender, EventArgs e)
    {
        Response.Redirect("fstddisplay.aspx");
    }
   
}
