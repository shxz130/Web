<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function addBiYeSheng(){
		var form = document.forms[0];
		form.action = "/Web/biyesheng/add";
		form.method="post";
		form.submit();
	}
</script>
</head>
<body>
	<form action="" name="userForm">
	<h1>添加基本信息</h1>
		姓名：<input type="text" name="xingming" ><br>
		年龄：<input type="text" name="nianling" ><br>
		性别：<input type="text" name="xingbie" ><br>
		身份证号：<input type="text" name="shenfenzhenghao" ><br>
		籍贯：<input type="text" name="jiguan" ><br>
		民族：<input type="text" name="mingzu" ><br>
		生源地：<input type="text" name="shengyuandi" ><br>
	<h1>添加基本信息</h1>
		学校：<input type="text" name="xuexiao" ><br>
		专业：<input type="text" name="zhuanye" ><br>
		班级：<input type="text" name="banji" ><br>
		学号：<input type="text" name="xuehao" ><br>
	<h1>添加毕业信息</h1>
		毕业证号：<input type="text" name="biyezhenghao" ><br>
		学位证号：<input type="text" name="xueweihao" ><br>
		学位：<input type="text" name="xuewei" ><br>
		毕业时间：<input type="text" name="biyeshijian" ><br>
		
		<input type="button" value="添加" onclick="addBiYeSheng()">
	</form>
</body>
</html>