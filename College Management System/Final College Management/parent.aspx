<%@ Page Language="C#" AutoEventWireup="true" CodeFile="parent.aspx.cs" Inherits="parent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
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
<body>

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
        <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/welcome-dribbble.gif" Style="left: 605px;
            position: relative; top: 81px" Height="547px" />
    
    </div>
    </form>
</body>
</html>
