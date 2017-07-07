<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebApplication.Main" %>

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

      </figure>
    </header>
	<h1>Contact Form</h1>
    <div class="contact" runat="server" >
            <form id="form" runat="server" onsubmit="return checkForm(this);">  
			    <div class="one_col">
                    <asp:TextBox ID="name" placeholder="Name" runat="server" required="required"></asp:TextBox>
			    </div>	
			    <div class="one_col">
                    <asp:TextBox ID="address" placeholder="Address" runat="server" required="required"></asp:TextBox>
			    </div>				
			    <div class="one_col email">
                    <asp:TextBox ID="email" placeholder="Email" runat="server" required="required"></asp:TextBox>
			    </div>	
			    <div class="one_col">
                    <asp:TextBox ID="cnumber" onkeypress="return isNumberKey(event)" placeholder="Contact Number" runat="server" required="required"></asp:TextBox>
			    </div>	
			    <div class="one_col">
                    <asp:TextBox ID="bday" placeholder="Birthday" runat="server" required="required"></asp:TextBox>
			    </div>									
			    <div class="three_col">
                    <asp:DropDownList ID="PositionList" Width="460px" Height="45px" runat="server"  >
                        <asp:ListItem Value="0">Position</asp:ListItem>
                        <asp:ListItem Value="1">Fiber Technician</asp:ListItem>
                        <asp:ListItem Value="2">System Administrator</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="Source" Width="460px" Height="45px" runat="server" r >
                        <asp:ListItem Value="0">Source</asp:ListItem>
                    </asp:DropDownList>    	
			    </div>

                <div class="one_col">
                    <asp:Button ID="proceed" runat="server" Text="Proceed" OnClick="proceed_Click"/>
                </div>				
         </form>

    </div>
</body>
</html>
