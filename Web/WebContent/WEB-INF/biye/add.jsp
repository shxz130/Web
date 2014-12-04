<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function addBiYe(){
		var form = document.forms[0];
		form.action = "/Web/biye/add";
		form.method="post";
		form.submit();
	}
</script>
</head>
<body>
	<h1>添加基本信息</h1>
	<form action="" name="userForm">
		毕业证号：<input type="text" name="biyezhenghao" ><br>
		学位证号：<input type="text" name="xueweihao" ><br>
		学位：<input type="text" name="xuewei" ><br>
		毕业时间：<input type="text" name="biyeshijian" ><br>
		<input type="button" value="添加" onclick="addBiYe()">
	</form>
</body>
</html>