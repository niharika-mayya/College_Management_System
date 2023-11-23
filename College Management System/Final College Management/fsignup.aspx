<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fsignup.aspx.cs" Inherits="fsignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <div align="left" style="height: 1px; width: 601px;">
            <div class="backimg">
                <div>
                    <table style="left: 793px; position: relative; top: 56px">
                        <tr>
                            <td colspan="2" style="height: 33px">
                                <span style="font-size: 16pt"><strong>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/1_b3TUwRFsvFvLpavrFn6LbA.gif"
                                        Style="left: 47px; position: relative; top: -3px" /></strong></span></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 39px">
                                <strong style="font-weight: bold; font-size: x-large">Faculty Id</strong></td>
                            <td style="width: 356px; height: 39px">
                                <asp:TextBox ID="txtfuser" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtfuser"
                                    ErrorMessage="Enter valid faculty id" Font-Bold="True" Font-Size="Large" Style="position: relative"
                                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: x-large; width: 158px; height: 42px">
                                Name</td>
                            <td style="width: 356px; height: 42px">
                                <asp:TextBox ID="txtname" runat="server" Font-Bold="True" Font-Size="X-Large" Style="position: relative"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 42px">
                                <strong style="font-weight: bold; font-size: x-large">Security question</strong></td>
                            <td style="width: 356px; height: 42px">
                                <asp:DropDownList ID="ddlsecure" runat="server" Font-Bold="True" Font-Size="Large">
                                    <asp:ListItem>Your favourite color</asp:ListItem>
                                    <asp:ListItem>Your pet name</asp:ListItem>
                                    <asp:ListItem>Your birth place</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px">
                                <strong style="font-weight: bold; font-size: x-large">Type your answer</strong></td>
                            <td style="width: 356px; height: 36px">
                                <asp:TextBox ID="txtfans" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px; font-weight: bold; font-size: x-large;">
                                Password</td>
                            <td style="width: 356px; height: 36px">
                                <asp:TextBox ID="txtfpwd" runat="server" TextMode="Password" Width="346px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 38px; font-weight: bold; font-size: x-large;">
                                Confirm Password</td>
                            <td style="width: 356px; height: 38px">
                                <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" Width="342px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtfpwd"
                                    ControlToValidate="txtcpwd" ErrorMessage="Password does not match" Font-Bold="True" Font-Size="Large"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 34px">
                                <strong style="font-weight: bold; font-size: x-large">Mobile no</strong></td>
                            <td style="width: 356px; height: 34px">
                                <asp:TextBox ID="txtmob" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmob"
                                    ErrorMessage="Enter correct phone number" ValidationExpression="^([7-9]{1})([0-9]{9})$" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px">
                                <strong style="font-weight: bold; font-size: x-large">Email id</strong></td>
                            <td style="width: 356px; height: 36px">
                                <asp:TextBox ID="txtemail" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail"
                                    ErrorMessage="Enter valid Email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 31px">
                                <strong style="font-weight: bold; font-size: x-large">Category</strong></td>
                            <td style="width: 356px; height: 31px">
                                <asp:Label ID="Label1" runat="server" Text="Faculty" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnok" runat="server" Height="41px"
                                    OnClick="btnok_Click" Text="OK" Width="82px" Font-Bold="True" Font-Size="X-Large" />
                                &nbsp; &nbsp;&nbsp;
                                <asp:Button ID="btnlogin" runat="server" Height="41px" OnClick="btnlogin_Click" Text="Login"
                                    Width="107px" Font-Bold="True" Font-Size="X-Large" /></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        +</div>
    </form>
</body>
</html>
