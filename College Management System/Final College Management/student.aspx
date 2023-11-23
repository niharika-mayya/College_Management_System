<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Student Page</title>
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
<body background="pics/jess-bailey-FHCVK6Vyvwc-unsplash.jpg">
    <form id="form1" runat="server"></form>
       <div>
        <ul style="font-weight: bold; font-size: x-large">
  <li><a class="active" href="#home">Home</a></li>
   <li><a href="stddisplay1.aspx">Report</a></li>
    <li><a href="stdviewatd.aspx" >View Attendance</a></li>
   <li><a href ="snotification.aspx" >Notification</a></li>
    <li><a href ="stdhelp.aspx" >Help</a></li>
  <li><a href ="logout.aspx" >Logout</a></li>
 
  </ul>
      
           <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/welcome-dribbble.gif" Style="left: 577px;
               position: relative; top: 90px" />
  
</div>

 
</body>
</html>
    