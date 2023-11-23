<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="notice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title ></title>
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
</style>

    </head>
    <body background="pics/jess-bailey-MSH3ldaRZsg-unsplash.jpg">

       

    <form id="form1" runat="server">
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
       
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="font-weight: bold">
            <tr>
                <td colspan="1" style="width: 203px; height: 46px">
                </td>
                <td colspan="2" style="height: 46px; text-align: left">
                    <span style="font-size: xx-large; font-weight: bold;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="text-decoration: underline">
                            Notice &nbsp;</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;<span style="text-decoration: underline"> </span></span>
                </td>
            </tr>
            <tr>
                <td colspan="1" style="width: 203px; height: 31px">
                </td>
                <td colspan="2" style="height: 31px; text-align: left; font-weight: bold; font-size: x-large;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Slno. &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 203px; height: 30px; text-align: right">
                    <br />
                    <br />
                </td>
                <td style="width: 247px; height: 30px; text-align: right; font-weight: bold; font-size: x-large;">
                    Type message</td>
                <td style="width: 571px; height: 30px; text-align: left">
                    <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="1" style="width: 203px; height: 36px">
                </td>
                <td colspan="2" style="height: 36px; text-align: center">
                    <asp:Button ID="btnsend" runat="server" Height="45px" OnClick="btnsend_Click" Text="Send"
                        Width="96px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" Height="45px" OnClick="btncancel_Click"
                        Text="Cancel" Width="122px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
            <tr>
                <td colspan="1" style="width: 203px; height: 36px">
                </td>
                <td colspan="2" style="height: 36px; text-align: center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1"
                        runat="server">
                        <RowStyle BackColor="#FFFFC0" Font-Bold="True" Font-Size="X-Large" />
                        <HeaderStyle BackColor="#FFFF80" />
                    </asp:GridView>
                    &nbsp;<br />
                    <asp:Button ID="btnview" runat="server" Height="45px" OnClick="btnview_Click" Text="View"
                        Width="96px" Font-Bold="True" Font-Size="X-Large" />&nbsp;<br />
                    <br />
                    <asp:Button ID="btnback" runat="server" Height="44px" OnClick="btnback_Click" Text="Back"
                        Width="95px" Font-Bold="True" Font-Size="X-Large" /><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    
    </div>
    </form>
</body>
</html>
