<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                    <!-- 登录（老师）->个人信息->查询个人信息 -->
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'teacherInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
    .panel-heading {
      background-color: #f4f4f4;
      color: #333;
      font-size: 20px;
      padding: 10px;
      text-align: center;
    }

    .panel-body {
      background-color: #fff;
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 5px;
    }

    .table {
      width: 100%;
      border-collapse: collapse;
    }

    .table td {
      padding: 10px;
      border: 1px solid #ddd;
    }

    /* 可根据需要添加更多样式规则 */
  </style>
</head>

<body>
	<!-- <form action="ServletEditTea" method="post"> -->
	
		<div class="div_ads panel panel-default">
		<div class="panel-heading">教师信息</div>
			<table class="table panel-body" id="tableClass">
			<c:forEach var="list" items="${list }">
				<tr>
					<td>工&nbsp;&nbsp;&nbsp;号：</td>
					<td>${list.getTeaNum() }</td>
				</tr>
				<tr>
					<td>姓&nbsp;&nbsp;&nbsp;名：</td>
					<td>${list.getTeaName() }</td>
				</tr>
				<tr>
					<td>性&nbsp;&nbsp;&nbsp;别：</td>
					<td>${list.getTeaSex() }</td>
				</tr>
				<tr>
					<td>年&nbsp;&nbsp;&nbsp;龄：</td>
					<td>${list.getTeaAge() }</td>
				</tr>
				<tr>
					<td>所任课程：</td>
					<td>${list.getTeaCourse() }</td>
				</tr>
				<tr>
					<td>专&nbsp;&nbsp;&nbsp;业：</td>
					<td>${list.getMajor() }</td>
				</tr>
				<tr>
					<td>院&nbsp;&nbsp;&nbsp;系：</td>
					<td>${list.getDepartment() }</td>
				</tr>
				</c:forEach>
			</table>
		</div>

</body>
</html>
