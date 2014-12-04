<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
</head>
<body>
<form action="/Web/login/updateUser" method="post">
<input type="hidden" name="zhuceid" value="${user.zhuceid}">
用户名<input type="text" value="${user.userid}" name="userid" readonly="readonly">
	密码<input type="password" name="userpasswd">
	密码确认<input type="password" name="userpasswdcfg">
	<input type="submit">
</form>
</body>
</html>