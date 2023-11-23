<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pastdviewattd.aspx.cs" Inherits="pastdviewattd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Attendance Page</title>
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
    
        <div style="text-align: center">
            <table style="left: 365px; position: relative; top: 51px">
                <tr>
                    <td colspan="2" style="font-weight: bold; font-size: xx-large; height: 92px;">
                        &nbsp;Student Roll No </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 24px">
                        <asp:TextBox ID="TextBox1" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Button ID="btnview" runat="server" OnClick="btnview_Click" Style="position: relative; left: 8px; top: 1px;"
                            Text="View" Font-Bold="True" Font-Size="X-Large" /></td>
                    <td style="width: 100px">
                        <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Style="position: relative; left: 17px; top: 0px;"
                            Text="Cancel" Font-Bold="True" Font-Size="X-Large" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" Style="position: relative">
                            <RowStyle BackColor="Silver" BorderColor="#FFFF80" Font-Bold="True" Font-Size="Large" />
                            <HeaderStyle BackColor="White" BorderColor="#404040" Font-Bold="True" Font-Size="X-Large" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
