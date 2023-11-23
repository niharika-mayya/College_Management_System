<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stdhelp.aspx.cs" Inherits="stdhelp" %>

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
     <ul style="font-weight: bold; font-size: x-large">
  <li><a class="active" href="#home">Home</a></li>
   <li><a href="stddisplay1.aspx">Report</a></li>
    <li><a href="stdviewatd.aspx" >View Attendance</a></li>
   <li><a href ="snotification.aspx" >Notification</a></li>
    <li><a href ="stdhelp.aspx" >Help</a></li>
  <li><a href ="logout.aspx" >Logout</a></li>
 
  </ul>
        <div style="text-align: center">
            <div style="text-align: center">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div style="text-align: center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    
                    <table style="width: 552px; height: 100px;Right:200px;left: 388px; position:relative;  border: 1px solid blue;top: 48px; background-color: #ffccff; height: 183px;">
                        <tr>
                            <td colspan="2" style="font-size: x-large; height: 47px;">
                                <strong style="font-size: larger">HELP</strong></td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; width: 149px; height: 54px">
                                Serial No.</td>
                            <td style="width: 100px; height: 54px">
                                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Height="39px" Text="Label"
                                    Width="103px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; width: 149px">
                                Category</td>
                            <td style="width: 100px">
                                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Large">
                                    <asp:ListItem>Student</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; width: 149px">
                                Message</td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtsmsg" runat="server" Font-Size="X-Large" Height="57px" TextMode="MultiLine"
                                    Width="275px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 24px">
                                <asp:Button ID="btnsend" runat="server" Font-Size="X-Large" Height="58px" Text="Send"
                                    Width="115px" OnClick="btnsend_Click" /></td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
