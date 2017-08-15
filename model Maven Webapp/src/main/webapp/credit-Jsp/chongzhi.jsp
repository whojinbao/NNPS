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
	#left{
		float:left;
		border:1px solid red;
		height:100%;
		width:25%;
	}
	#right{
		float:left;
		border:1px solid red;
		height:100%;
		width:75%;
	}
</style>
</head>

<body>
	<div id="left"></div>
	<div id="right"></div>
</body>
</html>
