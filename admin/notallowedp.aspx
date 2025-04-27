<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="notallowedp.aspx.cs" Inherits="admin_notallowedp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <ul class="nav nav-pills nav-justified">
			<li class="nav-item">
				<a href="postlist.aspx" class="nav-link " >لیست همه ی مطالب</a>
			</li>
         <li class="nav-item">
				<a href="allowedp.aspx" class="nav-link ">لیست مطالب تایید شده</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link  active">لیست مطالب تایید نشده</a>
			</li>			
		</ul>
    <hr>
      <div class="row" style="padding:10px;">
            <div class="col-md-3" style="border:2px dotted black;padding:15px; ">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="postId" DataSourceID="ObjectDataSource1">
                    <ItemTemplate>                                    
                      <a href="<%# Eval("postid","notallowedp.aspx?postid={0}") %>">  <asp:Label ID="postnameLabel" runat="server" Text='<%# Eval("postname") %>' /></a>                   
                        <hr>                                       
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBynotallowed" TypeName="postDataSetTableAdapters.post_tblTableAdapter"></asp:ObjectDataSource>
            </div>
            <div class="col-md-9">

                <asp:DataList ID="DataList2" runat="server" DataKeyField="postId" DataSourceID="ObjectDataSource2">
                    <ItemTemplate>
                            <div class="card mb-4">                   
                        <img src="<%# Eval("postimg","../img/{0}") %>" class="card-img-top"/>                   
                        <div class="card-body">
                            <div class="card-title"><h2><%# Eval("postname") %></h2> </div>
                            
                            <p class="card-text"><%# Eval("postdesc") %></p>
                          <br/>                                            
                        </div>
                        <div class="card-footer " >
                            تاریخ آپلود:  <%# Eval("postdate") %>
                            <br/>
                            
                            ایمیل کاربر:<%# Eval("useremail") %><br/>وضعیت تایید:<%# Eval("allowed") %></div>
                  <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="تایید پست" OnClick="Button1_Click" />
               </div>   
                       
                    </ItemTemplate>
                </asp:DataList>
               
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="DeletePost" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatapostBypostId" TypeName="postDataSetTableAdapters.post_tblTableAdapter" UpdateMethod="UpdatePost">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_postId" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="postId" QueryStringField="postid" Type="Int32" />
                    </SelectParameters>
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

            </div>
      </div>
</asp:Content>

