<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/j query.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   	<div id="accordion" style="text-align:center; text-emphasis-color:black;">
			<div class="card">
				<div class="card-header">
					<h5><a href="#Section1" class="card-link" data-toggle="collapse" data-toggle="tooltip" title="کلیک کنید" style=" color:darkblue">مدیریت کاربران سایت</a></h5>
				</div>
				<div id="Section1" class="collapse" data-parent="#accordion">
					<div class="card-body">
                        <a href="userlist.aspx">لیست اعضاء </a> 
                        <hr>    
                         <a href="insertuser.aspx">افزودن عضو جدید </a> 
                        <hr>                    
					</div>
				</div>                
			</div>
			<div class="card">
				<div class="card-header">
				<h5>	<a href="#Section2" class="card-link" data-toggle="collapse" style="color:darkblue"">مدیریت مطالب سایت</a></h5>
				</div>
				<div id="Section2" class="collapse" data-parent="#accordion">
					<div class="card-body">
						 <a href="postlist.aspx"> لیست مطالب ،حذف و ویرایش </a>     
                        <hr> 
                         <a href="upload.aspx">آپلود مطلب جدید </a> 
                                              
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<h5><a  href="contactusmanage.aspx" class="card-link" style=" color:darkblue" >مشاهده پیشنهادات</a></h5>
				</div>				
			</div>
          <%-- <div class="card">
				<div class="card-header">
					<a  href="dldreport.aspx" class="card-link" >گزارش دانلودها</a>
				</div>				
			</div>--%>
			<div class="card">
				<div class="card-header">
				<h5>	<a href="#Section4" class="card-link" data-toggle="collapse" style=" color:darkblue">مدیریت نظرات</a></h5>
				</div>
				<div id="Section4" class="collapse" data-parent="#accordion">
					<div class="card-body">
						<a href="managecomment.aspx"> همه ی نظرات </a> 
                        <hr>
                        <a href="notallowedcom.aspx"> نظرات تایید نشده </a> 
					</div>
				</div>
			</div>
		</div>
</asp:Content>

