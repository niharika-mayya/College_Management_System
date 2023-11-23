<%@ Page Language="C#" AutoEventWireup="true" CodeFile="phelp.aspx.cs" Inherits="phelp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Help Page</title>
    <style type="text/css">
ul
{
    list-style-type:none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:purple;
} 
li {
    float:left;
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
}
</style>
     

    
</head>
<body background="pics/jess-bailey-MSH3ldaRZsg-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
    <ul>
    <li><a class="active" href="#home">Home</a></li>
      <li><a href="displaystdreport.aspx" > Student Report</a></li>
      <li><a href ="pastdviewattd.aspx" >View Attendance</a></li>  
     <li><a href="pnotification.aspx" >Notification</a></li>  
     <li><a href ="phelp.aspx">Help</a></li>
     <li><a href ="logout.aspx">Logout</a></li>
     </ul>
    </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="643px" Style="font-weight: bold;
            font-size: xx-large; left: 493px; position: relative; top: 123px" Width="873px">
            &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;HELP<br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; Serial No. &nbsp; &nbsp;
            <asp:Label ID="Label1" runat="server" Style="position: relative" Text="Label"></asp:Label><br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Category &nbsp; &nbsp; &nbsp; &nbsp;<asp:DropDownList
                ID="DropDownList1" runat="server" Font-Bold="True" Font-Size="X-Large" Style="position: relative">
                <asp:ListItem>Parent</asp:ListItem>
            </asp:DropDownList>
            &nbsp; &nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Message &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox
                ID="txtpmsg" runat="server" Font-Bold="True" Font-Size="X-Large" Height="103px"
                Style="position: relative" TextMode="MultiLine" Width="213px"></asp:TextBox>
            &nbsp;&nbsp;<br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="btnsend" runat="server" Font-Bold="True" Font-Size="X-Large" OnClick="btnsend_Click"
                Style="position: relative" Text="Send" /></asp:Panel>
     
    
    </form>
   
    
</body>
</html>
