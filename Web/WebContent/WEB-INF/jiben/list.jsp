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
		$.get("/Web/jiben/del?id=" + id,function(data){
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
				<th>姓名</th>
				<th>年龄</th>
				<th>性别</th>
				<th>身份证号</th>
				<th>籍贯</th>
				<th>民族</th>
				<th>生源地</th>
				<th>操作</th>
			</tr>
			<c:if test="${!empty jiBenList }">
				<c:forEach items="${jiBenList}" var="jiben">
					<tr>
						<td>${jiben.xingming}</td>
						<td>${jiben.nianling }</td>
						<td>${jiben.xingbie }</td>
						<td>${jiben.shenfenzhenghao }</td>
						<td>${jiben.jiguan }</td>
						<td>${jiben.mingzu }</td>
						<td>${jiben.shengyuandi }</td>
						<td>
							<a href="/Web/jiben/updaterequest?id=${jiben.jibenid }">编辑</a>
							<a href="javascript:del('${jiben.jibenid}')">删除</a>
						</td>
					</tr>				
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>