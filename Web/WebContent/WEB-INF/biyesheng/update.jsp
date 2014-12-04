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
	<form action="/Web/biyesheng/update"  method="post">
	
		<input type="hidden" name="biyeshengid" value="${biyesheng.biyeshengid}" >
		<input type="hidden" name="dengjiriqi" value="${biyesheng.dengjiriqi}" >
		
		<input type="hidden" name="jibenid" value="${biyesheng.jiBenXinXi.jibenid}" >
		姓名：<input type="text" name="xingming" value="${biyesheng.jiBenXinXi.xingming}"><br>
		年龄：<input type="text" name="nianling" value="${biyesheng.jiBenXinXi.nianling}"><br>
		性别：<input type="text" name="xingbie" value="${biyesheng.jiBenXinXi.xingbie}"><br>
		身份证号：<input type="text" name="shenfenzhenghao" value="${biyesheng.jiBenXinXi.shenfenzhenghao}"><br>
		籍贯：<input type="text" name="jiguan" value="${biyesheng.jiBenXinXi.jiguan}"><br>
		民族：<input type="text" name="mingzu" value="${biyesheng.jiBenXinXi.mingzu}"><br>
		生源地：<input type="text" name="shengyuandi" value="${biyesheng.jiBenXinXi.shengyuandi}"><br>
	
		<input type="hidden" name="xuejiid" value="${biyesheng.xueJiXinXi.xuejiid}" >
		学校：<input type="text" name="xuexiao" value="${biyesheng.xueJiXinXi.xuexiao}"><br>
		专业：<input type="text" name="zhuanye" value="${biyesheng.xueJiXinXi.zhuanye}"><br>
		班级：<input type="text" name="banji" value="${biyesheng.xueJiXinXi.banji}"><br>
		学号：<input type="text" name="xuehao" value="${biyesheng.xueJiXinXi.xuehao}"><br>
	
		
		<input type="hidden" name="biyeid" value="${biyesheng.biYeXinXi.biyeid}" >
		毕业证号：<input type="text" name="biyezhenghao" value="${biyesheng.biYeXinXi.biyezhenghao}"><br>
		学位号：<input type="text" name="xueweihao" value="${biyesheng.biYeXinXi.xueweihao}"><br>
		学位：<input type="text" name="xuewei" value="${biyesheng.biYeXinXi.xuewei}"><br>
		毕业时间：<input type="text" name="biyeshijian" value="${biyesheng.biYeXinXi.biyeshijian}"><br>
		<input type="submit" value="修改">
	</form>	
</body>
</html>