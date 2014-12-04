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
		form.action = "/Web/xueji/add";
		form.method="post";
		form.submit();
	}
</script>
</head>
<body>
	<h1>添加基本信息</h1>
	<form action="" name="userForm">
		学校：<input type="text" name="xuexiao" ><br>
		专业：<input type="text" name="zhuanye" ><br>
		班级：<input type="text" name="banji" ><br>
		学号：<input type="text" name="xuehao" ><br>
		<input type="button" value="添加" onclick="addUser()">
	</form>
</body>
</html>