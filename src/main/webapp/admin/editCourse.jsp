<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                   <!-- 登录（管理员）->课程管理->课程信息查看->修改页面 -->
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'editCourse.jsp' starting page</title>
    
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

        .div_ads {
            margin: 20px auto;
            width: 50%;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            padding: 20px;
        }

        .form-control {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }

        .btn {
            padding: 6px 12px;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            border: 1px solid transparent;
            border-radius: 4px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        .btn-primary {
            color: #fff;
            background-color: #428bca;
            border-color: #357ebd;
        }

        .btn-primary:hover,
        .btn-primary:focus,
        .btn-primary:active,
        .btn-primary.active,
        .open .dropdown-toggle.btn-primary {
            color: #fff;
            background-color: #3276b1;
            border-color: #285e8e;
        }

        .btn-danger {
            color: #fff;
            background-color: #d9534f;
            border-color: #d43f3a;
        }

        .btn-danger:hover,
        .btn-danger:focus,
        .btn-danger:active,
        .btn-danger.active,
        .open .dropdown-toggle.btn-danger {
            color: #fff;
            background-color: #c9302c;
            border-color: #ac2925;
        }
    </style>
</head>

<body>
	<form action="ServletEditCos" method="post">
	
		<div class="div_ads">
		<c:forEach var="list" items="${list }">
			<table>
				<tr>
					<td>编&nbsp;&nbsp;&nbsp;号：</td>
					<td><input type="text" name="courseID" class="form-control" value="${list.getCourseID() }" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>科&nbsp;&nbsp;&nbsp;目：</td>
					<td><input type="text" name="courseName" class="form-control" value="${list.getCourseName() }" /></td>
				</tr>
				<tr>
					<td>学&nbsp;&nbsp;&nbsp;分：</td>
					<td><input type="text"  name="courseCredit" class="form-control" value="${list.getCourseCredit() }"  />
						
					</td>
				</tr>
				<tr>
					<td>学&nbsp;&nbsp;&nbsp;时：</td>
					<td><input type="text" name="courseHours" class="form-control" value="${list.getCourseHours() }" /></td>
				</tr>
				<tr>
					<td>任课教师：</td>
					<td><input type="text" name="courseTea" class="form-control" value="${list.getCourseTeacher() }" /></td>
				</tr>
				<tr>
					<td>开课时间：</td>
					<td><input type="text" name="courseDate" class="form-control" value="${list.getCourseDate() }" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="修改" class="btn btn-primary" /></td>
					<td><input type="reset" value="清空" class="btn btn-danger" /></td>
				</tr>
			</table>
			</c:forEach>
		</div>
	</form>
</body>
</html>
