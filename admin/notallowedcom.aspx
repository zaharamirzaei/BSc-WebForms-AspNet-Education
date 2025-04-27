<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="notallowedcom.aspx.cs" Inherits="notallowedcom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="comid" DataSourceID="ObjectDataSource2">
        <Columns>
            <asp:CommandField ButtonType="Button" CancelText="لغو" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" ShowEditButton="True" UpdateText="تایید" />
            <asp:BoundField DataField="comid" HeaderText="کد نظر" InsertVisible="False" ReadOnly="True" SortExpression="comid" />
            <asp:BoundField DataField="comdate" HeaderText="تاریخ" SortExpression="comdate" />
            <asp:BoundField DataField="postid" HeaderText="کد مطلب" SortExpression="postid" />
            <asp:BoundField DataField="comtext" HeaderText="متن" SortExpression="comtext" />
            <asp:BoundField DataField="comemail" HeaderText="ایمیل ارسال کننده" SortExpression="comemail" />
            <asp:CheckBoxField DataField="approved" HeaderText="وضعیت تایید" SortExpression="approved" />
            <asp:BoundField DataField="comname" HeaderText="نام ارسال کننده" SortExpression="comname" />
        </Columns>
        <EmptyDataTemplate>
            نظر تایید نشده ای وجود ندارد
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatacommentByapprove" TypeName="commentDataSetTableAdapters.commenttblTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_comid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="postid" Type="Int32" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="approved" Type="Boolean" />
            <asp:Parameter Name="comname" Type="String" />
            <asp:Parameter Name="Original_comid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

