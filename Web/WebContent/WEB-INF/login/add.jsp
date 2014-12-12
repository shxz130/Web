<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
	<title>注册用户</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<% 
		String basepath = request.getContextPath()+"/";
	%>
	<link href="<%=basepath %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="<%=basepath %>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>//js/jquery-1.7.1.js"></script>
	<script type="text/javascript">
		function config(){
			if(!$("#userpasswd").val()==$("#userpasswdcfg").val()){
				alert("密码不匹配");
			}
		}
	</script>
</head>
<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">注册</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" action="/Web/login/addUser" method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">用户名</label>
			            <input type="text" class="form-control" name="userid" placeholder="">		            		            		            
			          </div>  
			       
			     
			           <div class="col-md-6 templatemo-radio-group">
			          		<label class="radio-inline">
		          				<input type="radio" name="xingbie" id="optionsRadios1" value="男"> 男
		          			</label>
		          			<label class="radio-inline">
		          				<input type="radio" name="xingbie" id="optionsRadios2" value="女"> 女
		          			</label>
			          </div>  
			        </div>
			       <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">电话号码</label>
			            <input type="text" class="form-control" name="dianhuahaoma" placeholder="">		            		            		            
			          </div>              
			        </div>	
			        
			         <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">邮箱地址</label>
			            	<input type="email" class="form-control" name="youxiangdizhi" placeholder="">
			         	 </div>
			          </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">密码</label>
			            <input type="password" class="form-control" id="userpasswd" name="userpasswd" placeholder="">
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">密码确认</label>
			            <input type="password" class="form-control" id="userpasswdcfg" name="userpasswdcfg" onblur="config()" placeholder="">
			          </div>
			        </div>
			         <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" value="注册" class="btn btn-info">
			            <a href="/Web/login/index" class="pull-right">登陆</a>
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
</body>
</html>