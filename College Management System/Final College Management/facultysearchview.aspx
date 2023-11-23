<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facultysearchview.aspx.cs" Inherits="facultyinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
     <style type="text/css">
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: purple;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    font-size=28px;
    text-decoration: none;
}

li a:hover {
    background-color: yellow;
    color:black
}
</style>
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
        <table style="left: 673px; width: 668px; position: relative; top: 253px">
            <tr>
                <td style="width: 100px">
                    <strong><span style="font-weight: bold; font-size: 36pt; color: black">&nbsp;Faculty
                        Id <asp:TextBox ID="TextBox1" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large" ReadOnly="True"></asp:TextBox></span></strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="btnview" runat="server" Height="65px" OnClick="btnview_Click" Style="position: relative"
                        Text="View" Width="123px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnback" runat="server" Height="65px" OnClick="btnback_Click" Style="position: relative"
                        Text="Back" Width="123px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
        </table>
    
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" Style="left: 395px; position: relative;
            top: -66px">
            <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="Large" />
            <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
        </asp:GridView>
    </form>
</body>
</html>
