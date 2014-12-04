<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-1.7.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function del(id){
		$.get("/Web/login/delUser?id=" + id,function(data){
			if("success" == data.result){
				alert("删除成功");
				window.location.reload();
			}else{
				alert("删除失败");
			}
		});
	}
</script>
<title>用户列表</title>
</head>
<body>
<table border="1">
		<tbody>
			<tr>
				<th>用户名</th>
				<th>用户密码</th>
				<th>用户密码确认</th>
				<th>注册时间</th>
				<th>操作</th>
			</tr>
			<c:if test="${!empty userList }">
				<c:forEach items="${userList }" var="user">
					<tr>
						<td>${user.userid }</td>
						<td>${user.userpasswd }</td>
						<td>${user.userpasswdcfg }</td>
						<td>${user.zhuceshijian }</td>
						<td>
							<a href="/Web/login/updateuserrequest?id=${user.userid }">编辑</a>
							<a href="javascript:del('${user.zhuceid}')">删除</a>
						</td>
					</tr>				
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>