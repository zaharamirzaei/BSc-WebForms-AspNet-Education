<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
		<link href="style.css" rel="stylesheet"/>
		<script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
		<script src="js/popper.min.js"></script>
       
</head>
<body>
    <form id="form1" runat="server" >
    <div class="container" style="direction:rtl;">
        <center>
     <div style="width:400px;  text-align:right;  margin-top:50px;">
				<div class="form-group">
					<label for="email">ایمیل:</label>
                    <asp:TextBox type="email" class="form-control" id="email" runat="server"></asp:TextBox>
					
				</div>
				<div class="form-group">
					<label for="pass">رمز:</label>
                    <asp:TextBox type="password" class="form-control" id="pass" runat="server"></asp:TextBox>
					
				</div>
			<%--	<div class="form-check" style="padding:5px;" >
					 <label class="form-check-label" >
                          مرا بخاطر بسپار!!
						<input class="form-check-input" type="checkbox" style="margin-left:10px;"/>                  
                        
					 </label>
				</div>--%>
             <br/>
				<asp:Button type="submit" class="btn btn-primary btn-block" ID="loginbtn" runat="server" Text="ورود" OnClick="loginbtn_Click"></asp:Button>
         <br/>
         <div style="text-align:center;">
             <a href="register.aspx" style="text-align:center;">عضو سایت نیستی؟ برای عضویت کلیک کنید</a>
             <br/>
             <br/>
          <asp:Label ID="Label1" runat="server" ForeColor="Red" BorderStyle="Dotted" BackColor="White" BorderColor="#FFCCCC"></asp:Label>
             </div>
    </div>
    </center>
    </div>
    </form>
</body>
</html>
