<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                        <!-- 登录（老师）->个人信息->修改个人信息 -->
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'editTeacherInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
    .form-control {
        padding: 5px;
        margin: 5px;
        width: 200px;
    }
    
    .btn {
        padding: 5px 10px;
        margin: 5px;
    }
    
    .btn-primary {
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    
    .btn-primary:hover {
        background-color: #0056b3;
    }
    
    .btn-danger {
        background-color: #dc3545;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    
    .btn-danger:hover {
        background-color: #bd2130;
    }
    
    .div_ads {
        margin: 20px;
    }
    
    table {
        border-collapse: collapse;
        width: 100%;
    }
    
    table tr:nth-child(odd) {
        background-color: #f2f2f2;
    }
    
    table th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    
    table th {
        background-color: #007bff;
        color: white;
    }
</style>
</head>

<body>
	<form action="ServletEditTeacherInfo" method="post">
	
		<div class="div_ads">
		<c:forEach var="list" items="${list }">
			<table>
				<tr>
					<td>工&nbsp;&nbsp;&nbsp;号：</td>
					<td><input type="text" name="teaNum" class="form-control" value="${list.getTeaNum() }" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>姓&nbsp;&nbsp;&nbsp;名：</td>
					<td><input type="text" name="teaName" class="form-control" value="${list.getTeaName() }" /></td>
				</tr>
				<tr>
					<td>性&nbsp;&nbsp;&nbsp;别：</td>
					<td><input type="text"  name="teaSex" class="form-control" value="${list.getTeaSex() }"  />
						
					</td>
				</tr>
				<tr>
					<td>年&nbsp;&nbsp;&nbsp;龄：</td>
					<td><input type="text" name="teaAge" class="form-control" value="${list.getTeaAge() }" /></td>
				</tr>
				<tr>
					<td>所任课程：</td>
					<td><input type="text" name="teaCourse" class="form-control" value="${list.getTeaCourse() }" /></td>
				</tr>
				<tr>
					<td>专&nbsp;&nbsp;&nbsp;业：</td>
					<td><input type="text" name="major" class="form-control" value="${list.getMajor() }" /></td>
				</tr>
				<tr>
					<td>院&nbsp;&nbsp;&nbsp;系：</td>
					<td><input type="text" name="department" class="form-control" value="${list.getDepartment() }" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="修改" class="btn btn-primary" /></td>
				</tr>
			</table>
			</c:forEach>
		</div>
	</form>
</body>
</html>