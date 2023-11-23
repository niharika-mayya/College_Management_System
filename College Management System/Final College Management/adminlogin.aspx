<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title >Login Page</title>

</head>
<body style="background-position: 100% 100%; background-attachment: fixed; background-image: url(pics/jess-bailey-q10VITrVYUM-unsplash.jpg); position: absolute; background-color: transparent;">
    <form id="form1" runat="server">

        &nbsp;
        
    &nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="#8080FF" BorderColor="White"
            Height="615px" Style="left: 636px; position: relative; top: 172px" Width="682px">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/unnamed.gif" Style="left: 214px;
            position: relative; top: 33px" />
            <table style="left: 102px; width: 540px; position: relative; top: 63px; height: 346px">
                <tr>
                    <td colspan="" rowspan="" style="font-weight: bold; font-size: xx-large; width: 100px;
                        color: white; height: 9px">
                        &nbsp;User Id</td>
                    <td colspan="" rowspan="" style="width: 108px; height: 9px">
                        <asp:TextBox ID="txtuser" runat="server" Height="31px" Style="position: relative;
                            top: 4px; left: 20px;" Width="205px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="" rowspan="" style="font-weight: bold; font-size: xx-large; width: 100px;
                        color: white; height: 2px">
                        &nbsp;Password</td>
                    <td colspan="" rowspan="" style="width: 108px; height: 2px">
                        <asp:TextBox ID="txtpaswd" runat="server" Font-Bold="True" Font-Size="X-Large" Height="31px"
                             Style="left: 22px; position: relative; top: 6px"
                            Width="205px" TextMode="Password" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 43px">
                        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" OnClick="LinkButton2_Click"
                            Style="left: 266px; position: relative; top: 0px" Font-Bold="True" Font-Size="X-Large">Sign Up New Account</asp:LinkButton></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 35px">
                        <asp:Button ID="btncancel" runat="server" Height="58px" OnClick="btncancel_Click"
                            Style="left: 289px; position: relative; top: 9px" Text="Cancel" Width="105px" Font-Bold="True" Font-Size="X-Large" /></td>
                </tr>
            </table>
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" OnClick="LinkButton1_Click"
                Style="left: 110px; position: relative; top: -105px" Font-Bold="True" Font-Size="X-Large">Forgot Password?</asp:LinkButton></asp:Panel>
        <asp:Button ID="Btnlogin" runat="server" Height="58px" OnClick="Btnlogin_Click" Style="left: 842px;
            position: relative; top: 39px" Text="Login" Width="105px" Font-Bold="True" Font-Size="X-Large" />&nbsp;
        
    </form>
</body>
</html>
