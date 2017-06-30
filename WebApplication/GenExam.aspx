<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenExam.aspx.cs" Inherits="WebApplication.GenExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>General Exam</title>
    <link rel="stylesheet" href="CSS/main.css">
</head>
    <script src="JS/Exam.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"> </script>


<body>
    <header >
      <figure class="logo" runat="server">
      <img src="/images/HOIT_Icon.png" height="120px">

      </figure>
    </header>
	<h1>Contact Form</h1>
        <form id="form" runat="server">  
            <span>Form will automatically submit in <b id="timer">20</b> <b>seconds</b>.</span>
            <label>Name :</label>
            <input type="text" name="name" id="name" placeholder="Name" />
            <label>Email :</label>
            <input type="text" name="email" id="email" placeholder="Valid Email" />
            <label>Gender :</label>
            <input type="radio" name="gender" value="Male" id="male" />
            <label>Male</label>
            <input type="radio" name="gender" value="Female" id="female" />
            <label>Female</label>
            <label>Contact No. :</label>
            <input type="text" name="contact" id="contact" placeholder="Contact No." />
        </form> 
</body>
</html>