<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deletesreport.aspx.cs" Inherits="deletesreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 418px; height: 218px">
            <tr>
                <td style="width: 100px">
                    Enter the RollNo to delete the report</td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:TextBox ID="txtdelrn" runat="server" Height="32px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="btnsdelete" runat="server" Height="44px" OnClick="btnsdelete_Click"
                        Text="Delete" Width="104px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btnscancel" runat="server" Height="44px" OnClick="btnscancel_Click"
                        Text="Cancel" Width="104px" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
