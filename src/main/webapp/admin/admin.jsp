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

<title>管理员界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

.div_body {
    display: flex;
}

.navbar {
    background-color: #6666;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
}

.navbar a {
    color: white;
    text-decoration: none;
    margin-right: 20px;
}

.navbar a.logout {
    background-color: #ff4d4d;
    padding: 10px 15px;
    border-radius: 5px;
}

.navbar a.logout:hover {
    background-color: #e60000;
}

.aside {
    background-color: #f1f1f1;
    width: 200px;
    padding: 20px;
}

.profile {
    text-align: center;
    margin-bottom: 20px;
}

.profile .name {
    font-size: 20px;
    font-weight: bold;
    margin: 0;
}

.nav {
    list-style: none;
    padding: 0;
    margin: 0;
}

.nav li {
    margin-bottom: 10px;
}

.nav a {
    display: block;
    color: #333;
    text-decoration: none;
    padding: 10px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.nav a:hover {
    background-color: #555;
    color: white;
}

.nav .collapse {
    margin-left: 20px;
}

.nav .collapse li {
    margin-bottom: 0;
}

.nav .collapse a {
    padding-left: 20px;
}

.div_right {
    flex: 1;
    padding: 20px;
}

.div_right iframe {
    border: none;
    height: 100%;
    width: 100%;
}
</style>
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

</head>

<body>
	<div class="div_body">
		<nav class="navbar">
			<ul class="nav navbar-nav " style="border-bottom:#517fa4 2px">
				<li class="li-sty" >课程化视觉学习系统系统<i class="fa fa-magic" ></i></li>
				<li class="li-sty1" style="float:right;"><a href="ServletLogout" >退出</a></li>
			</ul>
		</nav>
		<div class="aside">
			<div class="profile">
				
				<h3 class="name">${username}</h3>
			</div>
			<ul class="nav">
				<li>
      				<a href="ServletselectPwd" target="mainRight"><i class="fa fa-dashboard"></i>个人信息</a>
    			</li>
				
                <li>
                    <a href="#menu-class" data-toggle="collapse" onclick="return false;">
                        <i class="fa fa-cogs"></i>课程管理<i class="fa fa-angle-right"></i>
                    </a>
                    <ul id="menu-class" class="collapse">
                        <li><a href="ServletFindAllCos" target="mainRight">课程信息查看</a></li>
                        <li><a href="admin/addCourse.jsp" target="mainRight">添加课程信息</a></li>
                    </ul>
                </li>
				<li>
					<a href="#menu-grades" data-toggle="collapse" onclick="return false;">
						<i class="fa fa-comments"></i>成绩管理<i class="fa fa-angle-right"></i>
					</a>
					<ul id="menu-grades" class="collapse">
						<li><a href="ServletFindAllScore" target="mainRight">成绩信息查看</a></li>
						<li><a href="admin/addScore.jsp" target="mainRight">添加学生成绩</a></li>
						<!-- <li><a href="ServletStuSum" target="mainRight">学生成绩总分</a></li>  -->
						<li><a href="ServletStuSumList?f=1" target="mainRight">学生总成绩</a></li>
					</ul>
                </li>
                <li>
                    <a href="#menu-teachers" data-toggle="collapse" onclick="return false;">
                        <i class="fa fa-users"></i>教师管理<i class="fa fa-angle-right"></i>
                    </a>
                    <ul id="menu-teachers" class="collapse">
                        <li><a href="ServletFindAllTea" target="mainRight">查询教师信息</a></li>
                        <li><a href="admin/addTeacher.jsp" target="mainRight">添加教师信息</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#menu-stu" data-toggle="collapse" onclick="return false;">
                        <i class="fa fa-bug"></i>学生管理<i class="fa fa-angle-right"></i>
                    </a>
                    <ul id="menu-stu" class="collapse">
                        <li><a href="ServletFindAllStu" target="mainRight">查询学生信息</a></li>
                        <li><a href="admin/addStudent.jsp" target="mainRight">添加学生信息</a></li>
                    </ul>                    
                </li>
                
                <li>
                	<a href="PageServlet" target="mainRight"><i class="fa fa-bank"></i>账户管理</a>
                </li>       
			</ul>
		</div>
		<div class="div_right">
			<iframe frameBorder="0" id="main" 
			name="mainRight" scrolling="yes" src="main.jsp"
			style="HEIGHT:130%; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 1"></iframe>
		</div>
	</div>
	
	
</body>
</html>