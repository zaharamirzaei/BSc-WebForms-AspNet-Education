<%@ Page Title="" Language="C#" MasterPageFile="~/userpanel/usermaster.master" AutoEventWireup="true" CodeFile="mydownloads.aspx.cs" Inherits="mydownloads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="card">  
         <div class="card-header"> :لیست دانلودهای من</div>
          <div class="card-body"> 
    <asp:DataList ID="DataList1" runat="server" DataKeyField="downnumber" DataSourceID="ObjectDataSource1">
        <ItemTemplate>
                         
            <asp:Label ID="postnameLabel" runat="server" Text='<%# Eval("postname") %>' /> 
               </br> 
           تاریخ:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
           <hr>
          
           
        </ItemTemplate>
    </asp:DataList>
              </div>
      </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByuseremail" TypeName="downloadTableAdapters.DldtblTableAdapter">
        <SelectParameters>
            <asp:SessionParameter Name="useremail" SessionField="useremail" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

