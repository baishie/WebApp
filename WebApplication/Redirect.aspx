<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirect.aspx.cs" Inherits="WebApplication.Redirect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trial Ran ni</title>
    <link rel="stylesheet" href="CSS/main.css">
</head>
    <script src="JS/Exam.js"></script>
    <body>  
        <div class="contact" runat="server">
                <form id="form1" runat="server">
                    <div class="one_col">
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="text-align: center">You are given 1 hour to finish this exam. </asp:TextBox>
                    </div>	

                    <div class="one_col">
                        <asp:Button ID="proceed" runat="server" Text="Start Test" OnClientClick="return StartTest('GenExam.aspx');"/>
                    </div>				
             </form>

        </div> 
    </body>  
</html>