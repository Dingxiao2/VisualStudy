<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                        <!-- 登录（老师）->成绩管理->成绩信息查看 -->
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stuScore.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
    .form1 {
        padding: 5px;
        margin: 5px;
    }
    
    .btn {
        padding: 5px 10px;
        background-color: #337ab7;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    
    .btn:hover {
        background-color: #23527c;
    }
    
    .div_list {
        margin: 20px;
    }
    
    .table {
        width: 100%;
        border-collapse: collapse;
    }
    
    .table td, .table th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }
    
    .table tr:nth-child(even){background-color: #f2f2f2;}
    
    .table tr:hover {background-color: #ddd;}
    
    .panel {
        margin-top: 20px;
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
  
    <form action="ServletTeaSearchScore" method="post" id="frm">
    <div class="div_list">
    学&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" class="form1 form-control"  name="stuNum" value="${score.getStuNum() }" />&nbsp;&nbsp;
  	姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text"  class="form1 form-control"  name="stuName" value="${score.getStuName() }" />&nbsp;&nbsp;
  	班&nbsp;&nbsp;&nbsp;&nbsp;级：<input type="text"  class="form1 form-control"  name="stuClass" value="${score.getStuClass() }" />&nbsp;&nbsp;
  	
  	<input class="btn btn-primary" type="submit" value="查询" /><br/><br/>
		<div class=" panel panel-default">
				
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>学号</td>
				<td>姓名</td>
				<td>班级</td>
				<td>科目</td>
				<td>成绩</td>
				<td>专业</td>
				
			</tr>
			<c:forEach var="list" items="${list.pbjs }">
			<tr>
				<td>${list.getStuNum() }</td>
				<td>${list.getStuName() }</td>
				<td>${list.getStuClass() }</td>
				<td>${list.getCourseName() }</td>
				<td>${list.getScoreGrade() }</td>
				<td>${list.getMajor() }</td>
				
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
						每页记录数：<input type="text" class="form-control form1" name="pageCount"
						value="${list.pageCount }" /> 
						
						<input class="btn btn-primary"
						type="submit" value="跳转" /> 共有${list.totalPage }页</td>
				</tr>
		</table>
	</div>
	</div>
	</form>
  </body>
</html>
 
