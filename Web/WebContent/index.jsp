<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-1.7.1.js"></script>
<script type="text/javascript">
	function addUser(){
		var form = document.forms[0];
		form.action = "/Web/login/addUser";
		form.method="post";
		form.submit();
	}
	function getUser(){
		var form = document.forms[1];
		form.action = "/Web/login/getUser";
		form.method="post";
		form.submit();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h5><a href="/Web/user/getAllUser">进入用户管理页</a></h5>
	<form action="" name="userForm">
		Id：<input type="text" name="userid">
		密码：<input type="password" name="userpasswd">
		确认密码：<input type="password" name="userpasswdcfg">
		<input type="button" value="添加" onclick="addUser()">
	</form>
	<form action="" name="userForm">
		Id：<input type="text" name="userid">
		密码：<input type="password" name="userpasswd">
		<input type="button" value="登陆" onclick="getUser()">
	</form>
	<a href="/Web/login/getAllUser">点我</a>
</body>
</html>