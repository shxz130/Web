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
		$.get("/Web/biye/del?id=" + id,function(data){
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
				<th>毕业证号</th>
				<th>学位证号</th>
				<th>学位</th>
				<th>毕业时间</th>
				<th>操作</th>
			</tr>
			<c:if test="${!empty biYeList }">
				
				<c:forEach items="${biYeList}" var="biye">
					<tr>
						<td>${biye.biyezhenghao}</td>
						<td>${biye.xueweihao }</td>
						<td>${biye.xuewei }</td>
						<td>${biye.biyeshijian }</td>
						<td>
							<a href="/Web/biye/updaterequest?id=${biye.biyeid }">编辑</a>
							<a href="javascript:del('${biye.biyeid}')">删除</a>
						</td>
					</tr>				
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>