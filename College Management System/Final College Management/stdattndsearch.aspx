<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stdattndsearch.aspx.cs" Inherits="stdattndsearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-FHCVK6Vyvwc-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="left: 388px; position: relative; top: 160px">
                <tr>
                    <td colspan="3" style="font-weight: bold; font-size: xx-large">
                        Enter Student Roll No to View Attendance</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="txtsrollno" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Button ID="btnview" runat="server" OnClick="btnview_Click" Style="left: 5px;
                            position: relative; top: 0px" Text="View" Width="84px" Font-Bold="True" Font-Size="X-Large" /></td>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td style="width: 100px">
                        <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Style="position: relative"
                            Text="Cancel" Font-Bold="True" Font-Size="X-Large" /></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView2" runat="server" Style="left: -95px; position: relative;
                            top: 22px">
                            <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="X-Large" />
                            <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
