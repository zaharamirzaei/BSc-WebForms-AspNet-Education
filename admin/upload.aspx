<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="admin_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
                .auto-style1 {
                    margin-right: 0px;
                }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                                <asp:Button ID="uploadbtn" class="btn btn-primary" runat="server" Text="بارگزاری فایل" OnClick="uploadbtn_Click"  />
                                <asp:Button ID="cancel" class="btn btn-danger" runat="server" Text="انصراف" />  

			                </div>
                         </div>
</asp:Content>

