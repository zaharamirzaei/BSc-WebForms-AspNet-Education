<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="userlist.aspx.cs" Inherits="admin_userlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="useremail" CellPadding="4" DataSourceID="ObjectDataSource1" Width="1068px">
        <Columns>
            <asp:CommandField ButtonType="Button" CancelText="لغو" EditText="ویرایش اطلاعات" ShowEditButton="True" UpdateText="تایید" />
            <asp:BoundField DataField="userID" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="useremail" HeaderText="useremail" ReadOnly="True" SortExpression="useremail" />
            <asp:BoundField DataField="userpass" HeaderText="userpass" SortExpression="userpass" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="birthdate" HeaderText="birthdate" SortExpression="birthdate" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataallusers" TypeName="usersTableAdapters.usertblTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_useremail" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userpass" Type="String" />
            <asp:Parameter Name="phone" Type="Int32" />
            <asp:Parameter Name="birthdate" Type="DateTime" />
            <asp:Parameter Name="type" Type="Int16" />
            <asp:Parameter Name="Original_useremail" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</asp:Content>

