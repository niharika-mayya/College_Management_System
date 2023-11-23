<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facultylogin.aspx.cs" Inherits="facultylogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1"
            runat="server" Height="637px" Width="803px" style="left: 615px; position: relative; top: -12px" BackColor="#8080FF">
            <asp:Label ID="Label1" runat="server" BackColor="CornflowerBlue" Font-Bold="True"
                Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Height="70px" Style="left: 325px;
                position: relative; top: 164px; direction: ltr;" Text="Faculty Login" Width="185px"></asp:Label>
            <table style="height: 141px; left: 101px; position: relative; top: 188px; width: 693px;">
                <tr>
                    <td style="width: 170px; height: 52px">
                        <strong><span style="font-size: x-large; font-weight: bold;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Faculty Id</span></strong></td>
                    <td style="width: 399px; height: 52px">
                        &nbsp;
                        <asp:TextBox ID="txtluser" runat="server" Width="193px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtluser"
                            ErrorMessage="Enter valid faculty id" Font-Bold="True" Font-Size="Large" Style="position: relative"
                            ValidationExpression="^\d+$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 53px">
                        <strong><span style="font-size: x-large; font-weight: bold;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Password</span></strong></td>
                    <td style="width: 399px; height: 53px">
                        &nbsp;
                        <asp:TextBox ID="txtlpswd" runat="server" TextMode="Password" Width="189px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 43px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;
                        <asp:Button ID="btnlogin" runat="server"
                            Height="42px" Text="Login" Width="94px" OnClick="btnlogin_Click" Font-Bold="True" Font-Size="X-Large" style="left: -120px; position: relative; top: 1px" />
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="btncancel" runat="server" Height="42px" Text="Cancel" Width="110px" OnClick="btncancel_Click" Font-Bold="True" Font-Size="X-Large" style="position: relative" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="2" style="height: 34px; text-align: left">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LinkButton1" runat="server"
                            OnClick="LinkButton1_Click" style="left: -81px; position: relative; top: 3px" Font-Bold="True" Font-Size="X-Large" ForeColor="White">Forgot Password?</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="position: relative" Font-Bold="True" Font-Size="X-Large" ForeColor="White">Sign Up New Account</asp:LinkButton>&nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                </tr>
            </table>
        </asp:Panel>
        <asp:Image ID="Image1" runat="server" Height="148px" ImageUrl="~/pics/bb0cc783196fa9b2119864ff90eb5702.gif"
            Style="left: 940px; position: relative; top: -636px" Width="186px" />&nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
