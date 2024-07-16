<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                             <!-- 登录（管理员）->教师管理->查询教师信息 -->
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentAll.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
body {
  background-color: #f1f1f1;
  font-family: Arial, sans-serif;
}

.div_list {
  margin: 20px auto;
  width: 80%;
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.panel-heading {
  background-color: #517fa4;
  color: #fff;
  padding: 10px;
}

.table {
  width: 100%;
  margin-bottom: 0;
}

.table tr th,
.table tr td {
  padding: 10px;
  text-align: center;
}

.table tr th {
  background-color: #f1f1f1;
}

.table tr:nth-child(even) {
  background-color: #f1f1f1;
}

.table tr:hover {
  background-color: #e1e1e1;
}

a {
  color: #517fa4;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}
</style>
  </head>
  
  <body>
    
    <div class="div_list panel panel-default">
				<div class="panel-heading">教师信息</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>工号号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>所任课程</td>
				<td>专业</td>
				<td>院系</td>
				<td>操作</td>
			</tr>
			<c:forEach var="list" items="${list }">
			<tr>
				<td>${list.getTeaNum() }</td>
				<td>${list.getTeaName() }</td>
				<td>${list.getTeaSex() }</td>
				<td>${list.getTeaAge() }</td>
				<td>${list.getTeaCourse() }</td>
				<td>${list.getMajor() }</td>
				<td>${list.getDepartment() }</td>
				<td><a href="ServletSelectTea?teanum=${list.getTeaNum() }">修改</a>&nbsp;&nbsp;&nbsp;<a href="ServletDeleteTea?teanum=${list.getTeaNum() }" onclick="return confirm('是否确认删除？')">删除</a></td>
				
			</tr>
			</c:forEach>
		</table>
	</div>
  </body>
</html>
