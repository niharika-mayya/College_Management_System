<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afacultydisplay.aspx.cs" Inherits="afacultydisplay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
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
    background-color:yellow;
    color:black;
}

</style>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
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
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
                    <asp:GridView ID="GridView1" runat="server" style="border-top-style: ridge; border-right-style: ridge; border-left-style: ridge; border-bottom-style: ridge; left: 141px; position: relative; top: 464px;" BorderStyle="Ridge" Font-Bold="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#000040">
                        <FooterStyle BackColor="Teal" BorderColor="#C000C0" />
                        <EditRowStyle BackColor="#FFFF80" BorderStyle="Ridge" />
                        <RowStyle BackColor="#E0E0E0" Font-Size="Large" />
                        <HeaderStyle BackColor="White" Font-Size="X-Large" />
                    </asp:GridView>
        <asp:Panel ID="Panel1" runat="server" Height="118px" Style="left: 941px; position: relative;
            top: -90px" Width="273px" BackColor="#E0E0E0" ForeColor="White">
        </asp:Panel>
        <table style="width: 1px; left: 646px; position: relative; top: -115px; height: 134px;" id="TABLE1" onclick="return TABLE1_onclick()">
            <tr>
                <td style="width: 1040px; height: 39px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnview" runat="server" Font-Bold="True"
                        Font-Size="X-Large" Height="46px" OnClick="btnview_Click" Style="left: 370px;
                        position: relative; top: -182px;" Text="View" Width="105px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
        &nbsp;<br />
        &nbsp;
    
    </div>
    </form>
</body>
</html>
