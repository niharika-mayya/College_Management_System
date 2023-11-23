<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sfp.aspx.cs" Inherits="sfp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        &nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <table style="height: 509px; left: 813px; position: relative; top: 67px;">
            <tr>
                <td colspan="2" style="text-align: center">
                    <strong><span style="font-size: 24pt; color: black; font-weight: bold;">
                        <asp:Image ID="Image1" runat="server" Height="163px" ImageUrl="~/pics/116117042-forgot-password-folder-shows-login-authentication-invalid-remember-login-security-verification-3d-il.jpg"
                            Style="left: 44px; position: relative; top: -22px" Width="205px" /><br />
                    </span></strong></td>
            </tr>
            <tr style="font-size: 24pt">
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Username</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtsuser" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr style="font-size: 24pt">
                <td style="font-weight: bold; font-size: x-large; width: 136px; text-align: left">
                    Student ID</td>
                <td style="font-size: medium; width: 397px; text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="X-Large" Style="position: relative"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter valid student id" Font-Bold="True" Font-Size="Large" Style="position: relative"
                        ValidationExpression="^([0-9]{5})$"></asp:RegularExpressionValidator></td>
            </tr>
            <tr style="font-size: 24pt">
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Security question</strong></td>
                <td style="width: 397px; text-align: left; font-size: medium;">
                    &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" Style="position: relative">
                    </asp:GridView>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnsclick" runat="server" Height="45px" Text="Click here to view your security question"
                        Width="386px" OnClick="btnsclick_Click" Font-Bold="True" Font-Size="Medium" /><br />
                </td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Type your answer</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtsans" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">New Password</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtsnpwd" runat="server" Font-Bold="True" Font-Size="X-Large" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Confirm Password</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtscpwd" runat="server" Font-Bold="True" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtsnpwd"
                        ControlToValidate="txtscpwd" ErrorMessage="New and confirm password do not match" Font-Bold="True" Font-Size="Large"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 51px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;<asp:Button ID="btnok" runat="server" Height="48px" OnClick="btnok_Click"
                        Text="OK" Width="101px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnback" runat="server" Height="48px" OnClick="btnback_Click" Text="Back"
                        Width="101px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
