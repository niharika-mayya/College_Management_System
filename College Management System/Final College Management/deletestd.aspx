<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deletestd.aspx.cs" Inherits="deletestd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="3">
                    Enter Roll no to delete record</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="txtrn" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="btndel" runat="server" OnClick="btndel_Click" Text="Delete" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btncan" runat="server" OnClick="btncan_Click" Text="Cancel" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
