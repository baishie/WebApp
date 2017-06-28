<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenExam.aspx.cs" Inherits="WebApplication.GenExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trial Ran ni</title>
    <link rel="stylesheet" href="CSS/main.css">
</head>
<body>
    <header >
      <figure class="logo" runat="server">
      <img src="/images/HOIT_Icon.png" height="120px">

      </figure>
    </header>
    <div class="contact" runat="server">
        <form id="form1" runat="server">
        <div class="one_col">
            <asp:Button ID="takeExam" runat="server" Text="General Exam" OnClick="proceed_exam"/>
        </div>	
        </form>
    </div>
</body>
</html