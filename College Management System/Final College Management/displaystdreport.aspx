<%@ Page Language="C#" AutoEventWireup="true" CodeFile="displaystdreport.aspx.cs" Inherits="displaystdreport" %>

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
        <br />
        <br />
        <br />
        <br />
        &nbsp;<table style="left: 722px; position: relative; top: -16px">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: x-large">
                    &nbsp;Student Roll No </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="txtrno" runat="server" Font-Bold="True" Font-Size="X-Large" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 56px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btnview" runat="server" Height="53px" OnClick="btnview_Click" Text="View"
                        Width="102px" Font-Bold="True" Font-Size="X-Large" />
                    <asp:Button ID="btnback" runat="server" Height="53px" OnClick="btnback_Click" Text="Back"
                        Width="102px" style="left: 61px; position: relative; top: 1px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
        </table>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        <table style="left: -2px; position: relative; top: -85px">
            <tr>
                <td style="width: 100px; height: 24px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    &nbsp;<asp:GridView ID="GridView1" runat="server">
                        <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="Large" />
                        <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
