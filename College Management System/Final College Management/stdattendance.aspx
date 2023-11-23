<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stdattendance.aspx.cs" Inherits="stdattendance_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    
    <style type="text/css">
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: purple;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: yellow;
    color:black
}
</style>
</head>
<body background="pics/jess-bailey-FHCVK6Vyvwc-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
     <ul style="font-weight: bold; font-size: xx-large">
  <li><a class="active" href="#home" style="font-weight: bold; font-size: x-large">Home</a></li>
 <li><a href="facultysearchview.aspx" style="font-weight: bold; font-size: x-large">View Faculty Record</a></li>
  <li><a href="fsalaryview.aspx"style="font-weight: bold; font-size: x-large">Salary Report</a></li>
 <li><a href="studentreport.aspx" style="font-weight: bold; font-size: x-large" >Add Student Report</a></li>
  <li><a href ="checkstudentreport.aspx" style="font-weight: bold; font-size: x-large">View Student Report</a></li>
  <li><a href="stdattendance.aspx" style="font-weight: bold; font-size: x-large">Add Student Attendance</a></li>
  <li><a href="fnotification.aspx" style="font-weight: bold; font-size: x-large"  >Notification</a></li>
  <li><a href="help.aspx" style="font-weight: bold; font-size: x-large">Help</a></li>
  <li><a href="logout.aspx" style="font-weight: bold; font-size: x-large" >Logout</a></li> 
  </ul>
        <div style="text-align: center">
            <table style="position: relative; left: 398px; width: 561px; top: -3px;">
                <tr>
                    <td colspan="2" style="font-weight: bold; font-size: xx-large; background-color: white;">
                        Attendance Report</td>
                </tr>
                <tr>
                    <td style="width: 100px; font-weight: bold; font-size: x-large;">
                        Date</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtdate" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; font-weight: bold; font-size: x-large;">
                        Course</td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large">
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>BSc</asp:ListItem>
                            <asp:ListItem>Bcom</asp:ListItem>
                            <asp:ListItem>BA</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="font-weight: bold; font-size: x-large; width: 100px">
                        Specification</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtspeci" runat="server" Style="font-weight: bold; font-size: x-large;
                            left: 9px; position: relative; top: 0px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; font-weight: bold; font-size: x-large; text-align: left;">
                        &nbsp; &nbsp;
                        Roll no</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtroll" runat="server" Style="position: relative; left: 10px; top: 11px;" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; font-weight: bold; font-size: x-large; text-align: left;">
                        &nbsp;&nbsp; Full
                        Name</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtname" runat="server" Style="position: relative; left: 0px; top: 7px;" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; font-weight: bold; font-size: x-large;">
                        Total classes held</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtch" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; font-weight: bold; font-size: x-large;">
                        Total classes attended</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtcatt" runat="server" Style="position: relative; left: 3px; top: -10px;" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 24px; font-weight: bold; font-size: x-large;">
                        Percentage</td>
                    <td style="width: 100px; height: 24px">
                        <asp:TextBox ID="txtpercent" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 125px">
                        <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Style="position: relative"
                            Text="Save" Width="79px" Font-Bold="True" Font-Size="X-Large" />&nbsp;<asp:Button ID="btncalc" runat="server" OnClick="btncalc_Click"
                                Style="position: relative" Text="Calculate" Font-Bold="True" Font-Size="X-Large" />&nbsp;<asp:Button ID="btnclear" runat="server"
                                    Style="position: relative" Text="Clear" Width="94px" OnClick="btnclear_Click" Font-Bold="True" Font-Size="X-Large" />&nbsp;<asp:Button
                                        ID="btndisplay" runat="server" OnClick="btndisplay_Click" Style="position: relative"
                                        Text="Display" Font-Bold="True" Font-Size="X-Large" />
                        &nbsp; &nbsp; &nbsp;<asp:Button ID="btnsearch" runat="server" Style="position: relative"
                            Text="Search" OnClick="btnsearch_Click" OnClientClick="function1()" Font-Bold="True" Font-Size="X-Large" />
                        &nbsp; &nbsp; &nbsp; &nbsp;</td>
                </tr>
            </table>
        </div>
    
    </div>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:GridView ID="GridView1" runat="server" Style="left: 419px; position: relative;
            top: -23px" Font-Bold="False">
            <RowStyle BackColor="#FFFFC0" Font-Bold="True" Font-Size="X-Large" />
            <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
        </asp:GridView>
        <br />
        &nbsp;</form>
    
</body>
</html>
