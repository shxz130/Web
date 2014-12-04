<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-1.7.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>编辑用户</h1>
	<form action="/Web/jiben/update" name="userForm" method="post">
		<input type="hidden" name="jibenid" value="${jiben.jibenid}" >
		姓名：<input type="text" name="xingming" value="${jiben.xingming}"><br>
		年龄：<input type="text" name="nianling" value="${jiben.nianling}"><br>
		性别：<input type="text" name="xingbie" value="${jiben.xingbie}"><br>
		身份证号：<input type="text" name="shenfenzhenghao" value="${jiben.shenfenzhenghao}"><br>
		籍贯：<input type="text" name="jiguan" value="${jiben.jiguan}"><br>
		民族：<input type="text" name="mingzu" value="${jiben.mingzu}"><br>
		生源地：<input type="text" name="shengyuandi" value="${jiben.shengyuandi}"><br>
		<input type="submit" value="修改">
	</form>
</body>
</html>