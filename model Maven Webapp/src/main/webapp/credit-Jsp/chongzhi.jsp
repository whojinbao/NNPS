<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript"
	src="bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css"
	type="text/css"></link>
<style type="text/css">
body{
	margin:0px;
	padding:0px;
}
	#left{
		float:left;
		border:1px solid red;
		height:100%;
		width:24%;
	}
	#right{
		float:left;
		border:1px solid red;
		height:100%;
		width:75%;
	}
	#top_left{
		
		height:20%;
		width:100%;
	}
	#top_left{
		padding-top:10%;
		
		vertical-align:middle;
		
		text-align: center;
		
	}
	#xiahuaxian{
		font-size: 40px;
		border-bottom:2px solid gray;
	}
</style>
</head>

<body>
	<div id="left">
		<div id="top_left"><span id="xiahuaxian">会员充值</span>
			<br/>
			<br/>
			<p>元/￥</p>
		</div>
		<div>
			<ul class="ul">
				<li>xxxxxxxxxxxxxx</li>
				<li>11111111111111</li>
				<li>22222222222222</li>
			</ul>
		</div>
	</div>
	<div id="right"></div>
</body>
</html>
