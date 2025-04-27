<%@ Page Title="ارتباط با ما" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
            <link rel="stylesheet" href="css/bootstrap.min.css"/>
			<script src="js/bootstrap.min.js"></script>
           
            <style >
               
            </style>
		
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="text-align:right">
        <div  style="border:3px dotted blue; padding:3px;">
        <div class="form-group">
            <label for="conemail">
            ایمیل:<br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="conemail" ErrorMessage="*الزامی" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="conemail" ErrorMessage="ایمیل نامعتبر" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </label>
            &nbsp;<asp:TextBox class="form-control"  id="conemail" runat="server"></asp:TextBox>
           
        </div>
        <div class="form-group">
            <label for="contitle">
            موضوع:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contitle" ErrorMessage="*الزامی" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox id="contitle" class="form-control" runat="server"></asp:TextBox>
            
        </div>
        <div class="form-group">
            <label for="cmnt">
            متن:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cmnt" ErrorMessage="پیام خود را وارد کنید" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox class="form-control" rows="5" id="cmnt"  runat="server" Height="148px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br/>
            <br/>
            <asp:Button ID="btnsendcon" class="btn btn-primary" runat="server" Text="ارسال" OnClick="Button1_Click" />
            <br/>
       </div>
   </div>
    
</asp:Content>

