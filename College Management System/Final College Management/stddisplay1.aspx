<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stddisplay1.aspx.cs" Inherits="stddisplay1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Report Page</title>
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
<body background="pics/jess-bailey-FHCVK6Vyvwc-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
    <ul style="font-weight: bold; font-size: x-large">
  <li><a class="active" href="#home">Home</a></li>
   <li><a href="stddisplay1.aspx">Report</a></li>
    <li><a href="stdviewatd.aspx" >View Attendance</a></li>
   <li><a href ="snotification.aspx" >Notification</a></li>
    <li><a href ="stdhelp.aspx" >Help</a></li>
  <li><a href ="logout.aspx" >Logout</a></li>
 
  </ul>
        <table style="left: 535px; position: relative; top: 71px">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: x-large; background-color: #ccccff">
                    Enter 
                    Student Rollno to View Record</td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #ccccff">
                    &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="txtrno" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #ccccff">
                    &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btnview" runat="server" OnClick="btnview_Click" Text="View" style="position: relative; top: 0px" Font-Bold="True" Font-Size="X-Large" Height="54px" Width="99px" />
                    <asp:Button ID="btnback" runat="server" Height="53px" OnClick="btnback_Click" Text="Back"
                        Width="93px" style="left: 150px; position: relative; top: 1px" Font-Bold="True" Font-Size="X-Large" />
                </td>
            </tr>
        </table>
    
    </div>
        <table style="left: -5px; position: relative; top: 112px">
            <tr>
                <td style="width: 100px">
                    </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:GridView ID="GridView1" runat="server">
                        <RowStyle BackColor="#FFFFC0" Font-Bold="True" Font-Size="X-Large" />
                        <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 91px;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
