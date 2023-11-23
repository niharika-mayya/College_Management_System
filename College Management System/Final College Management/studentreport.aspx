<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentreport.aspx.cs" Inherits="studentreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <style type="text/css">
ul {
    list-style-type: none;
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
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color:yellow;
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
 </div>
    <div style="font-weight: bold; font-size: x-large; color: black;">
        <table style="width: 861px; height: 480px">
            <tr>
                <td colspan="4" style="font-size: xx-large; font-weight: bold;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Student
                    Details</td>
            </tr>
            <tr>
                <td style="width: 70px; height: 37px">
                    Full
                    Name</td>
                <td style="width: 70px; height: 37px">
                    <asp:TextBox ID="txtsname" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                <td style="height: 37px" colspan="3">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtsname"
                        ErrorMessage="Alphabets Only" Style="left: -4px; position: relative; top: -10px"
                        ValidationExpression="[a-z A-Z]*$"></asp:RegularExpressionValidator>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 41px">
                    Roll No</td>
                <td style="width: 135px; height: 41px">
                    <asp:TextBox ID="txtsrollno" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                <td style="height: 41px" colspan="2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtsrollno"
                        ErrorMessage="Enter Correct Rollno" Style="position: relative" ValidationExpression="^([0-9]{5})$"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 70px; height: 37px">
                    Course</td>
                <td style="width: 135px; height: 37px">
                    &nbsp;<asp:DropDownList ID="ddlcorse" runat="server" Font-Bold="True" Font-Size="X-Large"
                        Style="position: relative">
                        <asp:ListItem Enabled="False"></asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>BSC</asp:ListItem>
                        <asp:ListItem>BCOM</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="height: 37px" colspan="2">
                </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 37px">
                    Specification</td>
                <td style="width: 135px; height: 37px">
                    <asp:TextBox ID="txtspeci" runat="server" Font-Bold="True" Font-Size="X-Large" Style="position: relative"></asp:TextBox></td>
                <td colspan="2" style="height: 37px">
                </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 37px">
                    Semester</td>
                <td style="width: 135px; height: 37px">
                    <asp:TextBox ID="txtsem" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                <td colspan="2" style="height: 37px">
                </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 37px">
                    Exam<asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="X-Large"
                        Style="position: relative"></asp:TextBox></td>
                <td style="width: 135px; height: 37px">
                </td>
                <td colspan="2" style="height: 37px">
                </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 37px">
                    Date<asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="X-Large"
                        ReadOnly="True" Style="position: relative"></asp:TextBox></td>
                <td style="width: 135px; height: 37px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Marks</td>
                <td colspan="2" style="height: 37px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 70px; height: 63px">
                    Subject 1<asp:TextBox ID="txtsub1" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                    <br />
                    </td>
                <td style="width: 135px; height: 63px">
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtm1"
                        ErrorMessage="Enter correct marks" MaximumValue="100" MinimumValue="0" Style="left: 12px;
                        position: relative; top: 87px" Type="Integer"></asp:RangeValidator>
                    <asp:TextBox ID="txtm1" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                <td style="width: 135px; height: 63px">
                    </td>
                <td style="width: 544px; height: 63px">
                    </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 65px">
                    Subject 2<asp:TextBox ID="txtsub2" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                    </td>
                <td style="width: 135px; height: 65px">
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtm2"
                        ErrorMessage="Enter correct marks" MaximumValue="100" MinimumValue="0" Style="left: 9px;
                        position: relative; top: 79px" Type="Integer"></asp:RangeValidator>
                    <asp:TextBox ID="txtm2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position: relative"></asp:TextBox></td>
                <td style="width: 135px; height: 65px">
                    </td>
                <td style="width: 544px; height: 65px">
                    <br />
                    </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 61px">
                    Subject 3<asp:TextBox ID="txtsub3" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                    </td>
                <td style="width: 135px; height: 61px">
                    <br />
                    <asp:TextBox ID="txtm3" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtm3"
                        ErrorMessage="Enter correct marks" MaximumValue="100" MinimumValue="0" Style="left: 11px;
                        position: relative; top: 4px" Type="Integer"></asp:RangeValidator></td>
                <td style="width: 135px; height: 61px">
                    </td>
                <td style="width: 544px; height: 61px">
                    </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 58px">
                    Subject 4<asp:TextBox ID="txtsub4" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                    </td>
                <td style="width: 135px; height: 58px">
                    <br />
                    <asp:TextBox ID="txtm4" runat="server" Font-Bold="True" Font-Size="X-Large" style="left: 1px; position: relative; top: 12px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtm4"
                        ErrorMessage="Enter correct marks" MaximumValue="100" MinimumValue="0" Style="left: 11px;
                        position: relative; top: 12px" Type="Integer"></asp:RangeValidator>
                </td>
                <td style="width: 135px; height: 58px">
                    </td>
                <td style="width: 544px; height: 58px">
                    </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 62px">
                    Subject 5<asp:TextBox ID="txtsub5" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                    </td>
                <td style="width: 135px; height: 62px">
                    <br />
                    <asp:TextBox ID="txtm5" runat="server" Font-Bold="True" Font-Size="X-Large" style="left: 0px; position: relative; top: 6px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtm5"
                        ErrorMessage="Enter correct marks" MaximumValue="100" MinimumValue="0" Style="left: 10px;
                        position: relative; top: 14px" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 59px">
                    Subject 6<asp:TextBox ID="txtsub6" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox><br />
                    </td>
                <td style="width: 135px; height: 59px">
                    <br />
                    <asp:TextBox ID="txtm6" runat="server" Font-Bold="True" Font-Size="X-Large" style="position: relative"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="txtm6"
                        ErrorMessage="Enter correct marks" MaximumValue="100" MinimumValue="0" Style="left: 6px;
                        position: relative; top: 7px" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 41px">
                    Total Marks</td>
                <td style="width: 135px; height: 41px">
                    <asp:TextBox ID="txttotmarks" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                <td style="height: 41px" colspan="2">
                    </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 36px">
                    Percentage</td>
                <td style="width: 135px; height: 36px">
                    <asp:TextBox ID="txtavg" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                <td style="width: 135px; height: 36px">
                    </td>
                <td style="width: 544px; height: 36px">
                    </td>
            </tr>
            <tr>
                <td style="width: 70px; height: 33px">
                    Grade</td>
                <td style="width: 135px; height: 33px">
                    <asp:TextBox ID="txtgrade" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
                <td style="width: 135px; height: 33px">
                </td>
                <td style="width: 544px; height: 33px">
                </td>
            </tr>
            <tr>
                <td colspan="4" style="height: 29px">
                    Remarks &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:TextBox ID="txtremarks" runat="server" TextMode="MultiLine" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="4" style="height: 24px">
                    &nbsp;
                    <asp:Button ID="btnsubmit" runat="server" Height="46px" Text="Submit" Width="117px" OnClick="btnsubmit_Click" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="btncalc" runat="server" Height="46px" OnClick="btncalc_Click"
                        Text="Calculate" Width="141px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btndisplay" runat="server" Height="46px" Text="Display"
                        Width="111px" OnClick="btndisplay_Click" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp;&nbsp; &nbsp;
                    &nbsp;&nbsp;<asp:Button ID="btnreset" runat="server" Height="46px" Text="Reset" Width="97px" OnClick="btnreset_Click" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp;
                    <asp:Button ID="btnback" runat="server" Height="46px" OnClick="btnback_Click" Text="Back"
                        Width="97px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
