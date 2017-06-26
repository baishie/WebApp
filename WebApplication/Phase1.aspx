<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phase1.aspx.cs" Inherits="WebApplication.Phase1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page 2 ni</title>
    <link rel="stylesheet" href="CSS/main.css">
</head>
<body>
    <header >
      <figure class="logo" runat="server">
      <img src="/images/HOIT_Icon.png" height="120px">
      </figure>
    </header>
    <h1>First Phase</h1>
    <div class="contact" runat="server">
            <form id="form1" runat="server">
               <div class="one_col">
                    <asp:Button ID="TypeTest" runat="server" Text="Typing Test"  OnClick="proceed_TypeTest"  OnClientClick="window.open('https://10fastfingers.com/typing-test/english')"/>
                </div>	
                <div class="one_col">
                    <asp:Button ID="EnglishTest" runat="server" Text="English Reading Test" OnClick="proceed_ReadTest" OnClientClick="window.open('https://www.englishclub.com/reading/test.htm')"/>
                </div>               
                <div class="one_col">
                    <asp:Button ID="PersonalityTest" runat="server" Text="Personality Test" OnClick="proceed_PersonalTest" OnClientClick="window.open('http://www.humanmetrics.com/cgi-win/jtypes2.asp')"/>
                </div>                 					
         </form>
    </div>
</body>
</html>

