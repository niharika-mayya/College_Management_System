<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkstudentreport.aspx.cs" Inherits="checkstudentreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title ></title>
  <style type="text/css">
ul {
    list-style-type: none;
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
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: yellow;
    color:black
}
</style>
    
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body background="pics/jess-bailey-FHCVK6Vyvwc-unsplash.jpg">
   

    <form id="form1" runat="server">
     <div>     
   <ul style="font-weight: bold; font-size: xx-large">
  <li><a class="active" href="#home" style="font-weight: bold; font-size: x-large">Home</a></li>
 <li><a href="facultysearchview.aspx" style="font-weight: bold; font-size: x-large">View Faculty Record</a></li>
  <li><a href="fsalaryview.aspx"style="font-weight: bold; font-size: x-large">Salary Report</a></li>
 <li><a href="studentreport.aspx" style="font-weight: bold; font-size: x-large" >Add Student Report</a></li>
  <li><a href ="checkstudentreport.aspx" style="font-weight: bold; font-size: x-large">View Student Report</a></li>
  <li><a href="stdattendance.aspx" style="font-weight: bold; font-size: x-large">Add Student Attendance</a></li>
  <li><a href="fnotification.aspx" style="font-weight: bold; font-size: x-large"  >Notification</a></li>
  <li><a href="help.aspx" style="font-weight: bold; font-size: x-large">Help</a></li>
  <li><a href="logout.aspx" style="font-weight: bold; font-size: x-large" >Logout</a></li>
 
  </ul>
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <div style="text-align: center">
             &nbsp;&nbsp;
             <table style="position: relative; left: 256px; top: -128px; width: 687px; height: 144px;">
                 <tr>
                     <td colspan="2" style="font-weight: bold; font-size: xx-large">
                         <strong>
                         Enter Student Course to View Report</strong></td>
                 </tr>
                 <tr>
                     <td colspan="2">
                         <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="X-Large"
                             Style="position: relative; left: 10px; top: -1px;"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <td style="width: 100px; height: 74px;">
                         <asp:Button ID="btnview" runat="server" Height="57px" OnClick="Button1_Click" Style="position: relative; left: 90px; top: 5px;"
                             Text="View" Width="100px" /></td>
                     <td style="width: 100px; height: 74px;">
                         <asp:Button ID="btncancel" runat="server" Height="57px" OnClick="btncancel_Click"
                             Style="position: relative; left: -85px; top: 3px;" Text="Cancel" Width="100px" />
                         &nbsp;&nbsp;
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2" style="height: 203px">
                         <asp:GridView ID="GridView1" runat="server" Style="position: relative; left: -146px; top: 2px;">
                             <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="Large" />
                             <EditRowStyle BackColor="#FFFFC0" Font-Bold="True" Font-Size="Large" />
                             <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                         </asp:GridView>
                     </td>
                 </tr>
             </table>
             </div>
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div> 
    </form>
 </body> 
 </html> 

