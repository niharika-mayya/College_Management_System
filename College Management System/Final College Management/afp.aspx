<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afp.aspx.cs" Inherits="afp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        <table style="left: 802px; width: 742px; position: relative; top: 8px">
            <tr>
                <td colspan="2" style="text-align: center">
                    <strong><span style="font-size: 14pt; color: white;">
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="152px" ImageUrl="~/pics/116117042-forgot-password-folder-shows-login-authentication-invalid-remember-login-security-verification-3d-il.jpg"
                            Style="left: 0px; position: relative; top: -11px" Width="223px" /></span></strong></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Username</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtuname" runat="server" Font-Bold="True" Font-Size="X-Large" Width="389px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Security Question</strong></td>
                <td style="width: 397px; text-align: left">
                    &nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" ForeColor="Black">
                        <HeaderStyle Font-Bold="True" />
                        <EditRowStyle Font-Bold="True" Font-Size="Large" />
                    </asp:GridView>
                    <asp:Button ID="btnclick" runat="server" Height="39px" OnClick="btnclick_Click" Text="Click here to view your security questions "
                        Width="435px" Font-Bold="True" Font-Size="Medium" /><br />
                </td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Type your answer</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtans" runat="server" Font-Bold="True" Font-Size="X-Large" Width="368px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">New Password</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtnp" runat="server" TextMode="Password" Font-Bold="True" Font-Size="X-Large" Width="345px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Confirm Password</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtcp" runat="server" TextMode="Password" Font-Bold="True" Font-Size="X-Large" Width="344px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnp"
                        ControlToValidate="txtcp" ErrorMessage="New and Confirm password do not match"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 51px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnok" runat="server" Height="39px" OnClick="btnok_Click" Text="OK"
                        Width="90px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btnback" runat="server" Height="39px" OnClick="btnback_Click" Text="Back"
                        Width="90px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
