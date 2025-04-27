<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="first.aspx.cs" Inherits="first" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" DataKeyField="postId" DataSourceID="ObjectDataSource2">
        <ItemTemplate>
            <div class="card mb-4">                   
                        <img src="<%# Eval("postimg","img/{0}") %>" class="card-img-top"/>                   
                        <div class="card-body">
                            <div class="card-title"><h2><%# Eval("postname") %></h2> </div>
                              <br />
                               <a href="<%# Eval("postid","showpost.aspx?postid={0}") %>" class="btn btn-info" >ادامه مطلب</a>
                        </div>
                        <div class="card-footer text-muted" >
                            date of release:<%# Eval("postdate") %></div>
               </div>    
                <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByallowed" TypeName="postDataSetTableAdapters.post_tblTableAdapter"></asp:ObjectDataSource>
    </asp:Content>

