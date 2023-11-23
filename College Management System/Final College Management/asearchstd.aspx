<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asearchstd.aspx.cs" Inherits="asearchstd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-MSH3ldaRZsg-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            &nbsp;<table style="width: 628px">
                <tr>
                    <td style="width: 100px; font-weight: bold; font-size: x-large;">
                        Enter Roll number to check student detail</td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 45px;">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" Font-Bold="True" Font-Size="X-Large" />&nbsp;<asp:Button
                            ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" Font-Bold="True" Font-Size="X-Large" Width="126px" /></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:GridView ID="GridView1" runat="server">
                            <RowStyle BackColor="#E0E0E0" Font-Bold="True" Font-Size="Large" />
                            <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
