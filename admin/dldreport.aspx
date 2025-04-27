<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="dldreport.aspx.cs" Inherits="admin_dldreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="downnumber" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="downnumber" HeaderText="شماره دانلود" InsertVisible="False" ReadOnly="True" SortExpression="downnumber" />
            <asp:BoundField DataField="postid" HeaderText="کدمطلب" SortExpression="postid" />
            <asp:BoundField DataField="useremail" HeaderText="ایمیل کاربر" SortExpression="useremail" />
            <asp:BoundField DataField="date" HeaderText="تاریخ" SortExpression="date" />
            <asp:BoundField DataField="postname" HeaderText="نام مطلب" SortExpression="postname" />
        </Columns>
        <EmptyDataTemplate>
            گزارشی برای نمایش وجود ندارد
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataalldld" TypeName="downloadTableAdapters.DldtblTableAdapter"></asp:ObjectDataSource>

</asp:Content>

