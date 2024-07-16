<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>学生界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script>
window.onload = function(){
	var oUl = document.getElementsByClassName('nav')[0];
	var aLi = oUl.getElementsByTagName('li');
	for(var i=0;i<aLi.length;i++){
		aLi[i].onclick = function(){
			for(var j in aLi){
				aLi[j].className = '';
			}
			this.className='active';
		}
		
	}
}
</script>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

.div_body {
    display: flex;
    height: 100vh;
}

.navbar {
    background-color: #517fa4;
    color: #fff;
    padding: 10px;
}

.navbar ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

.navbar ul li {
    display: inline-block;
    margin-right: 10px;
    font-size: 18px;
}

.aside {
    background-color: #fff;
    width: 300px;
    padding: 20px;
    box-shadow: 0 0 5px rgba(0,0,0,.1);
}

.profile {
    text-align: center;
    margin-bottom: 20px;
}

.profile .name {
    font-size: 24px;
    font-weight: bold;
    margin-top: 0;
}

.nav {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

.nav li {
    margin-bottom: 10px;
}

.nav a {
    color: #333;
    text-decoration: none;
    display: block;
}

.nav a:hover {
    color: #517fa4;
}

.div_right {
    flex-grow: 1;
    padding: 20px;
}

iframe {
    height: 100%;
    visibility: inherit;
    width: 100%;
    z-index: 1;
    border: none;
}
</style>
</head>

<body>
	<div class="div_body">
		<nav class="navbar">
			<ul class="nav navbar-nav " style="border-bottom:#517fa4 2px">
				<li class="li-sty">课程化视觉学习系统<i class="fa fa-magic" aria-hidden="true"></i></li>
				<li class="li-sty1" style="float:right;"><a href="ServletLogout" >退出</a></li>
			</ul>
		</nav>
		<div class="aside">
			<div class="profile">
				
				<h3 class="name">${username}</h3>
			</div>
			<ul class="nav">
				<li>
					<a  href="#menu-info" data-toggle="collapse" onclick="return false;">
						<i class="fa fa-thumb-tack"></i>个人信息<i class="fa fa-angle-right"></i>
					</a>
					<ul id="menu-info" class="collapse">
						<li><a href="ServletselectPwd" target="mainRight">查询登陆密码</a></li>
						<li><a href="ServletStudentInfo" target="mainRight">查询个人信息</a></li>
						<li><a href="ServletSelectStudentInfo" target="mainRight">修改个人信息</a></li>
					</ul>
				</li>
				<li>
					<a href="#menu-grades" data-toggle="collapse" onclick="return false;">
						<i class="fa fa-cogs"></i>统计管理<i class="fa fa-angle-right"></i>
					</a>
					<ul id="menu-grades" class="collapse">
						<li><a href="ServletFindStudentScore" target="mainRight">信息查看</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="div_right">
			<iframe frameBorder="0" id="main" 
			name="mainRight" scrolling="yes" src="main.jsp"
			style="HEIGHT: 130%; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 1"></iframe>
		</div>
	</div>
	
	
</body>
</html>

