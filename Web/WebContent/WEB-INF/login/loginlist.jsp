<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
		String basepath = request.getContextPath()+"/";
	%>
<script type="text/javascript" src="<%=basepath %>/js/jquery-1.7.1.js"></script>
	<script src="<%=basepath %>/js/jquery.tableui.js"></script>
	<link href='<%=basepath %>/css/jquery.tableui.css'  rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=basepath %>/css/style.css" media="screen"/>
	<link rel="stylesheet" href="<%=basepath %>/css/jqpagination.css">
	<script src="<%=basepath %>/js/jquery.jqpagination.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function chaxun(){
	var id=$("#id").val();
	window.location.href="getUserById?id="+id;
}


$(function(){
	$(".table_solid").tableUI();

});
function del(id){
	alert(id);
	$.get("/Web/login/delUser?id=" + id,function(data){
		if("success" == data.result){
			alert("删除成功");
			window.location.reload();
		}else{
			alert("删除失败");
		}
	 });
}

	function tiaozhuan(pageNow){
		
		var pageCount=${pageCount};
		if(pageNow<=0){
			alert("已经是首页了");
			return;
			
		}
		if(pageNow>pageCount)
		{
			alert("已经是尾页了");
			
			return;
		}
		window.location.href="getListByFenYe?pageNow="+pageNow+"&pageSize="+${pageSize};
	};		

	
</script>
<title>用户列表</title>
</head>
<body>
<table border="0" class="table_solid">
		<tbody>
			<tr>
				<td colspan="8">
				<form>
					<input type="text" id="id">
					<input type="button" onclick="chaxun()" value="用户ID查询" >
				</form>
				</td>
			</tr>
		
		
			<tr>
				<th>用户名</th>
				<th>用户密码</th>
				<th>用户密码确认</th>
				
				<th>性别</th>
				<th>电话号码</th>
				<th>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</th>
				<th>注册时间</th>
				<th>操作</th>
			</tr>
			<c:if test="${!empty userList }">
				<c:forEach items="${userList }" var="user">
					<tr>
						<td>${user.userid }</td>
						<td>${user.userpasswd }</td>
						<td>${user.userpasswdcfg }</td>
						<td>${user.xingbie }</td>
						<td>${user.dianhuahaoma }</td>
						<td>${user.youxiangdizhi }</td>
						<td>${user.zhuceshijian }</td>
						<td>
							<a href="/Web/login/updateuserrequest?id=${user.userid }">编辑</a>
							<a href="javascript:del('${user.zhuceid}')">删除</a>			
						</td>
					</tr>				
				</c:forEach>
			</c:if>
			<tr>
				<td colspan="8">
				<form action="/Web/login/getListByFenYe" method="get">

					<input type="button" value="首页" onclick="tiaozhuan(1)">
					<input type="button" value="上一页" onclick="tiaozhuan('${pageLast}')">
					${pageNow}/${pageCount}
					<input type="button" value="下一页" onclick="tiaozhuan('${pageNext}')">	
					<input type="button" value="尾页" onclick="tiaozhuan('${pageCount}')">
					每页显示<input type="text" name="pageSize"  value="${pageSize}" size=3>
					跳转页面<input type="text" name="pageNow" value="${pageNow}" size=3>
					<input type="submit" value="跳转" >
				</form>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>