<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facultysearch.aspx.cs" Inherits="facultysearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-MSH3ldaRZsg-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="Gray" Height="195px" Style="left: 488px;
            position: relative; top: 322px" Width="898px">
        </asp:Panel>
        <table style="left: 307px; position: relative; top: 161px">
            <tr>
                <td style="width: 1040px; height: 31px">
                    <strong style="font-weight: bold; font-size: xx-large; color: white">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        Enter faculty Id to search</strong></td>
            </tr>
            <tr>
                <td style="width: 1040px; height: 36px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;
                    <asp:TextBox
                        ID="txtfid" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 1040px; height: 39px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                        ID="btnview" runat="server" Height="45px" Text="View" Width="89px" OnClick="btnview_Click" style="left: -35px; position: relative; top: 3px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    <asp:Button ID="btncancel" runat="server" Height="45px" Text="Cancel" Width="122px" OnClick="btncancel_Click" style="left: -203px; position: relative; top: 1px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
            <tr>
                <td style="width: 1040px">
                    &nbsp;<asp:GridView ID="GridView1" runat="server">
                        <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="X-Large" />
                        <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                        <EditRowStyle BackColor="#FFFFC0" Font-Bold="True" Font-Size="X-Large" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
