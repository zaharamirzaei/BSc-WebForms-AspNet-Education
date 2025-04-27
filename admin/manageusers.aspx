<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="manageusers.aspx.cs" Inherits="admin_manageusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="postId" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="postId" HeaderText="postId" ReadOnly="True" SortExpression="postId" />
            <asp:BoundField DataField="postname" HeaderText="postname" SortExpression="postname" />
            <asp:BoundField DataField="postdesc" HeaderText="postdesc" SortExpression="postdesc" />
            <asp:BoundField DataField="postdownloaded" HeaderText="postdownloaded" SortExpression="postdownloaded" />
            <asp:BoundField DataField="file" HeaderText="file" SortExpression="file" />
            <asp:BoundField DataField="postdate" HeaderText="postdate" SortExpression="postdate" />
            <asp:BoundField DataField="postimg" HeaderText="postimg" SortExpression="postimg" />
            <asp:BoundField DataField="postcat" HeaderText="postcat" SortExpression="postcat" />
            <asp:CheckBoxField DataField="allowed" HeaderText="allowed" SortExpression="allowed" />
            <asp:BoundField DataField="useremail" HeaderText="useremail" SortExpression="useremail" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="postId" DataSourceID="ObjectDataSource2">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="postId" HeaderText="postId" ReadOnly="True" SortExpression="postId" />
            <asp:BoundField DataField="postname" HeaderText="postname" SortExpression="postname" />
            <asp:BoundField DataField="postdesc" HeaderText="postdesc" SortExpression="postdesc" />
            <asp:BoundField DataField="postdownloaded" HeaderText="postdownloaded" SortExpression="postdownloaded" />
            <asp:BoundField DataField="file" HeaderText="file" SortExpression="file" />
            <asp:BoundField DataField="postdate" HeaderText="postdate" SortExpression="postdate" />
            <asp:BoundField DataField="postimg" HeaderText="postimg" SortExpression="postimg" />
            <asp:BoundField DataField="postcat" HeaderText="postcat" SortExpression="postcat" />
            <asp:CheckBoxField DataField="allowed" HeaderText="allowed" SortExpression="allowed" />
            <asp:BoundField DataField="useremail" HeaderText="useremail" SortExpression="useremail" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBynotallowed" TypeName="postDataSetTableAdapters.post_tblTableAdapter" UpdateMethod="Update">
        <UpdateParameters>
            <asp:Parameter Name="postname" Type="String" />
            <asp:Parameter Name="postdesc" Type="String" />
            <asp:Parameter Name="postdownloaded" Type="Int32" />
            <asp:Parameter Name="file" Type="String" />
            <asp:Parameter Name="postdate" Type="DateTime" />
            <asp:Parameter Name="postimg" Type="String" />
            <asp:Parameter Name="postcat" Type="Int32" />
            <asp:Parameter Name="allowed" Type="Boolean" />
            <asp:Parameter Name="useremail" Type="String" />
            <asp:Parameter Name="Original_postId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeletePost" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBynotallowed" TypeName="postDataSetTableAdapters.post_tblTableAdapter" UpdateMethod="UpdatePost">
        <DeleteParameters>
            <asp:Parameter Name="Original_postId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="postId" Type="Int32" />
            <asp:Parameter Name="postname" Type="String" />
            <asp:Parameter Name="postdesc" Type="String" />
            <asp:Parameter Name="postdownloaded" Type="Int32" />
            <asp:Parameter Name="file" Type="String" />
            <asp:Parameter Name="postdate" Type="DateTime" />
            <asp:Parameter Name="postimg" Type="String" />
            <asp:Parameter Name="postcat" Type="Int32" />
            <asp:Parameter Name="Original_postId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</asp:Content>

