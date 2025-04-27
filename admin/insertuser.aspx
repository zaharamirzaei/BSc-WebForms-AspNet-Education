<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="insertuser.aspx.cs" Inherits="admin_insertuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                نوع کاربر<br/>
         <asp:DropDownList ID="DropDownList1" runat="server">
             <asp:ListItem Text="کاربرعادی" Value="1"></asp:ListItem>
             <asp:ListItem Text="کاربر مدیر" Value="2"></asp:ListItem>
                </asp:DropDownList>
         <br/>
         <br/>
        <asp:Button ID="insertbtn" class="btn btn-primary btn-block" runat="server" Text="افزودن عضو" OnClick="insertbtn_Click"></asp:Button>
         <br/>
		<p runat="server" id="msg" style="color:blue; text-align:center" ></p>		
      <a runat="server" id="login" style="color:blue; font-family:'B Nazanin'" href="login.aspx"></a> 
    </div>
    </center>
</asp:Content>

