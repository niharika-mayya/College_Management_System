<%@ Page Language="C#" AutoEventWireup="true" CodeFile="salary.aspx.cs" Inherits="salary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Salary Page</title>
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
    color:white;
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
            <table style="position: relative; left: 348px; top: 6px;">
                <tr>
                    <td style="font-weight: bold; font-size: x-large;" colspan="2">
                        Salary Report</td>
                    <td colspan="1" style="font-weight: bold; font-size: x-large; width: 234px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 136px; font-weight: bold; font-size: x-large;">
                        Faculty id</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtfid" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                    <td style="width: 234px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 136px; font-weight: bold; font-size: x-large;">
                        Full
                        Name</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtname" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                    <td style="width: 234px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 136px; font-weight: bold; font-size: x-large;">
                        Phone no</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtphone" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                    <td style="width: 234px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone"
                            ErrorMessage="Enter Correct Phone Number" Style="position: relative" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width: 136px; font-weight: bold; font-size: x-large; height: 45px;">
                        Date</td>
                    <td style="width: 100px; height: 45px;">
                        <asp:TextBox ID="txtdate" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 234px; height: 45px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 136px; font-weight: bold; font-size: x-large;">
                        Total working days</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtwrk" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                    <td style="width: 234px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtwrk"
                            ErrorMessage="Enter Numbers Only" Style="position: relative" ValidationExpression="^\d+$"></asp:RegularExpressionValidator><br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtwrk"
                            ErrorMessage="Enter correct days" MaximumValue="31" MinimumValue="1" Style="position: relative"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="width: 136px; font-weight: bold; font-size: x-large;">
                        Leave days</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtleave" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                    <td style="width: 234px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtleave"
                            ErrorMessage="Enter Numbers only" Style="position: relative" ValidationExpression="^\d+$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width: 136px; font-weight: bold; font-size: x-large;">
                        Salary per day</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtsalperday" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                    <td style="width: 234px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtsalperday"
                            ErrorMessage="Enter Numbers Only" Style="position: relative" ValidationExpression="^\d+$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width: 136px; font-weight: bold; font-size: x-large;">
                        Total salary</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txttot" runat="server" Style="position: relative" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                    <td style="width: 234px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txttot"
                            ErrorMessage="Enter Numbers Only" Style="position: relative" ValidationExpression="^\d+$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Style="position: relative"
                            Text="Add" Font-Bold="True" Font-Size="X-Large" />
                        &nbsp;<asp:Button ID="btncalc" runat="server" OnClick="btncalc_Click" Style="position: relative"
                            Text="Calculate" Font-Bold="True" Font-Size="X-Large" Width="142px" />
                        &nbsp;<asp:Button ID="btnhome" runat="server" Style="position: relative; left: 0px;" Text="Home" Font-Bold="True" Font-Size="X-Large" OnClick="btnhome_Click" />
                        <asp:Button ID="btndisplay" runat="server" Font-Bold="True" Font-Size="X-Large" OnClick="btndisplay_Click"
                            Style="position: relative" Text="Display" Width="112px" /></td>
                    <td colspan="1" style="width: 234px">
                    </td>
                </tr>
            </table>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname"
                ErrorMessage="Alphabets Only" Style="left: 600px; position: relative; top: -511px"
                ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator></div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" Style="position: relative">
            <RowStyle BackColor="Silver" Font-Bold="True" Font-Size="X-Large" />
            <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="X-Large" />
        </asp:GridView>
    </form>
</body>
</html>
