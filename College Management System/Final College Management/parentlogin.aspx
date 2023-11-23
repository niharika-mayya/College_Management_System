<%@ Page Language="C#" AutoEventWireup="true" CodeFile="parentlogin.aspx.cs" Inherits="parentlogin" %>

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
        <asp:Label ID="Label1" runat="server" Height="89px" Style="left: 766px; position: relative;
            top: 285px" Width="147px"></asp:Label><br />
        <br />
        &nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Panel ID="Panel1"
            runat="server" Height="645px" Width="829px" style="left: 587px; position: relative; top: -206px" BackColor="#8080FF">
            <table style="height: 141px; left: 18px; width: 779px; position: relative; top: 18px; font-weight: bold; font-size: x-large; color: white;">
                <tr>
                    <td colspan="2" style="height: 68px; text-align: justify">
                        <span style="font-size: 16pt"><strong><span style="font-size: 24pt">
                            <asp:Image ID="Image1" runat="server" Height="99px" ImageUrl="~/pics/spouse.gif"
                                Style="left: 347px; position: relative; top: -39px" Width="122px" />
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em> &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp;Parent
                                <br />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Login</em></span></strong></span></td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 52px">
                        <strong><span style="font-size: x-large; font-weight: bold; color: white;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Username</span></strong></td>
                    <td style="width: 399px; height: 52px">
                        &nbsp;
                        <asp:TextBox ID="txtluser" runat="server" Width="193px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 52px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; children Rollno</td>
                    <td style="width: 399px; height: 52px">
                        <asp:TextBox ID="TextBox1" runat="server" Style="position: relative; left: 13px; top: 0px;" Font-Bold="True" Font-Size="X-Large" Width="198px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="Enter valid rollno" Style="position: relative" ValidationExpression="^([0-9]{5})$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 53px">
                        <strong><span style="font-size: x-large; font-weight: bold; color: white;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Password</span></strong></td>
                    <td style="width: 399px; height: 53px">
                        &nbsp;
                        <asp:TextBox ID="txtlpswd" runat="server" TextMode="Password" Width="189px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 43px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btncancel" runat="server" Height="43px" OnClick="btncancel_Click"
                            Text="Cancel" Width="108px" Font-Bold="True" Font-Size="X-Large" style="left: 26px; position: relative; top: -2px" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnlogin"
                            runat="server" Font-Bold="True" Font-Size="X-Large" Height="47px" OnClick="btnlogin_Click"
                            Style="left: -192px; position: relative; top: 1px" Text="Login" Width="109px" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="2" style="height: 34px; text-align: left">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; <asp:LinkButton ID="LinkButton1"
                            runat="server" OnClick="LinkButton1_Click" style="left: -241px; position: relative; top: 16px" Font-Bold="True" Font-Size="X-Large" ForeColor="White">Forgot Password?</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="position: relative; left: -139px; top: 19px;" Font-Bold="True" Font-Size="X-Large" ForeColor="White">Sign Up New Account</asp:LinkButton>
                        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;
                    </td>
                </tr>
                <tr>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
