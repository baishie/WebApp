﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenExam.aspx.cs" Inherits="WebApplication.GenExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trial Ran ni</title>
    <link rel="stylesheet" href="CSS/main.css">
</head>
    <script src="JS/main.js"></script>

    <body> 
    <header >
      <figure class="logo" runat="server">
      <img src="/images/HOIT_Icon.png" height="120px">
          <br /><br /><br /><br /><br />
      </figure>
    </header>         
        <div class="contact" runat="server">
                <form id="form1" runat="server">
                    <div class="one_col">
                        <center> <div>You have <span id="time">60:00</span> minutes!</div> </center>   
                    </div>	                    
                                 
                    <div class="one_col">
                        <asp:Button ID="Button1" runat="server" Text="Vocabulary" OnClientClick="return StartTest('Vocabulary.aspx');"/>
                    </div>	
                    
                    <div class="one_col">
                        <asp:Button ID="Button2" runat="server" Text="Mathematics" OnClientClick="return StartTest1('Math.aspx');"/>
                    </div>	        
                    
                    <div class="one_col">
                        <asp:Button ID="Button3" runat="server" Text="Communication" OnClientClick="return StartTest2('Comm.aspx');"/>
                    </div>	

                    <div class="one_col">
                        <asp:Button ID="Button4" runat="server" Text="Logic" OnClientClick="return StartTest3('Logic.aspx');"/>
                    </div>	
                                                                        			
             </form>

        </div> 
    </body>  
</html>