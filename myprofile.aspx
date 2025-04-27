<%@ Page Title="" Language="C#" MasterPageFile="~/userpanel/usermaster.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="useremail" DataSourceID="ObjectDataSource2" Width="700px">
        <EditItemTemplate>
           <div class="card mb-4">
                <div class="card-header">
                   <h3> مشخصات فردی</h3>
                </div>
                <div class="card-body ">
                      <h5 class="font-weight-bold"> نام: <br /> </h5>
           <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            <br />  <hr>
          <h5 class="font-weight-bold">  آدرس ایمیل: <br /> </h5>
              <asp:TextBox ID="useremailTextBox" runat="server" Text='<%# Bind("useremail") %>' />
            <br />  <hr>
            <h5 class="font-weight-bold"> رمز ورود: <br /> </h5>
            <asp:TextBox ID="userpassTextBox" runat="server" Text='<%# Bind("userpass") %>' />
            <br />  <hr>
           <h5 class="font-weight-bold">  شماره همراه: <br /> </h5>
             <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
            <br />  <hr>
            <h5 class="font-weight-bold"> تاریخ تولد: <br /> </h5>
           <asp:TextBox ID="birthdateTextBox" runat="server" Text='<%# Bind("birthdate") %>' />
            <br />  <hr>
          
                </div>
                </div>
             <asp:LinkButton  class="btn btn-success " ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="تایید" />
            &nbsp;<asp:LinkButton  class="btn btn-danger" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="لغو" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="card mb-4">
                <div class="card-header">
                   <h3> مشخصات فردی</h3>
                </div>
                <div class="card-body ">
                      <h5 class="font-weight-bold"> نام: <br /> </h5>
           <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            <br />  <hr>
          <h5 class="font-weight-bold">  آدرس ایمیل:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="useremailTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="useremailTextBox" ErrorMessage="ایمیل را صحیح وارد نمایید" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              <br /> </h5>
              <asp:TextBox ID="useremailTextBox"  runat="server" Text='<%# Bind("useremail") %>' ValidateRequestMode="Enabled" />
            <br />  <hr>
            <h5 class="font-weight-bold"> رمز ورود: 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="userpassTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /> </h5>
            <asp:TextBox ID="userpassTextBox" runat="server" Text='<%# Bind("userpass") %>' />
            <br />  <hr>
           <h5 class="font-weight-bold">  شماره همراه: 
               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="شماره همراه نامعتبر" ForeColor="Red" ValidationExpression="(^(09|9)[1][1-9]\d{7}$)|(^(09|9)[3][12456]\d{7}$)"></asp:RegularExpressionValidator>
               <br /> </h5>
             <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' MaxLength="11" />
            <br />  <hr>
            <h5 class="font-weight-bold"> تاریخ تولد: <br /> </h5>
           <asp:TextBox ID="birthdateTextBox" runat="server" Text='<%# Bind("birthdate") %>' />
            <br />  <hr>
          
                </div>
                </div>
            <asp:LinkButton  ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="تایید" />
            &nbsp;<asp:LinkButton  ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="لغو" />
        </InsertItemTemplate>
        <ItemTemplate>
             <div class="card mb-4">
                <div class="card-header">
                   <h3> مشخصات فردی</h3>
                </div>
                <div class="card-body ">
          
          <h5 class="font-weight-bold"> نام: <br /> </h5>
            <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' />
            <br />  <hr>
          <h5 class="font-weight-bold">  آدرس ایمیل: <br /> </h5>
            <asp:Label ID="useremailLabel" runat="server" Text='<%# Eval("useremail") %>' />
            <br />  <hr>
            <h5 class="font-weight-bold"> رمز ورود: <br /> </h5>
            <asp:Label ID="userpassLabel" runat="server" Text='<%# Bind("userpass") %>' />
            <br />  <hr>
           <h5 class="font-weight-bold">  شماره همراه: <br /> </h5>
            <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
            <br />  <hr>
            <h5 class="font-weight-bold"> تاریخ تولد: <br /> </h5>
            <asp:Label ID="birthdateLabel" runat="server" Text='<%# Bind("birthdate") %>' />
            <br />  <hr>
          
                </div>
                </div>
            <asp:LinkButton class="btn btn-info" ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="ویرایش اطلاعات" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByuseremail" TypeName="usersTableAdapters.usertbl1TableAdapter" UpdateMethod="Update">
        <SelectParameters>
            <asp:SessionParameter Name="useremail" SessionField="useremail" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userpass" Type="String" />
            <asp:Parameter Name="type" Type="Int16" />
            <asp:Parameter Name="phone" Type="Int64" />
            <asp:Parameter Name="birthdate" Type="DateTime" />
            <asp:Parameter Name="Original_useremail" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
 

