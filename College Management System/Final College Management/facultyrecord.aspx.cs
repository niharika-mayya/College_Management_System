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

public partial class facultyrecord : System.Web.UI.Page
{
    connect c;
    String gender = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            gender = "Male";
        }
        else if (RadioButton2.Checked == true)
        {
            gender = "Female";
        }
        if (!IsPostBack)
        {
            try
            {
                c = new connect();
                String eo = "00";
                int count;
                c.cmd.CommandText = "select count(Faculty_Id) from facultyrecord";
                count = Convert.ToInt32 (c.cmd.ExecuteScalar()) + 1;
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
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("facultysearch.aspx");
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (txtfname.Text == "" || txtDate.Text == "" || txtmob.Text == "" || txtemail.Text == "" || txtaddress.Text == "" || txtdoj.Text == "" || txtqualification.Text == "" || txtexperience.Text == ""||txtdept .Text =="")
        {
            MessageBox .Show ("Enter All Fields");
        }
        else
        {
            c.cmd.CommandText = "insert into facultyrecord values(@Faculty_Id,@Full_Name,@Date_Of_Birth,@Gender,@Mobile_no,@Email,@Address,@Date_Of_Joining,@Qualification,@Experience,@Department,@Stream)";
            c.cmd.Parameters.Add("@Faculty_Id", SqlDbType.SmallInt).Value=Label1 .Text ;
            c.cmd.Parameters.Add("@Full_Name", SqlDbType.NVarChar).Value = txtfname.Text;
            c.cmd.Parameters.Add("@Date_Of_Birth", SqlDbType.NVarChar).Value = txtDate.Text;
            c.cmd.Parameters.Add("@Gender", SqlDbType.NVarChar).Value = gender;
            c.cmd.Parameters.Add("@Mobile_no", SqlDbType.Decimal).Value = Convert.ToDecimal(txtmob.Text);
            c.cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtemail.Text;
            c.cmd.Parameters.Add("@Address", SqlDbType.NVarChar).Value = txtaddress.Text;
            c.cmd.Parameters.Add("@Date_Of_Joining", SqlDbType.NVarChar).Value = txtdoj.Text;
            c.cmd.Parameters.Add("@Qualification", SqlDbType.NVarChar).Value = txtqualification.Text;
            c.cmd.Parameters.Add("@Experience", SqlDbType.SmallInt).Value = Convert.ToInt16(txtexperience.Text);
            c.cmd.Parameters.Add("@Department", SqlDbType.NVarChar).Value = txtdept.Text;
            c.cmd.Parameters.Add("@Stream", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("Submitted Successfully");
            txtfname.Text = "";
            txtDate.Text = "";
            txtmob.Text = "";
            txtemail.Text = "";
            txtaddress.Text = "";
            txtdoj.Text = "";
            txtqualification.Text = "";
            txtexperience.Text = "";
            txtdept.Text = "";
        }
    }


    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtfname .Text ="";
        txtDate.Text ="";
        txtmob .Text ="";
        txtemail .Text ="";
        txtaddress .Text ="";
        txtdoj .Text ="";
        txtqualification .Text ="";
        txtexperience .Text="";
        txtdept .Text ="";
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}

