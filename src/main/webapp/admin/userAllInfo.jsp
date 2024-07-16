<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                       <!-- 登录（管理员）->账户管理 -->
<head>
<base href="<%=basePath%>">

<title>My JSP 'userAllInfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
  }
  .div_list {
    margin: 20px;
  }
  .panel {
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  .panel-heading {
    background-color: #f0f0f0;
    padding: 10px;
    border-bottom: 1px solid #ccc;
    border-radius: 5px 5px 0 0;
  }
  .table {
    width: 100%;
    border-collapse: collapse;
  }
  .table td, .table th {
    padding: 8px;
    border-bottom: 1px solid #ccc;
  }
  .table tr:nth-child(even) {
    background-color: #f2f2f2;
  }
  .form-control {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
  }
  .btn {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    display: block;
  }
  .btn:hover {
    background-color: #45a049;
  }
</style>
</head>

<body>
<form action="PageServlet" method="post">
	<div class="div_list panel panel-default">
			<div class="panel-heading">用户信息</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>学号</td>
				<td>姓名</td>
				<td>密码</td>
				<td>联系电话</td>
				<td>身份</td>
				<td>操作</td>
			</tr>
			<c:forEach var="list" items="${list.getPbjs() }">
				<tr>
					<td>${list.getUserNum() }</td>
					<td>${list.getUserName() }</td>
					<td>${list.getPassword() }</td>
					<td>${list.getPhone() }</td>
					<td>${list.getRoleName() }</td>
					<td>&nbsp;<a
						href="ServletSelectUser?userID=${list.getUserID() }">修改</a>&nbsp;</td>
				</tr>
			</c:forEach>
			<tr>

				<td colspan="6">
					
					<a href="PageServlet?pageNo=1&totalPage=${list.totalPage}">首页</a>
					<a href="PageServlet?pageNo=${list.pageNo-1}&totalPage=${list.totalPage}">上一页</a>
					<a href="PageServlet?pageNo=${list.pageNo+1}&totalPage=${list.totalPage}">下一页</a>
					<a href="PageServlet?pageNo=${list.totalPage}&totalPage=${list.totalPage}"> 最后一页 </a>
					<br/>
					<%-- 跳转到： <input id="pageNo" type="text" class="form-control form1"
					name="pageNo" value="${list.pageNo}" /> 每页记录数： <input class="form-control form1"
					type="text" name="pageCount" value="${list.pageCount}" /> <input class="btn btn-primary"
					type="submit" value="跳转" /> 共有 ${list.totalPage} 页  --%>
				</td>

			</tr>
		</table>
		
	</div>
	</form>
</body>
</html>

