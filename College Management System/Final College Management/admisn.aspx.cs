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

public partial class admisn : System.Web.UI.Page
{
    connect c;
    String gender = "";
    String language = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(rmale.Checked==true)
        {
            gender="male";
        }
        else if (rfemale.Checked == true)
        {
            gender = "female";
        }
        if (RadioButton1.Checked == true)
        {
            language = "English";
        }
        else if (RadioButton2.Checked== true)
        {
            language = "Kannada";
        }
        else if (RadioButton3.Checked == true)
        {
            language = "Sanskrit";
        }
        else if(RadioButton4.Checked==true)
        {
            language="Hindi";
        }
        

    }
    
    
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        
            c = new connect();
            if (txtrollno.Text == "" || txtname.Text == "" || txtaddr.Text == "" || txtemail.Text == "" || txtm.Text == "" || txtmobl.Text == "" || txtf.Text == "" || mphone.Text == "" || fphone.Text == "" || txtsslc.Text == "" || txtpuc.Text == "" || txtfees.Text == "" || txtDate.Text == "" || TextBox1.Text == "")
            {
                MessageBox.Show("Enter all fields");
            }
            else
            {
                try
                {
                    c.cmd.CommandText = "insert into admission values(@Roll_no,@Name,@DOB,@Address,@Gender,@Mobile,@Email,@Stream,@Specification,@Semester,@Language,@Mother_name,@Mother_phone,@Father_name,@Father_phone,@SSLC,@PUC,@Total_fees,@Batch)";
                    c.cmd.Parameters.Add("@Roll_no", SqlDbType.SmallInt).Value = txtrollno.Text;
                    c.cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = txtname.Text;
                    c.cmd.Parameters.Add("@DOB", SqlDbType.NVarChar).Value = txtDate.Text;
                    c.cmd.Parameters.Add("@Address", SqlDbType.NVarChar).Value = txtaddr.Text;
                    c.cmd.Parameters.Add("@Gender", SqlDbType.NVarChar).Value = gender;
                    c.cmd.Parameters.Add("@Mobile", SqlDbType.Decimal).Value = Convert.ToDecimal(txtmobl.Text);
                    c.cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtspeci.Text;
                    c.cmd.Parameters.Add("@Stream", SqlDbType.NVarChar).Value = ddlstream.SelectedItem.Text;
                    c.cmd.Parameters.Add("@Specification", SqlDbType.NVarChar).Value = txtemail.Text;
                    c.cmd.Parameters.Add("@Semester", SqlDbType.NVarChar).Value = ddlsem.SelectedItem.Text;
                    c.cmd.Parameters.Add("@Language", SqlDbType.NVarChar).Value = language;
                    c.cmd.Parameters.Add("@Mother_name", SqlDbType.NVarChar).Value = txtm.Text;
                    c.cmd.Parameters.Add("@Mother_phone", SqlDbType.Decimal).Value = Convert.ToDecimal(mphone.Text);
                    c.cmd.Parameters.Add("@Father_name", SqlDbType.NVarChar).Value = txtf.Text;
                    c.cmd.Parameters.Add("@Father_phone", SqlDbType.Decimal).Value = Convert.ToDecimal(fphone.Text);
                    c.cmd.Parameters.Add("@SSLC", SqlDbType.Decimal).Value = Convert.ToDecimal(txtsslc.Text);
                    c.cmd.Parameters.Add("@PUC", SqlDbType.Decimal).Value = Convert.ToDecimal(txtpuc.Text);
                    c.cmd.Parameters.Add("@Total_fees", SqlDbType.Decimal).Value = Convert.ToDecimal(txtfees.Text);
                    c.cmd.Parameters.Add("@Batch", SqlDbType.NVarChar).Value = TextBox1.Text;
                    c.cmd.ExecuteNonQuery();
                    MessageBox.Show("Submitted Successfully!!");
                    txtname.Text = "";
                    txtrollno.Text = "";
                    txtsslc.Text = "";
                    txtpuc.Text = "";
                    txtmobl.Text = "";
                    mphone.Text = "";
                    fphone.Text = "";
                    txtm.Text = "";
                    txtf.Text = "";
                    txtfees.Text = "";
                    txtaddr.Text = "";
                    txtDate.Text = "";
                    txtemail.Text = "";
                    txtspeci.Text = "";
                    TextBox1.Text = "";
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                finally
                {
                    c.cnn.Close();
                }
            }

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("asearchstd.aspx");
    }
    protected void btndisplay_Click2(object sender, EventArgs e)
    {
        Response.Redirect("adisplayall.aspx");
    }
    protected void btnreset_Click1(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtrollno.Text = "";
        txtsslc.Text = "";
        txtpuc.Text = "";
        txtmobl.Text = "";
        mphone.Text = "";
        fphone.Text = "";
        txtm.Text = "";
        txtf.Text = "";
        txtfees.Text = "";
        txtaddr.Text = "";
        txtDate.Text = "";
        txtemail.Text = "";
        txtspeci.Text = "";
        TextBox1.Text = "";

    }
    protected void btnback_Click1(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }

  
}



 