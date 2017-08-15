<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
* {
	margin: 0px;
	padding: 0px;
}

#top {
	border-bottom: 3px solid #4588BD;
	height: 16%;
}

#bottom {
	
	height: 100%;
	width: 80%;
}

#top1 {
	width: 100%;
	height: 20%;
	background: #424040;
	color: #B4ADA2;
}

#kh {
	margin-left: 15%;
}

#xinxi {
	margin-left: 45%;
}

#out {
	color: #B4ADA2;
}

#top2 {
	width: 100%;
	height: 80%;
}

#daohang {
	width: 30%;
	height: 100%;
	float: right;
	margin-right: 10%;
}

#cz {
	color: #666666;
	font-size: 21px;
	margin: 0px;
	width: 49%;
	height: 100%;
	background:#EAF1FC;
	font-weight: bold;
	/* border-left: 3px solid #000000; */
}

#gr {
	color: #666666;
	font-size: 21px;
	padding: 0px;
	margin: 0px;
	width: 49%;
	height: 100%;
	background:#EAF1FC;
	font-weight: bold;
	/* border-left: 3px solid #000000;
	border-right: 3px solid #000000; */
}

#cz:HOVER {
	background: #EBEBE8;
}

#gr:HOVER {
	background: #EBEBE8;
}

#weizhi {
	
	width: 100%;
	height: 5%;
}

#Iframe {
	border:1px solid #B4ADA2;
	heigth:10%;
}
</style>
</head>

<body>
	<div id="top">
		<div id="top1">
			<span id="kh">网页版</span>
			<sapn id="xinxi">欢迎您，<sapn>xxx</sapn>&nbsp;&nbsp;&nbsp;&nbsp;<a
				id="out">退出</a></sapn>
		</div>
		<div id="top2">
			<div id="log">
				<img alt="..." src="..."
					style="height:100%;width:15%;margin-left:10%;float:left;">
			</div>
			<div id="daohang">
				<button id="cz" class="btn" style="">会员充值</button>
				<button id="gr" class="btn" style="">个人信息</button>
			</div>
		</div>
	</div>
	<center>
		<div id="bottom">
			<div id="weizhi">
				<span style="float:left;font-weight: bold;margin-left:1%;">您当前位置：><span>会员充值</span>
				</span>
			</div>

			<iframe id="Iframe" name="Myframe"  src="chongzhi.jsp"  style="width:100%;height:100%"> </iframe>
		</div>
	</center>


</body>
</html>