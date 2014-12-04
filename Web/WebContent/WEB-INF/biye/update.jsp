<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-1.7.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
</head>
<body>
	<h1>编辑用户</h1>
	<form action="/Web/biye/update"  method="post">
		<input type="hidden" name="biyeid" value="${biye.biyeid}" >
		学校：<input type="text" name="biyezhenghao" value="${biye.biyezhenghao}"><br>
		专业：<input type="text" name="xueweihao" value="${biye.xueweihao}"><br>
		班级：<input type="text" name="xuewei" value="${biye.xuewei}"><br>
		学号：<input type="text" name="biyeshijian" value="${biye.biyeshijian}"><br>
		<input type="submit" value="修改">
	</form>	
</body>
</html>