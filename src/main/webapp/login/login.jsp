<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登陆</title>
<style>
body {
  
  background-color: #f1f1f1;
  font-family: Arial, sans-serif;
}

.div_body {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

#_body {
  text-align: center;
}

.msg {
  cursor: default;
}

input[type="text"],
input[type="password"] {
  width: 200px;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

input[type="radio"] {
  margin-right: 5px;
}

.btn {
  padding: 10px 20px;
  background-color: #517fa4;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.btn:hover {
  background-color: #3c6382;
}
</style>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javaScript">
window.onload = function() {
	particleBg('body', {
    color: 'rgba(255, 255, 255, 0.5)'
  });
}
</script>
</head>
<img src="images/bg.jpg" width="1500" height="800" />
<body>
	<div class="div_body">
		<div id="_body">
		<h3 class="msg" style="cursor:default">${massage }</h3>
			<form action="ServletLogin" method="post"
				onsubmit="return checked(this)">
				<table>
					<ul class="nav navbar-nav " style="border-bottom:#517fa4 2px">
						<li>课程化视觉学习系统</li>
					</ul>
					<tr>
						<td><input class="input" type="text" name="ID" placeholder="账号">
						</td>
					</tr>
					<tr>
						<td><input class="input" type="password" name="pwd" placeholder="密码">
						</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="radio" name="role" value="0" checked="checked">学生
							<input class="check" type="radio" name="role" value="1">教师
							<input class="check" type="radio" name="role" value="2">管理员
						</td>
					</tr>
					<tr>
						<td>
							<input class="btn" type="submit" value="登录">
							<input class="btn" type="button" name="register" value="注册"
							onclick="window.open('register/register.jsp')">
							<input class="btn" type="reset" value="取消">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
