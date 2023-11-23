<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentlogin.aspx.cs" Inherits="studentlogin" %>

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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Panel ID="Panel1"
            runat="server" Height="569px" Width="811px" style="left: 657px; position: relative; top: -60px" BackColor="#8080FF">
            <table style="height: 273px; left: 33px; width: 752px; position: relative; top: 99px;">
                <tr>
                    <td colspan="2" style="height: 68px; text-align: justify">
                        <span style="font-size: 16pt"><strong><span style="font-size: 24pt">&nbsp; &nbsp;
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/stu_login.gif" Style="left: 174px;
                                position: relative; top: -2px" /></span></strong></span></td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 52px">
                        <strong><span style="font-size: x-large; font-weight: bold; color: white;">&nbsp;Student
                            Id</span></strong></td>
                    <td style="width: 399px; height: 52px">
                        &nbsp;
                        <asp:TextBox ID="txtluser" runat="server" Width="193px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtluser"
                            ErrorMessage="Enter valid roll no" Font-Bold="True" Font-Size="Large" Style="position: relative"
                            ValidationExpression="^\d+$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 53px">
                        <strong><span style="font-size: x-large; font-weight: bold; color: white;">&nbsp;Password</span></strong></td>
                    <td style="width: 399px; height: 53px">
                        &nbsp;
                        <asp:TextBox ID="txtlpswd" runat="server" TextMode="Password" Width="189px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 43px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Button ID="btnlogin" runat="server" Height="46px"
                            OnClick="btnlogin_Click" Text="Login" Width="91px" style="left: -102px; position: relative; top: 2px" Font-Bold="True" Font-Size="X-Large" />
                        &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="btncancel" runat="server" Height="43px" OnClick="btncancel_Click"
                            Text="Cancel" Width="114px" style="left: -69px; position: relative; top: 0px" Font-Bold="True" Font-Size="X-Large" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="2" style="height: 57px; text-align: left">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LinkButton1"
                            runat="server" OnClick="LinkButton1_Click" style="position: relative; left: -56px; top: 1px;" Font-Bold="True" Font-Size="X-Large" ForeColor="White">Forgot Password?</asp:LinkButton>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="left: 5px; position: relative; top: -3px" Font-Bold="True" Font-Size="X-Large" ForeColor="White">Sign Up New Account</asp:LinkButton>
                        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
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
