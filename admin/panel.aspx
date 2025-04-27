<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="admin_adminpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    	    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
			<script src="../js/jquery.min.js"></script>
			<script src="../js/popper.min.js"></script>
			<script src="../js/bootstrap.min.js"></script>
            <style type="text/css">
                .auto-style1 {
                    margin-right: 0px;
                }
            </style>
            </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div style="margin-top:10px;">
            <ul class="nav nav-pills nav-justified">
			        <li class="nav-item">
				        <a href="#home1" class="nav-link active" data-toggle="pill">پیشنهادات</a>
			        </li>
			        <li class="nav-item">
				        <a href="#blog1" class="nav-link" data-toggle="pill">نظرات کاربران</a>
			        </li>
			        <li class="nav-item">
				        <a href="#shop1" class="nav-link" data-toggle="pill">آپلود </a>
			        </li>
			        <li class="nav-item">
				        <a href="#profile1" class="nav-link" data-toggle="pill">اطلاعات کاربران</a>
			        </li>
			        <li class="nav-item">
				        <a href="#content1" class="nav-link" data-toggle="pill">مطالب سایت</a>
			        </li>
		        </ul>
		        <div class="tab-content">
			        <div role="tabpanel" class="tab-pane fade active" id="home1" dir="auto" style="height: 1494px; padding-top:15px;"> 

			            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" DataKeyNames="contactid" DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None" >
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:BoundField DataField="contactid" HeaderText="شماره " InsertVisible="False" ReadOnly="True" SortExpression="contactid" />
                                <asp:BoundField DataField="conemail" HeaderText="ایمیل" SortExpression="conemail" />
                                <asp:BoundField DataField="contitle" HeaderText="موضوع" SortExpression="contitle" />
                                <asp:BoundField DataField="condate" HeaderText="تاریخ" SortExpression="condate" />
                                <asp:BoundField DataField="context" HeaderText="متن" SortExpression="context" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Deletecontact" InsertMethod="Insertcontact" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataallcontact" TypeName="contactusDataSetTableAdapters.contactus_tblTableAdapter">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_contactid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="conemail" Type="String" />
                                <asp:Parameter Name="contitle" Type="String" />
                                <asp:Parameter Name="condate" Type="DateTime" />
                                <asp:Parameter Name="context" Type="String" />
                            </InsertParameters>
                        </asp:ObjectDataSource>

			        </div>
			        <div role="tabpanel" class="tab-pane fade active" id="blog1">Blog Posts Pills

			        </div>
			        <div role="tabpanel" class="tab-pane fade active" id="shop1" style="direction:rtl; text-align:right;">
                        <div>
                            <div class="form-group">
                                <label for="titlepost">
                                عنوان مطلب:</label>
                                <asp:TextBox class="form-control" id="titlepost" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="decpost">
                                توضیحات:</label>
                                <asp:TextBox id="decpost" class="form-control" runat="server" Height="166px" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="form-group">
				                <label for="">نوع مطلب:</label>
                                
                                <asp:DropDownList class="form-control" ID="catid_txt" runat="server" DataSourceID="ObjectDataSource1" DataTextField="catname" DataValueField="catId"></asp:DropDownList>				                
			                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataallcategory" TypeName="DataSetTableAdapters.category_tblTableAdapter"></asp:ObjectDataSource>
			                </div>
                            <div class="form-group">
				                <label for="">انتخاب تصویر</label>
                                <asp:FileUpload class="form-control" ID="imgUpload" runat="server" /> 			                
			                </div>
                            
                            <div class="form-group">
				                <label for="">انتخاب فایل</label>
                                <asp:FileUpload class="form-control" ID="FileUpload" runat="server" /> 			                
			                </div>
                            <div class="form-group">
                                <asp:Button ID="uploadbtn" class="btn btn-primary" runat="server" Text="بارگزاری فایل" OnClick="uploadbtn_Click" />
                                <asp:Button ID="cancel" class="btn btn-danger" runat="server" Text="انصراف" OnClick="cancel_Click" />  

			                </div>
                         </div>
			        </div>
			        <div role="tabpanel" class="tab-pane fade active" id="profile1">Your Profile Pills

			        </div>
			        <div role="tabpanel" class="tab-pane fade active" id="content1">
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="postId" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None" Height="589px" Width="896px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
			            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllpost" TypeName="postDataSetTableAdapters.post_tblTableAdapter" UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_postId" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
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
          </div>
    
    </div>
</asp:Content>

