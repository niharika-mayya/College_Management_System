<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studenttimetable.aspx.cs" Inherits="studenttimetable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title ></title>
<style type="text/css">
ul {
    list-style-type:none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: blue;
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
    <body >

    <form id="form1" runat="server">
    <div>
    
       <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="facultyrecord.aspx">Faculty Record</a></li>
  <li><a href="admisn.aspx">Admissions</a></li>
  <li><a href="stddisplay1.aspx" >View Student Report</a></li>
  <li><a href ="studenttimetable.aspx">Time Table</a></li>
  <li><a href ="notice.aspx">Notice</a></li>
 <li><a href="sendnotification.aspx">Notification</a></li>
 <li><a href ="logout.aspx">Logout</a></li>
  </ul>
       
       &nbsp;
    
        &nbsp; &nbsp; &nbsp;
        <table>
            <tr>
                <td colspan="3" style="height: 24px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    Time Table</td>
                <td colspan="1" style="height: 24px">
                </td>
                <td colspan="1" style="height: 24px">
                </td>
                <td colspan="1" style="height: 24px">
                </td>
                <td colspan="1" style="height: 24px">
                </td>
                <td colspan="1" style="height: 24px">
                </td>
                <td colspan="1" style="height: 24px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Stream</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>BSc</asp:ListItem>
                        <asp:ListItem>BCOM</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Semester</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Day</td>
                <td style="width: 100px">
                    9.00-10.00</td>
                <td style="width: 100px">
                    10.05-11.00</td>
                <td style="width: 100px">
                    11.15-12.05</td>
                <td style="width: 100px">
                    12.10-1.00</td>
                <td>
                </td>
                <td style="width: 100px">
                    2.00-3.05</td>
                <td style="width: 100px">
                    3.10-4.00</td>
                <td style="width: 100px">
                    4.05-5.00</td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Monday</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtm1" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtm2" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtm3" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtm4" runat="server"></asp:TextBox></td>
                <td>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtm5" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtm6" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtm7" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Tuesday</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtt1" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtt2" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtt3" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtt4" runat="server"></asp:TextBox></td>
                <td>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txt5" runat="server" OnTextChanged="TextBox12_TextChanged"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtt6" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txt7" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                    Wednesday</td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
                <td style="height: 24px">
                </td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                    Thursday</td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox></td>
                <td style="height: 24px">
                </td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                    Friday</td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox></td>
                <td style="height: 24px">
                </td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                    Saturday</td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox></td>
                <td style="height: 24px">
                </td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 24px">
                </td>
                <td style="width: 100px; height: 24px">
                    <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 12px">
                </td>
                <td style="width: 100px; height: 12px">
                </td>
                <td style="width: 100px; height: 12px">
                </td>
                <td style="width: 100px; height: 12px">
                </td>
                <td style="width: 100px; height: 12px">
                </td>
                <td style="height: 12px">
                </td>
                <td style="width: 100px; height: 12px">
                </td>
                <td style="width: 100px; height: 12px">
                </td>
                <td style="width: 100px; height: 12px">
                </td>
            </tr>
        </table>
   </div>
    </form>
</body>
</html>
