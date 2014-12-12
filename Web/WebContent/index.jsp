<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
	<title>Login</title>
	<% 
		String basepath = request.getContextPath()+"/";
	%>
	<meta name="keywords" content="" />
	<meta name="description" content="" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="<%=basepath %>/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/bootstrap-social.css" rel="stylesheet" type="text/css">	
	<link href="<%=basepath %>/css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="<%=basepath %>/js/jquery-1.7.1.js"></script>	
	<script type="text/javascript">
		function getUser(){
			var form = document.forms[0];
			form.action = "/Web/login/getUser";
			form.method="post";
			form.submit();
		}
		function zhuce(){
			window.location.href="/Web/login/addrequest";
		}
	</script>
</head>

<body class="templatemo-bg-image-1">
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-login-form-2" role="form" action="#" method="post">
				<div class="row">
					<div class="col-md-12">
						<h1>登陆</h1>
					</div>
				</div>
				<div class="row">
				
				
					<div class="templatemo-one-signin col-md-6">
				        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="username" class="control-label" >用户名</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-user"></i>
				            	<input type="text" class="form-control" name="userid" placeholder="">
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <label for="password" class="control-label">密码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<input type="password" class="form-control" name="userpasswd" placeholder="">
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <div class="checkbox">
				                <label>
				                  <input type="checkbox"> 记住我
				                </label>
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <input type="submit" value="登 陆" class="btn btn-warning" onclick="getUser()">
				          </div>
				        </div>
					</div>
			
					<div class="templatemo-other-signin col-md-6">
						<label class="margin-bottom-15">
							网站模板为<a rel="nofollow" href="http://lipis.github.io/bootstrap-social/">Bootstrap</a><br>
							其他账号登陆：
							
						</label>
						<a class="btn btn-block btn-social btn-facebook margin-bottom-15">
						    <i class="fa fa-facebook"></i> Facebook 登陆
						</a>
						<a class="btn btn-block btn-social btn-twitter margin-bottom-15">
						    <i class="fa fa-twitter"></i> Twitter 登陆
						</a>
						<a class="btn btn-block btn-social btn-google-plus">
						    <i class="fa fa-google-plus"></i> Google 登陆
						</a>
						  <div class="form-group">
				          <div class="col-md-12">
				          	<br>
				            <input type="button" value="注册" class="btn btn-warning" onclick="zhuce()">
				          </div>
				        </div>
					</div>   
				</div>				 	
		      </form>		      		      
		</div>
	</div>
</body>
</html>