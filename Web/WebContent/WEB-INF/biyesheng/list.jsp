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
		$.get("/Web/biyesheng/del?id=" + id,function(data){
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
			
				<th>学校</th>
				<th>专业</th>
				<th>班级</th>
				<th>学号</th>
			
				<th>毕业证号</th>
				<th>学位证号</th>
				<th>学位</th>
				<th>毕业时间</th>
				
				
				<th>登记日期</th>
				
				
				<th>操作</th>
				
				
			</tr>
			<c:if test="${!empty biYeShengList }">
				
				<c:forEach items="${biYeShengList}" var="biyesheng">
					<tr>
						<td>${biyesheng.jiBenXinXi.xingming}</td>
						<td>${biyesheng.jiBenXinXi.nianling }</td>
						<td>${biyesheng.jiBenXinXi.xingbie }</td>
						<td>${biyesheng.jiBenXinXi.shenfenzhenghao }</td>
						<td>${biyesheng.jiBenXinXi.jiguan }</td>
						<td>${biyesheng.jiBenXinXi.mingzu }</td>
						<td>${biyesheng.jiBenXinXi.shengyuandi }</td>
						
						<td>${biyesheng.xueJiXinXi.xuexiao}</td>
						<td>${biyesheng.xueJiXinXi.zhuanye }</td>
						<td>${biyesheng.xueJiXinXi.banji }</td>
						<td>${biyesheng.xueJiXinXi.xuehao }</td>
						
						<td>${biyesheng.biYeXinXi.biyezhenghao}</td>
						<td>${biyesheng.biYeXinXi.xueweihao }</td>
						<td>${biyesheng.biYeXinXi.xuewei }</td>
						<td>${biyesheng.biYeXinXi.biyeshijian }</td>
								
						<td>${biyesheng.dengjiriqi}</td>
				
						<td>
							<a href="/Web/biyesheng/updaterequest?id=${biyesheng.biyeshengid }">编辑</a>
							<a href="javascript:del('${biyesheng.biyeshengid}')">删除</a>
						</td>
					</tr>				
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>