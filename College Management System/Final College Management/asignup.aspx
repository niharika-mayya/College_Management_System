<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asignup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <div align="left" style="height: 1px; width: 101px;">
            <div class="backimg">
                <div>
                    <table style="left: 768px; position: relative; top: 19px; width: 562px;">
                        <tr>
                            <td colspan="2">
                                <span style="font-size: 16pt"><strong>
                                    <br />
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/1_b3TUwRFsvFvLpavrFn6LbA.gif"
                                        Style="left: 22px; position: relative; top: -15px" /></strong></span></td>
                        </tr>
                        <tr>
                            <td style="width: 181px; height: 49px">
                                <strong style="font-weight: bold; font-size: x-large">
                    Username</strong></td>
                            <td style="width: 397px; height: 49px">
                                <asp:TextBox ID="txtausr" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 181px; height: 59px">
                                <strong style="font-weight: bold; font-size: x-large">Security question</strong></td>
                            <td style="width: 397px; height: 59px">
                                <asp:DropDownList ID="ddla" runat="server" Font-Bold="True" Font-Size="X-Large">
                                    <asp:ListItem>Your favourite color</asp:ListItem>
                                    <asp:ListItem>Your pet name</asp:ListItem>
                                    <asp:ListItem>Your birth place</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 181px; height: 44px">
                                <strong style="font-weight: bold; font-size: x-large">Type your answer</strong></td>
                            <td style="width: 397px; height: 44px">
                                <asp:TextBox ID="txtaans" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 181px; height: 48px; font-weight: bold; font-size: x-large;">
                                Password</td>
                            <td style="width: 397px; height: 48px">
                                <asp:TextBox ID="txtapwd" runat="server" TextMode="Password" Width="342px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 181px; height: 49px; font-weight: bold; font-size: x-large;">
                    Confirm Password</td>
                            <td style="width: 397px; height: 49px">
                                <asp:TextBox ID="txtacpwd" runat="server" TextMode="Password" Width="339px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtapwd"
                                    ControlToValidate="txtacpwd" ErrorMessage="Password Do Not Match"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 181px; height: 34px">
                                <strong style="font-weight: bold; font-size: x-large">
                    Mobile no</strong></td>
                            <td style="width: 397px; height: 34px">
                                <asp:TextBox ID="txtmob" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmob"
                                    ErrorMessage="Enter Correct Phone No" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 181px; height: 36px">
                                <strong style="font-weight: bold; font-size: x-large">Email id</strong></td>
                            <td style="width: 397px; height: 36px">
                                <asp:TextBox ID="txtaemail" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>&nbsp;
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtaemail"
                                    ErrorMessage="Enter Correct Mail Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 181px; height: 31px">
                                <strong style="font-weight: bold; font-size: x-large">
                    Category</strong></td>
                            <td style="width: 397px; height: 31px">
                                <asp:Label ID="Label1" runat="server" Text="Admin" Font-Bold="True" Font-Size="X-Large" Width="100px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 57px">
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="btnok" runat="server" Height="47px" OnClick="btnok_Click" Text="OK"
                                    Width="117px" Font-Bold="True" Font-Size="X-Large" />
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="btnlogin" runat="server" Height="54px" OnClick="btnlogin_Click" Text="Login"
                                    Width="109px" Font-Bold="True" Font-Size="X-Large" /></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
