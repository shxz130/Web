<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function addUser(){
		var form = document.forms[0];
		form.action = "/Web/jiben/add";
		form.method="post";
		form.submit();
	}
</script>
</head>
<body>
	<h1>添加基本信息</h1>
	<form action="" name="userForm">
		姓名：<input type="text" name="xingming" ><br>
		年龄：<input type="text" name="nianling" ><br>
		性别：<input type="text" name="xingbie" ><br>
		身份证号：<input type="text" name="shenfenzhenghao" ><br>
		籍贯：<input type="text" name="jiguan" ><br>
		民族：<input type="text" name="mingzu" ><br>
		生源地：<input type="text" name="shengyuandi" ><br>
		<input type="button" value="添加" onclick="addUser()">
	</form>
</body>
</html>