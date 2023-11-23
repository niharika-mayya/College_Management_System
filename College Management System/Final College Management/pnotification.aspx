<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pnotification.aspx.cs" Inherits="pnotification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Notification Page</title>
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
     <ul>
    <li><a class="active" href="#home">Home</a></li>
      <li><a href="displaystdreport.aspx" > Student Report</a></li>
      <li><a href ="pastdviewattd.aspx" >View Attendance</a></li>  
     <li><a href="pnotification.aspx" >Notification</a></li>  
     <li><a href ="phelp.aspx">Help</a></li>
     <li><a href ="logout.aspx">Logout</a></li>
     </ul>
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <br />
        <table style="left: 575px; position: relative; top: 10px">
            <tr>
                <td style="width: 597px">
                    <strong style="font-weight: bold; font-size: xx-large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Notifications</strong></td>
            </tr>
            <tr>
                <td style="width: 597px; height: 65px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnview" runat="server" Height="54px"
                        OnClick="btnview_Click" Text="View" Width="91px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 597px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView
                        ID="GridView1" runat="server">
                        <RowStyle BackColor="#E0E0E0" Font-Bold="True" Font-Size="X-Large" />
                        <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                    </asp:GridView>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 597px; height: 106px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    <asp:Button ID="btnback" runat="server" Height="54px" OnClick="Button2_Click" Text="Back"
                        Width="91px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
