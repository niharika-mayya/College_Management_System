<%@ Page Language="C#" AutoEventWireup="true" CodeFile="psignup.aspx.cs" Inherits="psignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <div align="left" style="height: 750px">
            <div class="backimg">
                <div>
                    <table style="left: 772px; position: relative; top: 71px">
                        <tr>
                            <td colspan="2">
                                <span style="font-size: 16pt">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/1_b3TUwRFsvFvLpavrFn6LbA.gif"
                                        Style="left: 52px; position: relative; top: 4px" /></span></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 39px">
                                <strong style="font-weight: bold; font-size: x-large">Username</strong></td>
                            <td style="width: 356px; height: 39px">
                                <asp:TextBox ID="txtpuser" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 42px; font-weight: bold; font-size: x-large; color: black;">
                                Enter childern Rollno</td>
                            <td style="width: 356px; height: 42px">
                                <asp:TextBox ID="TextBox1" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Enter valid roll no" Font-Bold="True" Font-Size="Large" Style="position: relative"
                                    ValidationExpression="^([0-9]{5})$"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 42px">
                                <strong style="font-weight: bold; font-size: x-large">Security question</strong></td>
                            <td style="width: 356px; height: 42px">
                                <asp:DropDownList ID="ddlp" runat="server" Font-Bold="True" Font-Size="Medium">
                                    <asp:ListItem>Your favourite color</asp:ListItem>
                                    <asp:ListItem>Your pet name</asp:ListItem>
                                    <asp:ListItem>Your birth place</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px">
                                <strong style="font-weight: bold; font-size: x-large">Type your answer</strong></td>
                            <td style="width: 356px; height: 36px">
                                <asp:TextBox ID="txtpans" runat="server" Font-Bold="True" Font-Size="X-Large" Width="370px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px; font-weight: bold; font-size: x-large;">
                                Password</td>
                            <td style="width: 356px; height: 36px">
                                <asp:TextBox ID="txtppwd" runat="server" TextMode="Password" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 38px; font-weight: bold; font-size: x-large;">
                                Confirm Password</td>
                            <td style="width: 356px; height: 38px">
                                &nbsp;<asp:TextBox ID="txtpcpwd" runat="server" TextMode="Password" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtppwd"
                                    ControlToValidate="txtpcpwd" ErrorMessage="Password do not match" Font-Size="Large" Font-Bold="True"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 34px">
                                <strong style="font-weight: bold; font-size: x-large">Mobile no</strong></td>
                            <td style="width: 356px; height: 34px">
                                &nbsp;<asp:TextBox ID="txtpmob" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpmob"
                                    ErrorMessage="Enter correct mobile no" ValidationExpression="^([6-9]{1})([0-9]{9})$" Font-Size="Large" Font-Bold="True"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px">
                                <strong style="font-weight: bold; font-size: x-large">Email id</strong></td>
                            <td style="width: 356px; height: 36px">
                                &nbsp;<asp:TextBox ID="txtpemail" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Mail Id" ControlToValidate="txtpemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Large" Font-Bold="True"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 31px">
                                <strong style="font-weight: bold; font-size: x-large">Category</strong></td>
                            <td style="width: 356px; height: 31px">
                                <asp:Label ID="Label1" runat="server" Text="Parent" Font-Bold="True" Font-Size="X-Large" Width="95px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 49px">
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnok"
                                    runat="server" Height="37px" Text="OK" Width="82px" OnClick="btnok_Click1" Font-Bold="True" Font-Size="X-Large" />
                                &nbsp; &nbsp; &nbsp;&nbsp;
                                <asp:Button ID="btnlogin" runat="server" Height="37px" Text="Login" Width="82px" OnClick="btnlogin_Click" Font-Bold="True" Font-Size="X-Large" /></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
