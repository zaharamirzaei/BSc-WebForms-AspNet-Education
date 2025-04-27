<%@ Page title="ثبت نام" Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
    <form id="form1" runat="server">
        <div class="container" style="direction:rtl;">
       <center>
     <div style="width:400px;  text-align:right;  margin-top:50px;">
                <div class="form-group">
					<label for="name">نام:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox class="form-control" id="name"  runat="server"></asp:TextBox>
                   
				</div>
				<div class="form-group">
					<label for="email">ایمیل:</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="لطفا ایمیل را بررسی نمایید" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:TextBox class="form-control" id="email"  runat="server"></asp:TextBox>
                     
					
				</div>
				<div class="form-group">
					<label for="pass">رمز:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:TextBox class="form-control" ID="pass" runat="server"></asp:TextBox>
					
				</div>
               <div class="form-group">
					<label for="pass">تکرار رمز:</label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="pass2" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="رمز را بررسی کنید" ControlToCompare="pass" ControlToValidate="pass2" ForeColor="Red"></asp:CompareValidator>
                   
                   <asp:TextBox class="form-control" ID="pass2" runat="server"></asp:TextBox>
				
				</div>
			<%--	<div class="form-check" style="padding:5px;" >
					 <label class="form-check-label" >
                          مرا بخاطر بسپار!!
						<input class="form-check-input" type="checkbox" style="margin-left:10px;"/>                  
                        
					 </label>
				</div>--%>
             <br/>
         <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="ثبت نام" OnClick="register_Click"></asp:Button>
         <br/>
		<p runat="server" id="msg" style="color:blue; text-align:center" ></p>		
      <a runat="server" id="login" style="color:blue; font-family:'B Nazanin'" href="login.aspx"></a> 
    </div>
    </center>
    </div>
    </form>
</body>
</html>
