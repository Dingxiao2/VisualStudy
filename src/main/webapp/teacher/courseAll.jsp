<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                      <!-- 登录（老师）->课程管理->课程信息查看 -->
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'courseAll.jsp' starting page</title>
    
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
  
  .div_list {
    margin: 20px;
    padding: 10px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
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
  
  table, th, td {
    border: 1px solid #ccc;
  }
  
  th, td {
    padding: 8px;
    text-align: left;
  }
  
  tr:nth-child(even) {
    background-color: #f2f2f2;
  }
  
  .form-control {
    width: 100px;
    padding: 5px;
    margin: 5px 0;
  }
  
  .btn {
    padding: 8px 16px;
    border: none;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    border-radius: 3px;
  }
</style>
<script type="text/javascript">

function page(s){
	var frm=document.getElementById("frm");
	var pageNo=document.getElementById("pageNo");
	pageNo.value=s;
	frm.submit();
}
</script>
  </head>
  
  <body>
    <form action="ServletTeaAllCos" method="post" id="frm">
    <div class="div_list panel panel-default">
			<div class="panel-heading">课程信息</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>编号</td>
				<td>科目</td>
				<td>学分</td>
				<td>学时</td>
				<td>任课教师</td>
				<td>开课时间</td>
				
			</tr>
			<c:forEach var="list" items="${list.pbjs }">
			<tr>
				<td>${list.getCourseID() }</td>
				<td>${list.getCourseName() }</td>
				<td>${list.getCourseCredit() }</td>
				<td>${list.getCourseHours() }</td>
				<td>${list.getCourseTeacher() }</td>
				<td>${list.getCourseDate() }</td>
				
				
			</tr>
			</c:forEach>
			<tr>
					<td colspan="7">
						<a onclick="page(1);">首页</a> 
						<c:if test="${list.isPrevious() }">
							<a onclick="page(${list.pageNo-1});">上一页</a>
						</c:if> 
						<c:if test="${(list.pageNo+1)<list.totalPage }">
						<a onclick="page(${list.pageNo+1 });">${list.pageNo+1 }</a>
						</c:if> 
						<c:if test="${(list.pageNo+2)<list.totalPage }">
						<a onclick="page(${list.pageNo+2 });">${list.pageNo+2 }</a>
						</c:if> 
						<c:if test="${list.isNext() }">
							<a onclick="page(${list.pageNo+1});">下一页</a>
						</c:if> 
						<a onclick="page(${list.totalPage });">最后一页</a> <br /> 
						跳转到：<input class="form-control form1"
						id="pageNo" type="text" name="pageNo" value="${list.pageNo }" />
						每页记录数：<input class="form-control form1" type="text" name="pageCount"
						value="${list.pageCount }" /> 
						
						<input class="btn btn-primary"
						type="submit" value="跳转" /> 共有${list.totalPage }页</td>
				</tr>
		</table>
	</div>
	</form>
  </body>
</html>
