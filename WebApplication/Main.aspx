﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebApplication.Main" %>

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
	<h1>Contact Form</h1>
    <div class="contact" runat="server" method="Post">
            <form id="form1" runat="server">
			    <div class="three_col">
				    <input type="text" name="fname" id = "fname" placeholder="First Name" class="default" msg="Error for First name" runat="server" >
				    <input type="text" name="lname" id = "lname" placeholder="Last Name" class="default" msg="Error for Last name" runat="server" >
				    <input type="text" name="mi" placeholder="MI" id = "mi" class="default" msg="Error for Middle Initial" style="width:158px;" >			
			    </div>
			    <div class="one_col">
				    <input type="text" name="address" id="address" placeholder="Address" class="default">
			    </div>				
			    <div class="one_col email">
				    <input type="text" name="email" id="email" placeholder="Email Address" class="default" msg="Please enter a valid email">
				    <span class="error"></span>
			    </div>	
			    <div class="one_col">
				    <input type="number" name="cnumber" id="cnumber" placeholder="Contact Number" class="default">
			    </div>	
			    <div class="one_col">
				    <input type="text" name="bday" id="bday" placeholder="Birthday" class="default">
			    </div>									
			    <div class="three_col">
                    <asp:DropDownList ID="PositionList" Width="460px" Height="45px" runat="server">
                        <asp:ListItem Value="0">Position</asp:ListItem>
                        <asp:ListItem Value="1">Fiber Technician</asp:ListItem>
                        <asp:ListItem Value="2">System Administrator</asp:ListItem>
                    </asp:DropDownList>
                    <input type="text" name="source" id="source" placeholder="Source" class="default" style="width:460px;">				    	
			    </div>

                <div class="one_col">
                    <asp:Button ID="proceed" runat="server" Text="Proceed" OnClick="proceed_Click" />
                </div>				
         </form>

    </div>
    <script src="JS/main.js"></script>
</body>
</html>

