<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<% 
		String basepath = request.getContextPath()+"/";
	%>
	<link href="<%=basepath %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="<%=basepath %>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>/js/jquery-1.7.1.js"></script>
<script type="text/javascript">
    $(function () {
        $("#danxuan :radio[value='${biyesheng.jiBenXinXi.xingbie}']").attr("checked", true);
    })
</script>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
</head>

<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">修改信息</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" action="/Web/biyesheng/update" method="post">

			
			<input type="hidden" name="biyeshengid" value="${biyesheng.biyeshengid}" >
			<input type="hidden" name="dengjiriqi" value="${biyesheng.dengjiriqi}" >
			<input type="hidden" name="jibenid" value="${biyesheng.jiBenXinXi.jibenid}" >
			<input type="hidden" name="xuejiid" value="${biyesheng.xueJiXinXi.xuejiid}" >
				<input type="hidden" name="biyeid" value="${biyesheng.biYeXinXi.biyeid}" >
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">姓名</label>
			            <input type="text" class="form-control" name="xingming" value="${biyesheng.jiBenXinXi.xingming}">
			                       		            		            
			        </div>  
			     </div>  
			          
			   <div class="form-group"> 
			           <div class="col-md-4">
			           			 <label for="username" class="control-label">年龄</label>
			           			 <input type="text" class="form-control" name="nianling" value="${biyesheng.jiBenXinXi.nianling}"><br>
			           			
			           </div>	  
			          	 <div class="col-md-4">
			          		 <label for="username" class="control-label">民族</label>
			          		 <input type="text" class="form-control" name="mingzu" value="${biyesheng.jiBenXinXi.mingzu}">
			           			 
			          	</div>  
			      
			          	<div id="danxuan" class="col-md-4 templatemo-radio-group">
			          	
			          		<label class="radio-inline">
		          				<input type="radio" name="xingbie" id="optionsRadios1" value="男"> 男
		          			</label>
		          			<label class="radio-inline">
		          				<input type="radio" name="xingbie" id="optionsRadios2" value="女"> 女
		          			</label>
			          	</div>        
			        </div>	
			       
			        
			        
			       <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">身份证号</label>
			           <input type="text" class="form-control" name="shenfenzhenghao" value="${biyesheng.jiBenXinXi.shenfenzhenghao}">		            		            		            
			          </div>              
			        </div>	
			        
			         <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">籍贯</label>
			            	<input type="text" class="form-control" name="jiguan" value="${biyesheng.jiBenXinXi.jiguan}">
			         	 </div>
			          </div>
			          
			          
			        <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">生源地</label>
			            <input type="text" class="form-control" name="shengyuandi" value="${biyesheng.jiBenXinXi.shengyuandi}">
			          </div>
			         </div>
			         <br><br>
			          <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">学校</label>
			            <input type="text" class="form-control" name="xuexiao" value="${biyesheng.xueJiXinXi.xuexiao}">
			          </div>
			        </div>
			        
			        
			         <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">专业</label>
			           <input type="text" class="form-control" name="zhuanye" value="${biyesheng.xueJiXinXi.zhuanye}">
			          </div>
			        </div>
			        
			        
			          <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">班级</label>
			           <input type="text" class="form-control" name="banji" value="${biyesheng.xueJiXinXi.banji}">
			          </div>
			        </div>
			        
			         <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">学号</label>
			           <input type="text" class="form-control" name="xuehao" value="${biyesheng.xueJiXinXi.xuehao}">
			          </div>
			        </div>
			        
			        
			           <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">毕业证号</label>
			            <input type="text" class="form-control" name="biyezhenghao" value="${biyesheng.biYeXinXi.biyezhenghao}">
			          </div>
			        </div>
			        
			           <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">学位证号</label>
			            <input type="text" class="form-control" name="xueweihao" value="${biyesheng.biYeXinXi.xueweihao}">
			          </div>
			        </div>
			        
			         <div class="form-group">
			          <div class="col-md-6">
			            <label for="username" class="control-label">学位</label>
			            <input type="text" class="form-control" name="xuewei" value="${biyesheng.biYeXinXi.xuewei}">
			          </div>
			           <div class="col-md-6">
			            <label for="username" class="control-label">毕业时间</label>
			            <input type="text" class="form-control" name="biyeshijian" value="${biyesheng.biYeXinXi.biyeshijian}">
			           
			          </div>
			        </div>

			         <div class="form-group">
			          <div class="col-md-12">
			          <input type="submit"  class="btn btn-info"  value="修改"> 
			          <input type="button" onclick="javascript:history.go(-1);" class="btn btn-info" align="right" value="返回"> 
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
</body>
<!--  
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
-->
</html>