<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facultyrecord.aspx.cs" Inherits="facultyrecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
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
    background-color:yellow;
    color:black;
}

</style>
    
    </head>
   <body background="pics/jess-bailey-FHCVK6Vyvwc-unsplash.jpg">
       
    <form id="form2" runat="server">       
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
        
       
       &nbsp;</div>
           <table style="width: 1140px; height: 609px">
               <tr>
                   <td style="width: 50px; font-weight: bold; font-size: x-large;">
                       Faculty Id</td>
                   <td style="width: 100px">
                       <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
               </tr>
               <tr>
                   <td style="width: 50px; height: 28px; font-weight: bold; font-size: x-large;">
                       Full
                       Name</td>
                   <td style="width: 100px; height: 27px">
                       <asp:TextBox ID="txtfname" runat="server" Font-Bold="True" Font-Size="X-Large" Width="325px"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtfname"
                           ErrorMessage="Alphabets Only" Style="position: relative; left: 17px; top: 0px; font-size: large;" ValidationExpression="[a-z A-Z]*$" Width="173px" Font-Size="Medium"></asp:RegularExpressionValidator></td>
               </tr>
               <tr>
                   <td style="width: 50px; height: 28px; font-weight: bold; font-size: x-large;">
                       Date of Birth</td>
                   <td style="width: 100px; height: 27px">
                            <asp:TextBox ID="txtDate" runat="server" Text="" style="font-size: x-large" />
<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidateDOB"
    ControlToValidate="txtDate" ErrorMessage="" ForeColor="Red" style="font-size: large" />&nbsp;<br />
                       <asp:Label ID="Label2" runat="server" Style="position: relative" Text="DD/MM/YYYY"></asp:Label></td>
               </tr>
               <tr>
                   <td style="width: 50px; height: 24px">
                       </td>
                   <td style="width: 100px; height: 24px">
                       &nbsp;&nbsp;
                       </td>
               </tr>
               <tr>
                   <td style="width: 50px; height: 24px; font-weight: bold; font-size: x-large;">
                       Gender</td>
                   <td style="width: 100px; height: 24px; font-weight: bold; font-size: x-large;">
                       <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Female" />
                       &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                       <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Male" /></td>
               </tr>
               <tr>
                   <td style="width: 50px; height: 27px; font-weight: bold; font-size: x-large;">
                       Mobile Number</td>
                   <td style="width: 100px; height: 27px">
                       <asp:TextBox ID="txtmob" runat="server" Font-Size="X-Large"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmob"
                           ErrorMessage="Enter correct mobile no" ValidationExpression="^([6-9]{1})([0-9]{9})$" Height="31px" Width="264px" style="font-size: large"></asp:RegularExpressionValidator></td>
               </tr>
               <tr>
                   <td style="width: 50px; height: 24px; font-weight: bold; font-size: x-large;">
                       Email</td>
                   <td style="width: 100px; height: 24px">
                       <asp:TextBox ID="txtemail" runat="server" Font-Size="X-Large"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail"
                           ErrorMessage="Invalid Mail Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="170px" style="font-size: large"></asp:RegularExpressionValidator></td>
               </tr>
               <tr>
                   <td style="width: 50px; font-weight: bold; font-size: x-large;">
                       Address</td>
                   <td style="width: 100px">
                       <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Font-Size="X-Large" Font-Bold="True"></asp:TextBox></td>
               </tr>
               <tr>
                   <td style="width: 50px; font-weight: bold; font-size: x-large;">
                       Date of Joining</td>
                   <td style="width: 100px">
                       <asp:TextBox ID="txtdoj" runat="server" Font-Size="X-Large"></asp:TextBox>&nbsp;
                       <br />
                       <asp:Label ID="Label3" runat="server" Style="position: relative" Text="DD/MM/YYYY"></asp:Label>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtdoj"
                           ErrorMessage="Enter Date in Correct Format" Style="position: relative; font-size: large;" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((18|19|20)\d\d))$" Height="35px" Width="242px"></asp:RegularExpressionValidator></td>
               </tr>
               <tr>
                   <td style="width: 50px; font-weight: bold; font-size: x-large;">
                       Qualifications</td>
                   <td style="width: 100px">
                       <asp:TextBox ID="txtqualification" runat="server" Font-Size="X-Large"></asp:TextBox></td>
               </tr>
               <tr>
                   <td style="width: 50px; font-weight: bold; font-size: x-large;">
                       Experience</td>
                   <td style="width: 100px">
                       <asp:TextBox ID="txtexperience" runat="server" Font-Size="X-Large"></asp:TextBox></td>
               </tr>
               <tr>
                   <td style="width: 50px; height: 52px; font-weight: bold; font-size: x-large;">
                       Department</td>
                   <td style="width: 100px; height: 52px">
                       <asp:TextBox ID="txtdept" runat="server" Font-Size="X-Large"></asp:TextBox></td>
               </tr>
               <tr>
                   <td style="font-weight: bold; font-size: x-large; width: 50px; height: 52px">
                       Stream</td>
                   <td style="width: 100px; height: 52px">
                       <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Style="font-weight: bold;
                           font-size: x-large; position: relative">
                           <asp:ListItem>BCA</asp:ListItem>
                           <asp:ListItem>BSc</asp:ListItem>
                           <asp:ListItem>BCOM</asp:ListItem>
                           <asp:ListItem>BA</asp:ListItem>
                       </asp:DropDownList></td>
               </tr>
               <tr>
                   <td colspan="2" rowspan="2">
                       &nbsp; &nbsp; 
                       <asp:Button ID="btnsubmit" runat="server" Height="49px" OnClick="btnsubmit_Click"
                           Text="Submit" Width="116px" Font-Bold="True" Font-Size="X-Large" />
                       &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 
                       <asp:Button ID="btnsearch" runat="server" Height="49px" OnClick="btnsearch_Click"
                           Text="Search" Width="111px" Font-Bold="True" Font-Size="X-Large" style="left: -24px; position: relative; top: 0px" />
                       &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                       <asp:Button ID="btnreset" runat="server" Height="49px"
                           Text="Reset" Width="100px" OnClick="btnreset_Click" style="left: -44px; position: relative; top: 0px" Font-Bold="True" Font-Size="X-Large" /><br />
                       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                       <asp:Button ID="btnback" runat="server" Height="49px" Text="Back" Width="111px" OnClick="btnback_Click" style="left:399px; position: relative; top: -50px" Font-Bold="True" Font-Size="X-Large" />
                       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
               </tr>
               <tr>
               </tr>
           </table>
        
        
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
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 22) {
                args.IsValid = false;
                return;
            }
 
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 22) {
 
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
