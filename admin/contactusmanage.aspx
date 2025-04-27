<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="contactusmanage.aspx.cs" Inherits="admin_comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="contactid" DataSourceID="ObjectDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" CssClass="auto-style1" Width="1131px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" DeleteText="حذف" >
            <HeaderStyle BackColor="#993333" />
            </asp:CommandField>
            <asp:BoundField DataField="contactid" HeaderText="شماره نظر" InsertVisible="False" ReadOnly="True" SortExpression="contactid" >
            <FooterStyle BorderStyle="Solid" />
            <HeaderStyle BackColor="#993333" />
            </asp:BoundField>
            <asp:BoundField DataField="conemail" HeaderText="ایمیل" SortExpression="conemail" >
            <HeaderStyle BackColor="#993333" />
            </asp:BoundField>
            <asp:BoundField DataField="contitle" HeaderText="موضوع" SortExpression="contitle" >
            <HeaderStyle BackColor="#993333" />
            </asp:BoundField>
            <asp:BoundField DataField="condate" HeaderText="تاریخ" SortExpression="condate" >
            <HeaderStyle BackColor="#993333" />
            </asp:BoundField>
            <asp:BoundField DataField="context" HeaderText="متن" SortExpression="context" >
            <HeaderStyle BackColor="#993333" />
            </asp:BoundField>
        </Columns>
        <EmptyDataTemplate>
            پیشنهادی برای نمایش وجود ندارد
        </EmptyDataTemplate>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Deletecontact" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataallcontact" TypeName="contactusDataSetTableAdapters.contactus_tblTableAdapter">
        <DeleteParameters>
            <asp:Parameter Name="Original_contactid" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource>

</asp:Content>

