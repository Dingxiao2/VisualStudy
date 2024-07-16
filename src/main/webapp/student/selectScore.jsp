<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                                <!-- 登录（学生）->统计管理->信息查看 -->
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
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

  /* 导航栏样式 */
  .div_select {
    padding: 20px;
    background-color: #fff;
    margin-bottom: 20px;
    border: 1px solid #ddd;
  }

  .div_select input[type="text"],
  .div_select input[type="submit"] {
    /* 根据需要自行添加样式 */
  }

  /* 成绩信息表格样式 */
  .panel {
    background-color: #fff;
    border: 1px solid #ddd;
  }

  .panel-heading {
    background-color: #f2f2f2;
    padding: 10px;
    font-weight: bold;
  }

  table {
    width: 100%;
    border-collapse: collapse;
  }

  table, th, td {
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

  /* 分页样式 */
  .div_ads {
    margin-top: 20px;
  }

  .div_ads a {
    color: blue;
    cursor: pointer;
    margin-right: 10px;
  }

  .form1 {
    /* 根据需要自行添加样式 */
  }

  .btn-primary {
    /* 根据需要自行添加样式 */
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
		
		<div class="div_select">
				<form action="ServletOneStudentScore" method="post">
				课程名：<input type="text" class="form-control" id="form1"  name="cosName"/> <input type="submit" class="btn btn-primary" value="查询" />
				</form>
			</div>
			<form action="ServletFindStudentScore" method="post" id="frm"></form>
		<div class="div_ads">
				<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading">
							成绩信息
						</div>
					  
						<!-- Table -->
					
						<table class="table" style="width: 100%">
							<tr>
								<td><b>科目</b></td>
								<td><b>学分</b></td>
								<td><b>学时</b></td>
								<td><b>任课教师</b></td>
								<td><b>专业</b></td>
								<td><b>开课时间</b></td>
								<td><b>成绩</b></td>
							</tr>
							<c:forEach var="list" items="${list.pbjs }">
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
							<tr>
							<%-- <td colspan="7"><a onclick="page(1);">首页</a> 
							<c:if test="${list.isPrevious() }"> 
								<a onclick="page(${list.pageNo-1});">上一页</a>
							</c:if> 
							<c:if test="${list.isNext() }">
								<a onclick="page(${list.pageNo+1});">下一页</a>
							</c:if> 
							<a onclick="page(${list.totalPage });">最后一页</a> <br /> --%>
							 <%-- 跳转到：<input id="pageNo" type="text"  class="form-control form1"  name="pageNo" value="${list.pageNo }" />
							每页记录数：<input type="text" name="pageCount"  class="form-control" id="form1"  value="${list.pageCount }" /> 
							<input type="hidden" name="totalPage" value="${list.totalPage }" id='form1' /> 
							<input type="submit" class="btn btn-primary" value="跳转" /> 共有${list.totalPage }页</td> --%>
						</tr>
						</table>
					
					  </div>
		</div>
	</form>
<!-- <script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script> -->
</body>
</html>


 
