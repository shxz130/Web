<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<% 
		String basepath = request.getContextPath()+"/";
	%>
	<link href="<%=basepath %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="<%=basepath %>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>//js/jquery-1.7.1.js"></script>
<script type="text/javascript">
	function addBiYeSheng(){
		var form = document.forms[0];
		form.action = "/Web/biyesheng/add";
		form.method="post";
		form.submit();
	}
</script>
</head>
<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">填写信息</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container"  method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">姓名</label>
			            <input type="text" class="form-control" name="xingming" >		            		            		            
			        </div>  
			     </div>  
			          
			   <div class="form-group"> 
			           <div class="col-md-4">
			           			 <label for="username" class="control-label">年龄</label>
			           			 <input type="text" class="form-control" name="nianling" >  
			           </div>	  
			          	 <div class="col-md-4">
			          		 <label for="username" class="control-label">民族</label>
			           			 <input type="text" class="form-control" name="mingzu" >	
			          	</div>  
			          	
			          	<div class="col-md-4 templatemo-radio-group">
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
			            <input type="text" class="form-control" name="shenfenzhenghao" >		            		            		            
			          </div>              
			        </div>	
			        
			         <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">籍贯</label>
			            	<input type="text" class="form-control" name="jiguan" >
			         	 </div>
			          </div>
			          
			          
			        <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">生源地</label>
			            <input type="text" class="form-control" name="shengyuandi" >
			          </div>
			         </div>
			         <br><br>
			          <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">学校</label>
			            <input type="text" class="form-control" name="xuexiao" >
			          </div>
			        </div>
			        
			        
			         <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">专业</label>
			            <input type="text" class="form-control" name="zhuanye" >
			          </div>
			        </div>
			        
			        
			          <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">班级</label>
			            <input type="text" class="form-control" name="banji" >
			          </div>
			        </div>
			        
			         <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">学号</label>
			            <input type="text" class="form-control" name="xuehao" >
			          </div>
			        </div>
			        
			        
			           <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">毕业证号</label>
			            <input type="text" class="form-control" name="biyezhenghao" >
			          </div>
			        </div>
			        
			           <div class="form-group">
			          <div class="col-md-12">
			            <label for="username" class="control-label">学位证号</label>
			            <input type="text" class="form-control" name="xueweihao" >
			          </div>
			        </div>
			        
			         <div class="form-group">
			          <div class="col-md-6">
			            <label for="username" class="control-label">学位</label>
			            <input type="text" class="form-control" name="xuewei" >
			          </div>
			           <div class="col-md-6">
			            <label for="username" class="control-label">毕业时间</label>
			            <input type="text" class="form-control" name="biyeshijian" >
			          </div>
			        </div>

			         <div class="form-group">
			          <div class="col-md-12">
			            <input type="button" class="btn btn-info" value="添加" onclick="addBiYeSheng()">
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
</body>

<!--
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
 - -->
</html>