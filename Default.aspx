<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
		<link href="style.css" rel="stylesheet"/>
		<script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
		<script src="js/popper.min.js"></script>
        <link href="style/Style.css" rel="stylesheet" />
</head>
<body >
    <form id="form1" runat="server">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="#"></a>
				<button class="navbar-toggler "  type="button" data-toggle="collapse" data-target="#MainMenu" aria-controls="MainMenu" aria-expanded="false" aria-label="نمایش فهرست">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="MainMenu">
					<ul class="navbar-nav">
						<li class="navbar-item active ">
							<a class="nav-link" href="index.html" style="color:azure">صفحه اصلی</a>
						</li>
						<li class="navbar-item">
							<a class="nav-link" href="#" style="color:azure">تماس با ما</a>
						</li>
                        <li class="navbar-item">
							<a class="nav-link" href="#" style="color:azure">پروژه ها</a>
						</li>
                        <li class="navbar-item">
							<a class="nav-link" href="#" style="color:azure">مقالات</a>
						</li>
                         <li class="navbar-item">
							<a class="nav-link" href="#" style="color:azure">آموزش ها</a>
						</li>
					</ul>
				</div>

                <a  href="#" class="btn btn-outline-info" role="button" style="margin-left:5px;">ثبت نام</a>
                <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#loginmodal">
                    ورود
                </button>
			    <div class="modal" id="loginmodal" style="text-align:right;">
                   <div class="modal-dialog ">
				        <div class="modal-content ">
					        <div class="modal-header">
						        <h5 class="modal-title">ورود</h5>
                                <button type="button" class="close" data-dismiss="modal" >&times;</button>						        
					        </div>					
					        <div class="modal-body justify-center">
						        <div class="row">
							        <div style="margin-right:15px;">
								        <div  style="width:300px;">
									        <div class="form-group">
										        <label for="email">ایمیل:</label>
										        <input type="email" class="form-control" id="email"/>
									        </div>
									        <div class="form-group">
										        <label for="pass">رمز:</label>
										        <input type="password" class="form-control" id="pass"/>
									        </div>				  
									        <button type="submit" class="btn btn-primary btn-block">ورود</button>
								        </div>
							        </div>
						        </div>
					        </div>					
					        <div class="modal-footer" style="direction:ltr;" >
						        <button type="button" class="btn btn-warning" data-dismiss="modal" >Close</button>
					        </div>
				        </div>
			        </div>
			    </div>
			</div>
		</nav>
        <div class="container">
            <div class="jumbotron " style="margin-top:80px; text-align:right; text-shadow:4px 4px 4px gray">
                
                    <h3>به وبلاگ آموزشی ما خوش آمدید</h3>
                    <p >از یادگیری لذت ببرید</p>
               
             </div>
         </div>
       <%-- <div class="card">
            <img src="img/AI.png" class="rounded card-img-top h-75"/>

        </div>--%>
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="card mb-4">                   
                        <img src="img/AI.png" class="card-img-top"/>                   
                        <div class="card-body">
                            <div class="card-title">post title</div>
                            <p class="card-text"> about tutorial</p>
                            <a href="#" class="btn btn-info">ادامه مطلب</a>
                        </div>
                        <div class="card-footer text-muted" >
                            date of release
                        </div>
                    </div>
                    <div class="card mb-4">                   
                        <img src="img/AI.png" class="card-img-top"/>                   
                        <div class="card-body">
                            <div class="card-title">post title</div>
                            <p class="card-text"> about tutorial</p>
                            <a href="#" class="btn btn-info">ادامه مطلب</a>
                        </div>
                        <div class="card-footer text-muted" >
                            date of release
                        </div>
                    </div>
                    <div class="card mb-4">                   
                        <img  src="img/artificial-intelligence-neurons-med.jpg" class="card-img-top"/>                   
                        <div class="card-body">
                            <div class="card-title">post title</div>
                            <p class="card-text"> about tutorial</p>
                            <a href="#" class="btn btn-info">ادامه مطلب</a>
                        </div>
                        <div class="card-footer text-muted" >
                            date of release
                        </div>                  
                    </div>
                </div>
                <div class="col-md-3">
            <div class="card ">
                <h5 class="card-header">مطالب سایت</h5>
                <div class="card-body ">
                    <div class="row">
                        <ul class="list-unstyled ">
                            <li>
                                <a href="#" >آموزش ...</a>
                            </li>
                            <li>
                                <a href="#">آموزش ...</a>
                            </li>
                            <li>
                                <a href="#">آموزش ...</a>
                            </li>
                            <li>
                                <a href="#">آموزش ...</a>
                            </li>
                            <li>
                                <a href="#">آموزش ...</a>
                            </li>
                            <li>
                                <a href="#">آموزش ...</a>
                            </li>
                            <li>
                                <a href="#">آموزش ...</a>
                            </li>
                        </ul>
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
    </div>
        <div class=" bg-dark " style="height:250px;"> 
            <div class="container">
                <p ></p>
            </div>
        </div>
    </form>
</body>
</html>
