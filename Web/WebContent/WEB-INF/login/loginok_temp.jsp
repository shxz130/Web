<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
	<% 
		String basepath = request.getContextPath()+"/";
	%>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>学生毕业信息管理</title>
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<div class="footer-banner" style="width:728px; margin:160px auto 100px"></div>
		<script src="<%=basepath %>/js/masonry.pkgd.min.js"></script>
		<script src="<%=basepath %>/js/imagesloaded.pkgd.min.js"></script>
		<script src="<%=basepath %>/js/classie.js"></script>
		<script src="<%=basepath %>/js/colorfinder-1.1.js"></script>
		<script src="<%=basepath %>/js/gridScrollFx.js"></script>
			<script src="<%=basepath %>/js/modernizr.custom.js"></script>
		<script>
			new GridScrollFx( document.getElementById( 'grid' ), {
				viewportFactor : 0.6
			} );
		</script>
		
		 
		<style>
		body {
			background: #444;
		}
		.codrops-demos a.current-demo {
			color: #999;
		}
		.codrops-header h1 {
			margin-top: 50px;
			font-family: 'Microsoft Yahei';
			color: #fff;
		}
		</style>
	
	</head>
	<body>
		<div class="container">
			<header class="codrops-header">
				<h1>学生毕业信息</h1>	
			</header>
			<section class="grid-wrap">
				<ul class="grid swipe-rotate" id="grid">
				
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/1.jpg" alt="img01"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/2.jpg" alt="img02"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/3.jpg" alt="img03"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/4.jpg" alt="img04"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/5.jpg" alt="img05"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/6.jpg" alt="img06"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/7.jpg" alt="img07"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/8.jpg" alt="img08"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/9.jpg" alt="img09"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/10.jpg" alt="img10"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/11.jpg" alt="img11"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/12.jpg" alt="img12"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/1.jpg" alt="img01"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/2.jpg" alt="img02"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/1.jpg" alt="img01"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/2.jpg" alt="img02"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/1.jpg" alt="img01"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/2.jpg" alt="img02"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/1.jpg" alt="img01"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/2.jpg" alt="img02"><h3>查看所有所有信息</h3></a></li>
					<li><a href="../biyesheng/addrequest"><img src="<%=basepath %>/img/1.jpg" alt="img01"><h3>添加毕业生信息</h3></a></li>
					<li><a href="../biyesheng/getListByFenYe?pageNow=1&pageSize=10"><img src="<%=basepath %>/img/2.jpg" alt="img02"><h3>查看所有所有信息</h3></a></li>
				
				</ul>
			</section>
		</div><!-- /container -->

		 
	</body>