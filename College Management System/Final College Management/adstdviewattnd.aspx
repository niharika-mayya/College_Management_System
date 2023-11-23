<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adstdviewattnd.aspx.cs" Inherits="adstdviewattnd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Attendance Report</title>
     <style type="text/css">
ul {
    list-style-type:none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:purple;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px 18px;
    text-decoration: none;
    font-size:28px;
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
     <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="facultyrecord.aspx">Faculty Record</a></li>
  <li><a href="afacultydisplay.aspx" >View Faculty Record</a></li> 
  <li><a href="salary.aspx">Faculty Salary</a></li>
  <li><a href="admisn.aspx">Admissions</a></li>
  <li><a href="viewstudentreport.aspx" >Student Report</a></li>
  <li><a href ="adstdviewattnd.aspx" >View Student Attendance</a></li>
  <li><a href ="notice.aspx">Notice</a></li>
 <li><a href="sendnotification.aspx">Notification</a></li>
 <li><a href ="logout.aspx">Logout</a></li>
  </ul>
       
        <div style="text-align: center">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table style="position: relative; left: 345px; top: -18px;">
                <tr>
                    <td colspan="2">
                        <strong style="font-weight: bold; font-size: xx-large">Enter student Roll No to check
                            student attendance report</strong></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 76px;">
                        <asp:Button ID="btnview" runat="server" OnClick="btnview_Click" Style="position: relative"
                            Text="View" Font-Bold="True" Font-Size="X-Large" /></td>
                    <td style="width: 116px; height: 76px;">
                        <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Style="position: relative"
                            Text="Cancel" Font-Bold="True" Font-Size="X-Large" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 201px">
                        <asp:GridView ID="GridView1" runat="server" Style="position: relative">
                            <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="Large" />
                            <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-weight: bold; font-size: xx-large; text-align: center">
                        Enter stream to check report streamwise</td>
                </tr>
                <tr>
                    <td colspan="2" style="font-weight: bold; font-size: x-large; text-align: center">
                        &nbsp; &nbsp; &nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Style="font-weight: bold; font-size: x-large;
                            left: 0px; position: relative"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 73px; text-align: center">
                        <asp:Button ID="btndisplay" runat="server" OnClick="btndisplay_Click" Style="position: relative; left: 0px;"
                            Text="View" Font-Bold="True" Font-Size="X-Large" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView2" runat="server" Style="position: relative">
                            <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="Large" />
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
