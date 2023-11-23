<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admisn.aspx.cs" Inherits="admisn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <style type="text/css">
ul {
    list-style-type:none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:purple;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px 18px;
    text-decoration: none;
    font-size:28px;
}

li a:hover {
    background-color: yellow;
    color:black;
}
</style>

    

</head>
<body background="pics/jess-bailey-FHCVK6Vyvwc-unsplash.jpg">
    <form id="form1" runat="server">
    <div style="color: white">
     <div>

        <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="facultyrecord.aspx">Faculty Record</a></li>
  <li><a href="afacultydisplay.aspx" >View Faculty Record</a></li> 
  <li><a href="salary.aspx">Faculty Salary</a></li>
  <li><a href="admisn.aspx">Admissions</a></li>
  <li><a href="viewstudentreport.aspx" >Student Report</a></li>
  <li><a href ="adstdviewattnd.aspx" >View Student Attendance</a></li>
  <li><a href ="notice.aspx">Notice</a></li>
 <li><a href="sendnotification.aspx">Notification</a></li>
 <li><a href ="logout.aspx">Logout</a></li>
  </ul>
        &nbsp;&nbsp;
            <br />
            &nbsp; &nbsp;&nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Image ID="Image1" runat="server"
                ImageUrl="~/pics/admission-banner.jpg" Style="position: relative" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp;&nbsp; &nbsp;`<br />
         v<div style="text-align: center">
             <table style="color: #000000; position: relative">
                 <tr>
                     <td style="width: 334px; height: 92px; text-align: left">
                         <strong style="font-size: x-large">
                        Roll no</strong></td>
                     <td style="width: 230px; height: 92px">
                         <asp:TextBox ID="txtrollno" runat="server" 
                             Style="font-size: large; left: 5px; position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct Roll no"
                             Style="position: relative; font-size: large;" ControlToValidate="txtrollno" ValidationExpression="^([0-9]{5})$"></asp:RegularExpressionValidator></td>
                     <td style="width: 296px; height: 92px; text-align: left">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        Gender</strong></td>
                     <td style="font-weight: bold; font-size: x-large; width: 198px; height: 92px">
                         <asp:RadioButton ID="rmale" runat="server" GroupName="gender" Style="position: relative"
                             Text="Male" /><strong> </strong>
                         <asp:RadioButton ID="rfemale" runat="server" GroupName="gender" Style="position: relative"
                             Text="Female" /></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; height: 108px; text-align: left">
                         <strong style="font-size: x-large">
                        Full name of the applicant</strong></td>
                     <td style="width: 230px; height: 108px">
                         <asp:TextBox ID="txtname" runat="server" Style="font-size: large; position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Alphabets Only"
                             Style="position: relative; font-size: large;" ControlToValidate="txtname" ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator></td>
                     <td style="width: 296px; height: 108px; text-align: left">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Address</strong></td>
                     <td style="width: 198px; height: 108px">
                         <asp:TextBox ID="txtaddr" runat="server" Style="position: relative" TextMode="MultiLine"
                             Width="246px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; height: 96px; text-align: left">
                         <strong style="font-size: x-large">
                            Stream</strong></td>
                     <td style="width: 230px; height: 96px; text-align: left">
                         <asp:DropDownList ID="ddlstream" runat="server" Style="font-weight: bold; font-size: x-large;
                             position: relative">
                             <asp:ListItem>BCA</asp:ListItem>
                             <asp:ListItem>BSc</asp:ListItem>
                             <asp:ListItem>BOCM</asp:ListItem>
                             <asp:ListItem>BA</asp:ListItem>
                         </asp:DropDownList></td>
                     <td style="width: 296px; height: 96px; text-align: left">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        Mobile no</strong></td>
                     <td style="width: 198px; height: 96px">
                         <asp:TextBox ID="txtmobl" runat="server" Style="font-size: large; left: 0px; position: relative;
                             top: 0px" Width="248px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Enter Correct Phone Number"
                             Style="position: relative; font-size: large;" ControlToValidate="txtmobl" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; height: 95px; text-align: left">
                         <strong style="font-size: x-large">Specification</strong></td>
                     <td style="width: 230px; height: 95px">
                         <asp:TextBox ID="txtspeci" runat="server"  Style="font-size: large;
                             left: 1px; position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Alphabets Only"
                             Style="position: relative; font-size: large;" ControlToValidate="txtspeci" ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator></td>
                     <td style="width: 296px; height: 95px; text-align: left">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        Email Id</strong></td>
                     <td style="width: 198px; height: 95px">
                         <asp:TextBox ID="txtemail" runat="server" Style="font-size: large; left: 0px; position: relative;
                             top: 1px" Width="247px"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Email id"
                             Style="position: relative; font-size: large;" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; text-align: left; height: 79px;">
                         <strong style="font-size: x-large">
                            Semester</strong></td>
                     <td style="width: 230px; text-align: left; height: 79px;">
                         <asp:DropDownList ID="ddlsem" runat="server" Style="font-weight: bold; font-size: x-large;
                             position: relative">
                             <asp:ListItem>1</asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem>3</asp:ListItem>
                             <asp:ListItem>4</asp:ListItem>
                             <asp:ListItem>5</asp:ListItem>
                             <asp:ListItem>6</asp:ListItem>
                         </asp:DropDownList></td>
                     <td style="width: 296px; text-align: left; height: 79px;">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        Date of Birth</strong></td>
                     <td style="width: 198px; height: 79px;">
                              <asp:TextBox ID="txtDate" runat="server" Text="" style="font-weight: bold; font-size: large" />
<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidateDOB"
    ControlToValidate="txtDate" ErrorMessage="" ForeColor="Red" style="font-size: large" />
</td>
                 </tr>
                 <tr>
                     <td style="width: 334px; text-align: left">
                         <strong style="font-size: x-large">
                            Language group</strong></td>
                     <td style="font-weight: bold; font-size: x-large; width: 230px; text-align: left">
                         <asp:RadioButton ID="RadioButton1" runat="server" GroupName="language" Style="position: relative"
                             Text="English" /><br />
                         <asp:RadioButton ID="RadioButton2" runat="server" GroupName="language" Style="position: relative"
                             Text="Kannada" /><br />
                         <asp:RadioButton ID="RadioButton3" runat="server" GroupName="language" Style="position: relative"
                             Text="Sanskrit" /><br />
                         <asp:RadioButton ID="RadioButton4" runat="server" GroupName="language" Style="position: relative"
                             Text="Hindi" /></td>
                     <td style="width: 296px; text-align: left">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Father's Name</strong></td>
                     <td style="width: 198px">
                         <asp:TextBox ID="txtf" runat="server" Style="font-size: large; left: -1px; position: relative;
                             top: 0px" Width="244px"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Alphabets Only"
                             Style="position: relative" ControlToValidate="txtf" ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; height: 103px; text-align: left">
                         <strong style="font-size: x-large"><span style="text-decoration: underline">
                        Marks details</span></strong></td>
                     <td style="width: 230px; height: 103px">
                     </td>
                     <td style="width: 296px; height: 103px; text-align: left">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Phone No</strong></td>
                     <td style="width: 198px; height: 103px">
                         <asp:TextBox ID="fphone" runat="server" Style="font-size: large; left: -3px; position: relative;
                             top: 1px" Width="246px"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Enter Correct Phone Number"
                             Style="position: relative; font-size: large;" ControlToValidate="fphone" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; height: 105px; text-align: left">
                         <strong style="font-size: x-large">
                        SSLC Percentage</strong></td>
                     <td style="width: 230px; height: 105px">
                         <asp:TextBox ID="txtsslc" runat="server" Style="font-size: large; left: 0px; position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                             ControlToValidate="txtsslc" ErrorMessage="Enter percentage with 2 decimal place"
                             Style="font-size: large; position: relative" ValidationExpression="^([0-9]{2})\.([0-9]{2})"></asp:RegularExpressionValidator></td>
                     <td style="width: 296px; height: 105px; text-align: left">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Mother's Name</strong></td>
                     <td style="width: 198px; height: 105px">
                         <asp:TextBox ID="txtm" runat="server" Style="font-size: large; left: -3px; position: relative"
                             Width="249px"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                             ErrorMessage="Alphabets Only" Style="position: relative; font-size: large;" ControlToValidate="txtm" ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; height: 106px; text-align: left">
                         <strong style="font-size: x-large">
                        II PUC Percentage</strong></td>
                     <td style="width: 230px; height: 106px">
                         <asp:TextBox ID="txtpuc" runat="server" Style="font-size: large; left: 0px; position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtpuc"
                             ErrorMessage="Enter percentage with 2 decimal place" Style="font-size: large;
                             position: relative" ValidationExpression="^([0-9]{2})\.([0-9]{2})"></asp:RegularExpressionValidator></td>
                     <td style="width: 296px; height: 106px; text-align: left">
                         <strong style="font-size: x-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Phone No</strong></td>
                     <td style="width: 198px; height: 106px">
                         <asp:TextBox ID="mphone" runat="server" Style="font-size: large; left: -2px; position: relative"
                             Width="248px"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                             ErrorMessage="Enter Correct Phone number" Style="position: relative; font-size: large;" ControlToValidate="mphone" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; text-align: left; height: 91px;">
                         <strong style="font-size: x-large">
                        Total Fees</strong></td>
                     <td style="width: 230px; height: 91px;">
                         <asp:TextBox ID="txtfees" runat="server" Style="font-size: large; position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                     <td style="width: 296px; font-weight: bold; font-size: x-large; height: 91px;">
                         Batch</td>
                     <td style="width: 198px; height: 91px;">
                         <asp:TextBox ID="TextBox1" runat="server" Style="font-size: large; left: 0px; position: relative"></asp:TextBox><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1"
                             ErrorMessage="Enter year in yyyy-yy format" Style="position: relative; font-size: large;" ValidationExpression="^(\d{4}-(\d{2}|\d{4}))$"></asp:RegularExpressionValidator></td>
                 </tr>
                 <tr>
                     <td style="width: 334px">
                         <asp:Button ID="btnsubmit" runat="server" Height="53px" OnClick="btnsubmit_Click1"
                             Style="left: -1px; position: relative; top: 2px" Text="Submit" Width="103px" /></td>
                     <td style="width: 230px">
                         <asp:Button ID="btnsearch" runat="server" Height="53px" OnClick="btnsearch_Click"
                             Style="left: -1px; position: relative; top: 2px" Text="Search" Width="103px" /></td>
                     <td style="width: 296px">
                         <asp:Button ID="btndisplay" runat="server" Height="53px" OnClick="btndisplay_Click2"
                             Style="left: -1px; position: relative; top: 2px" Text="Display" Width="103px" /></td>
                     <td style="width: 198px">
                         <asp:Button ID="btnreset" runat="server" Height="53px" OnClick="btnreset_Click1"
                             Style="left: -1px; position: relative; top: 2px" Text="Reset" Width="103px" /></td>
                 </tr>
                 <tr>
                     <td style="width: 334px; height: 24px">
                     </td>
                     <td colspan="2" style="height: 24px">
                         <asp:Button ID="btnback" runat="server" Height="53px" OnClick="btnback_Click1" Style="left: -1px;
                             position: relative; top: 2px" Text="Back" Width="103px" /></td>
                     <td style="width: 198px; height: 24px">
                     </td>
                 </tr>
                 <tr>
                     <td style="width: 334px">
                     </td>
                     <td style="width: 230px">
                     </td>
                     <td style="width: 296px">
                     </td>
                     <td style="width: 198px">
                     </td>
                 </tr>
                 <tr>
                     <td style="width: 334px">
                     </td>
                     <td style="width: 230px">
                     </td>
                     <td style="width: 296px">
                     </td>
                     <td style="width: 198px">
                     </td>
                 </tr>
                 <tr>
                     <td style="width: 334px">
                     </td>
                     <td style="width: 230px">
                     </td>
                     <td style="width: 296px">
                     </td>
                     <td style="width: 198px">
                     </td>
                 </tr>
             </table>
         </div>
            <br />
            &nbsp; &nbsp;&nbsp; &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;<br />
            &nbsp;&nbsp;
            <br />
            &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <br />
            <br />
            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        
        </div>
        </div> 
    </form>
    <script type="text/javascript">
    function ValidateDOB(sender, args) {
        //Get the date from the TextBox.
        var dateString = document.getElementById(sender.controltovalidate).value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
 
        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString)) {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            sender.innerHTML = "Enter correct date of birth."
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 17) {
                args.IsValid = false;
                return;
            }
 
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 17) {
 
                //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
                if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                    args.IsValid = false;
                    return;
                }
                if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                    //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
                    if (dtCurrent.getDate() < dtDOB.getDate()) {
                        args.IsValid = false;
                        return;
                    }
                }
            }
            args.IsValid = true;
        } else {
            sender.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
            args.IsValid = false;
        }
    }
</script>

</body>
</html>
