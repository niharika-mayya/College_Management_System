<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adisplayall.aspx.cs" Inherits="adisplayall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-MSH3ldaRZsg-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                        <asp:GridView ID="GridView1" runat="server" style="left: 9px; position: relative; top: 221px" Font-Bold="True">
                            <RowStyle BackColor="#E0E0E0" Font-Bold="True" Font-Size="Large" />
                            <HeaderStyle BackColor="White" Font-Size="X-Large" />
                        </asp:GridView>
            <table style="width: 754px; left: 310px; position: relative; top: -164px;">
                <tr>
                    <td style="width: 100px">
                        <strong style="font-weight: bold; font-size: xx-large">Student details</strong></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" Font-Bold="True" Font-Size="X-Large" />
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" Font-Bold="True" Font-Size="X-Large" /></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 24px">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>
