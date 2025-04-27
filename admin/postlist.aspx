<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="postlist.aspx.cs" Inherits="admin_postlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ul class="nav nav-pills nav-justified">
			<li class="nav-item">
				<a href="#" class="nav-link active">لیست همه ی مطالب</a>
			</li>
        <li class="nav-item">
				<a href="allowedp.aspx" class="nav-link">لیست مطالب تایید شده</a>
			</li>
			<li class="nav-item">
				<a href="notallowedp.aspx" class="nav-link">لیست مطالب تایید نشده</a>
			</li>
        
			
		</ul>
    <hr>		
     <div class="row">
         <div class="col-md-3">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="postId" DataSourceID="ObjectDataSource1">
        <ItemTemplate>
           
           <a href="<%# Eval("postid","postlist.aspx?postid={0}") %>">   <asp:Label ID="postnameLabel" runat="server" Text='<%# Eval("postname") %>' />   </a>
          <hr>
        </ItemTemplate>
    </asp:DataList>
         </div>
         <div class="col-md-9" id="showpost" >
    
            
             
             <asp:DataList ID="DataList2" runat="server" DataKeyField="postId" DataSourceID="ObjectDataSource2">
                 <ItemTemplate>
                      <div class="card mb-4">                   
                        <img src="<%# Eval("postimg","../img/{0}") %>" class="card-img-top"/>                   
                        <div class="card-body">
                            <div class="card-title"><h2><%# Eval("postname") %></h2> </div>
                            
                            <p class="card-text"><%# Eval("postdesc") %></p>                                           
                        </div>
                        <div class="card-footer " >
                            تاریخ انتشار:  <%# Eval("postdate") %>
                            <br/>
                            تعداد دانلود :  <%# Eval("postdownloaded") %>
                            <br/>
                            ایمیل منتشرکننده:<%# Eval("useremail") %><br/>وضعیت تایید:<%# Eval("allowed") %></div>             
               </div>                  
<br />
                    
<br />
                   
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeletePost" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllpost" TypeName="postDataSetTableAdapters.post_tblTableAdapter">
        <DeleteParameters>
            <asp:Parameter Name="Original_postId" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource   >
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="postId" DataSourceID="ObjectDataSource3">
                 <Columns>
                     <asp:CommandField ButtonType="Button" CancelText="لغو" DeleteText="حذف" EditText="ویرایش" ShowDeleteButton="True" ShowEditButton="True" UpdateText="تایید" />
                     <asp:BoundField DataField="postname" HeaderText="نام" SortExpression="postname" />
                     <asp:BoundField DataField="postdesc" HeaderText="توضیحات" SortExpression="postdesc" />
                     <asp:BoundField DataField="postdownloaded" HeaderText="تعداد دانلودها" SortExpression="postdownloaded" />
                     <asp:BoundField DataField="file" HeaderText="فایل" SortExpression="file" />
                     <asp:BoundField DataField="postdate" HeaderText="تاریخ انتشار" SortExpression="postdate" />
                     <asp:BoundField DataField="postimg" HeaderText="تصویر" SortExpression="postimg" />
                     <asp:BoundField DataField="postcat" HeaderText="نوع" SortExpression="postcat" />
                     <asp:CheckBoxField DataField="allowed" HeaderText="وضعیت تایید" SortExpression="allowed" />
                     <asp:BoundField DataField="useremail" HeaderText="ایمیل کاربر" SortExpression="useremail" />
                 </Columns>
             </asp:GridView>


             
             <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatapostBypostId" TypeName="postDataSetTableAdapters.post_tblTableAdapter" UpdateMethod="Update">
                 <DeleteParameters>
                     <asp:Parameter Name="Original_postId" Type="Int32" />
                 </DeleteParameters>
                 <SelectParameters>
                     <asp:QueryStringParameter Name="postId" QueryStringField="postid" Type="Int32" />
                 </SelectParameters>
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


</asp:Content>

