<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ssignup.aspx.cs" Inherits="ssignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <div align="left" style="height: 750px">
            <div class="backimg">
                <div>
                    <table style="position: relative; left: 758px; top: 34px;" id="TABLE1" onclick="return TABLE1_onclick()">
                        <tr>
                            <td colspan="2" style="height: 33px">
                                <span style="font-size: 16pt"><strong>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/1_b3TUwRFsvFvLpavrFn6LbA.gif"
                                        Style="left: 18px; position: relative; top: 0px" /></strong></span></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: x-large; width: 158px; height: 39px">
                                Student Id</td>
                            <td style="width: 356px; height: 39px">
                                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="X-Large" Style="position: relative; left: 0px;"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Enter valid roll no" Font-Bold="True" Font-Size="Large" Style="position: relative"
                                    ValidationExpression="^([0-9]{5})$"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 39px">
                                <strong style="font-weight: bold; font-size: x-large">Name</strong></td>
                            <td style="width: 356px; height: 39px">
                                <asp:TextBox ID="txtsuser" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 42px">
                                <strong style="font-weight: bold; font-size: x-large">Security question</strong></td>
                            <td style="width: 356px; height: 42px">
                                <asp:DropDownList ID="ddls" runat="server" Font-Bold="True" Font-Size="Large">
                                    <asp:ListItem>Your favourite color</asp:ListItem>
                                    <asp:ListItem>Your pet name</asp:ListItem>
                                    <asp:ListItem>Your birth place</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px">
                                <strong style="font-weight: bold; font-size: x-large">Type your answer</strong></td>
                            <td style="width: 356px; height: 36px">
                                <asp:TextBox ID="txtsans" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px; font-weight: bold; font-size: x-large;">
                                Password</td>
                            <td style="width: 356px; height: 36px">
                                <asp:TextBox ID="txtspwd" runat="server" TextMode="Password" Width="345px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 38px; font-weight: bold; font-size: x-large;">
                                Confirm Password</td>
                            <td style="width: 356px; height: 38px">
                                <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" Width="345px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtspwd"
                                    ControlToValidate="txtcpwd" ErrorMessage="Password do not match" Font-Bold="True" Font-Size="Large"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 34px">
                                <strong style="font-weight: bold; font-size: x-large">Mobile no</strong></td>
                            <td style="width: 356px; height: 34px">
                                <asp:TextBox ID="txtmob" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmob"
                                    ErrorMessage="Enter correct phone no" ValidationExpression="^([6-9]{1})([0-9]{9})$" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 36px">
                                <strong style="font-weight: bold; font-size: x-large">Email id</strong></td>
                            <td style="width: 356px; height: 36px">
                                <asp:TextBox ID="txtemail" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail"
                                    ErrorMessage="Invalid Mail Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 158px; height: 31px">
                                <strong style="font-weight: bold; font-size: x-large">Category</strong></td>
                            <td style="width: 356px; height: 31px">
                                <asp:Label ID="Label1" runat="server" Text="Student" Font-Bold="True" Font-Size="X-Large" Width="112px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 44px">
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="btnok" runat="server" Height="38px" Text="OK" Width="85px" OnClick="btnok_Click" style="font-weight: bold; font-size: x-large" />
                                &nbsp; &nbsp; &nbsp;&nbsp;
                                <asp:Button ID="btnlogin" runat="server" Height="41px" Text="Login" Width="94px" OnClick="btnlogin_Click" style="font-weight: bold; font-size: x-large" /></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
