<%-- <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body>
    <div class="div_pwd">
		<font>${msg}</font>
		<table border="1" cellpadding="0" cellspacing="=0">
		<tr>
				<td>编号：</td>
				<td>${userID }</td>
			</tr>
			<tr>
				<td>账号：</td>
				<td>${usernum }</td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td>${username }</td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td>${phone }</td>
			</tr>
			
		</table>
	</div>
  </body>
</html>
 --%>