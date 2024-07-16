<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                           <!-- 登录（学生）->成绩管理->成绩信息查看->查看后的页面 -->
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'scoreOne.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style>
  /* 整体页面样式 */
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
  }

  /* 查询表单外观 */
  .div_select {
    padding: 20px;
    background-color: #fff;
    margin-bottom: 20px;
    border: 1px solid #ddd;
  }

  .form-control {
    /* 添加输入框样式 */
  }

  .btn-primary {
    /* 按钮样式 */
  }

  /* 成绩信息表格外观 */
  .panel {
    background-color: #fff;
    border: 1px solid #ddd;
  }

  .panel-heading {
    padding: 10px;
    font-weight: bold;
  }

  table {
    width: 100%;
    border-collapse: collapse;
  }

  th, td {
    border: 1px solid #ddd;
    padding: 8px;
  }

  th {
    background-color: #f2f2f2;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }
</style>


  </head>
  
  <body>
  <div class="div_select">
  	<form action="ServletOneStudentScore" method="post">
  	课程名：<input type="text" class="cosName form-control" id="form1"  name="cosName" /> <input type="submit" class="btn btn-primary" value="查询" />
  	</form>
  </div>
    
    <div class="div_list">
		<div class="panel panel-default">
			<div class="panel-heading">成绩信息</div>
		<table class="table" style="width: 100%">
			<tr>
				<td>科目</td>
				<td>学分</td>
				<td>学时</td>
				<td>任课教师</td>
				<td>专业</td>
				<td>开课时间</td>
				<td>成绩</td>
				
			</tr>
			<c:forEach var="list" items="${list }">
			<tr>
				<td>${list.getCourseName() }</td>
				<td>${list.getCourseCredit() }</td>
				<td>${list.getCourseHours() }</td>
				<td>${list.getCourseTeacher() }</td>
				<td>${list.getMajor() }</td>
				<td>${list.getCourseDate() }</td>
				<td>${list.getScoreGrade() }</td>
				
			</tr>
			</c:forEach>
			
		</table>
	</div>
	
  </body>
</html>
