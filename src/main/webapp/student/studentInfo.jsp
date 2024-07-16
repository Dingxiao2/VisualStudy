<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">        
<html>                                                                 <!-- 登录（学生）->个人信息->修改个人信息 -->
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
      }
      
      .panel {
        margin: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      }
      
      .panel-heading {
        background-color: #f0f0f0;
        padding: 10px;
        font-weight: bold;
        border-bottom: 1px solid #ccc;
      }
      
      table {
        width: 100%;
        border-collapse: collapse;
      }
      
      td, th {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ccc;
      }
      
      .attr {
        font-weight: bold;
      }
    </style>
</head>

<body>
		
	
		<div class="div_ads"><font>${msg }</font>
				<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading">个人详细信息</div>
					  
						<!-- Table -->
						<c:forEach var="list" items="${list }">
						<table class="table" style="width: 100%">
						  <tr>
							  <td class="attr">学号:</td>
							  <td>${list.getStuNum() }</td>
						  </tr>
						  <tr>
								<td class="attr">姓名:</td>
								<td>${list.getStuName() }</td>
							</tr>
							<tr>
								<td class="attr">性别:</td>
								<td>${list.getStuSex()}</td>
							</tr>
							<tr>
								<td class="attr">年龄:</td>
								<td>${list.getStuAge() }</td>
							</tr>
							<tr>
								<td class="attr">班级:</td>
								<td>${list.getStuClass() }</td>
							</tr>
							<tr>
								<td class="attr">专业:</td>
								<td>${list.getMajor() }</td>
							</tr>
							<tr>
								<td class="attr">院系:</td>
								<td>${list.getDepartment()}</td>
							</tr>
						</table>
					</c:forEach>
					  </div>
		</div>
<!-- <script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script> -->
</body>
</html>


 
