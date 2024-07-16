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

<title>教师界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>
    .nav {
    display: flex;
    justify-content: space-around;
    background-color: #517fa4;
    color: #fff;
    padding: 10px;
}

.nav li {
    list-style: none;
}

.nav a {
    text-decoration: none;
    color: #fff;
    padding: 10px 20px;
}

    .nav .collapse {
        padding-left: 20px;
        display: none;
    }

    .nav li.active {
        font-weight: bold;
    }
    
    .nav a:hover + .collapse,
    .collapse:hover {
        display: block;
    }
      .li-sty {
        text-align: center;
        
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
						<li><a href="ServletTeacherInfo" target="mainRight">查询个人信息</a></li>
						<li><a href="ServletselectTeacherInfo" target="mainRight">修改个人信息</a></li>
					</ul>
                </li>
                <li>
                    <a href="#menu-class" data-toggle="collapse" onclick="return false;">
                        <i class="fa fa-cogs"></i>课程管理<i class="fa fa-angle-right"></i>
                    </a>
                    <ul id="menu-class" class="collapse">
                        <li><a href="ServletTeaAllCos" target="mainRight">课程信息查看</a></li>
                        <li><a href="admin/addCourse.jsp" target="mainRight">添加课程信息</a></li>
                    </ul>
                </li>
				<li>
					<a href="#menu-grades" data-toggle="collapse" onclick="return false;">
						<i class="fa fa-frown-o"></i>成绩管理<i class="fa fa-angle-right"></i>
					</a>
					<ul id="menu-grades" class="collapse">
						<li><a href="ServletTeaStuScore" target="mainRight">成绩信息查看</a></li>
						<li><a href="admin/addScore.jsp" target="mainRight">添加学生成绩</a></li>
					</ul>
                </li>
                <li>
                    <a href="#menu-stu" data-toggle="collapse" onclick="return false;">
                        <i class="fa fa-group"></i>学生管理<i class="fa fa-angle-right"></i>
                    </a>
                    <ul id="menu-stu" class="collapse">
                        <li><a href="ServletFindAllStu" target="mainRight">查询学生信息</a></li>
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
	
	<!-- <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script> -->
</body>
</html>

