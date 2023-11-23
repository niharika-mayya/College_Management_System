<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fnotification.aspx.cs" Inherits="fnotification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <style type="text/css">
ul
{
    list-style-type:none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:purple;
} 
li {
    float:left;
}
li a {
    display: block;
    color:white;
    text-align: center;
    padding: 16px 18px;
    text-decoration: none;
    font-size:28px;
}

li a:hover {
    background-color: yellow;
    color:black
}
}
</style>
</head>
<body background="pics/jess-bailey-MSH3ldaRZsg-unsplash.jpg">
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
        <br/>
        <table style="left: 375px; position: relative; top: 15px">
            <tr>
                <td style="width: 597px; height: 65px; font-weight: bold; font-size: xx-large;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Notification</td>
            </tr>
            <tr>
                <td style="width: 597px; height: 65px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btncheck" runat="server" Height="64px"
                        OnClick="btncheck_Click" Text="Check" Width="121px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnback" runat="server" Height="64px"
                        OnClick="Button1_Click" Text="Back" Width="121px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 597px; height: 154px">
                    &nbsp; <span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;<br />
                    </span>
                    &nbsp;<br />
                    &nbsp;&nbsp;
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1"
                        runat="server" Style="position: relative; left: 211px; top: -25px;">
                        <RowStyle BackColor="#E0E0E0" Font-Bold="True" Font-Size="X-Large" />
                        <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                    </asp:GridView>
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 597px; height: 147px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
