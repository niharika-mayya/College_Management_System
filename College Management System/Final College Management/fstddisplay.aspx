<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fstddisplay.aspx.cs" Inherits="aadminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
</head>
<body background="pics/jess-bailey-FHCVK6Vyvwc-unsplash.jpg">
    <div class="loginbox">
        <p>
            &nbsp;</p>
    <form runat ="server">
        <div style="text-align: center">
            <table style="left: 1px; position: relative; top: 204px">
                <tr>
                    <td colspan="2" style="font-weight: bold; font-size: xx-large">
                        Student Report</td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 50px">
                        <asp:Button ID="btnview" runat="server" Font-Bold="True" Font-Size="X-Large" Height="53px"
                            OnClick="btnview_Click" Style="position: relative" Text="View" Width="99px" /></td>
                    <td style="width: 100px; height: 50px">
                        <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Size="X-Large" Height="53px"
                            OnClick="btncancel_Click" Style="left: 0px; position: relative; top: 0px" Text="Cancel"
                            Width="118px" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" Style="position: relative; left: -39px; top: 8px;">
                            <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="Large" />
                            <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    </div>
</body>
</html>
