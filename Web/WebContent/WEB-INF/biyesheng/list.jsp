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
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(function(){
	$(".table_solid").tableUI();
});

function chaxun(){
	var id=$("#xuehao").val();
	alert(id);
	window.location.href="getBiYeShengByXueHao?xuehao="+id;
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
<table border="0" class="table_solid" >
		<thead>
		
			<tr>
				<td colspan="12">全国高等教育毕业生信息<td>		
		</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="13">
				<form>
					<input type="text" id="xuehao">
					<input type="button" onclick="chaxun()" value="学号查询" >
				</form>
				</td>
			</tr>
		
			<tr>
				<th width="200px">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</th>
				<th>年龄</th>
				<th>性&nbsp;别</th>
				<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业</th>
				<th>班&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级</th>
				<th>学号</th>
				<th>毕业证号</th>
				<th>学位证号</th>
				<th>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位</th>
				<th>毕业时间</th>
				<th>登&nbsp;&nbsp;记&nbsp;&nbsp;日&nbsp;&nbsp;期</th>
				<th>&nbsp;&nbsp;&nbsp;&nbsp;操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作&nbsp;&nbsp;&nbsp;</th>
			</tr>
			<c:if test="${!empty biYeShengList }">
				<c:forEach items="${biYeShengList}" var="biyesheng">
					<tr>
						<td>${biyesheng.jiBenXinXi.xingming}</td>
						<td>${biyesheng.jiBenXinXi.nianling }</td>
						<td>${biyesheng.jiBenXinXi.xingbie }</td>
		
						
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
							<a href="/Web/biyesheng/get?id=${biyesheng.biyeshengid }">查看</a>
							<a href="/Web/biyesheng/updaterequest?id=${biyesheng.biyeshengid }">编辑</a>
							<a href="javascript:del('${biyesheng.biyeshengid}')">删除</a>
						</td>
					</tr>	
				</c:forEach>
			</c:if>
			<tr>
				<td colspan="13">
					<form action="/Web/biyesheng/getListByFenYe" method="get">
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