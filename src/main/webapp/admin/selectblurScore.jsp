<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                    <!-- 登录（管理员）->成绩管理->成绩信息查看->查询后的页面 -->
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectblurScore.jsp' starting page</title>
    
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
            width: 50%;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            padding: 20px;
        }

        .form1 {
            width: 150px;
            margin-right: 10px;
        }

        .table {
            width: 100%;
            margin-top: 20px;
        }

        .table tr th,
        .table tr td {
            padding: 10px;
            text-align: left;
        }

        .table tr:nth-child(even) {
            background-color: #f1f1f1;
        }

        .panel-heading {
            background-color: #517fa4;
            color: #fff;
            padding: 10px;
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


    <form action="ServletSearchScore" method="post" id="frm">
    <div class="div_list">
   课程名：<input type="text" class="form1 form-control"   name="cosName" value="${score.getCourseName() }" />&nbsp;&nbsp;
  	学&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" class="form1 form-control"  name="stuNum" value="${score.getStuNum() }" />&nbsp;&nbsp;
  	姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text"  class="form1 form-control" name="stuName" value="${score.getStuName() }" /><br/><br/>
  	班&nbsp;&nbsp;&nbsp;&nbsp;级：<input type="text"  class="form1 form-control" name="stuClass" value="${score.getStuClass() }" />&nbsp;&nbsp;
  	专&nbsp;&nbsp;&nbsp;&nbsp;业：<input type="text"  class="form1 form-control" name="major" value="${score.getMajor() }" /> &nbsp;&nbsp;
  	<input type="submit" class="btn btn-primary"  value="查询" /><br/><br/>
		<div class=" panel panel-default">
			<div class="panel-heading">成绩信息</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>学号</td>
				<td>姓名</td>
				<td>班级</td>
				<td>科目</td>
				<td>成绩</td>
				<td>专业</td>
				<td>操作</td>
			</tr>
			<c:forEach var="list" items="${list.pbjs }">
			<tr>
				<td>${list.getStuNum() }</td>
				<td>${list.getStuName() }</td>
				<td>${list.getStuClass() }</td>
				<td>${list.getCourseName() }</td>
				<td>${list.getScoreGrade() }</td>
				<td>${list.getMajor() }</td>
				<td><a href="ServletSelectScore?scoreID=${list.getScoreID() }">修改</a>&nbsp;&nbsp;&nbsp;<a href="ServletDeleteScore?scoreID=${list.getScoreID() }" onclick="return confirm('是否确认删除？')">删除</a></td>
				
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
						每页记录数：<input type="text" name="pageCount" class="form-control form1"
						value="${list.pageCount }" /> 
						
						<input class="btn btn-primary"
						type="submit" value="跳转" /> 共有${list.totalPage }页</td>
				</tr>
		</table>
	</div>
	</form>
  </body>
</html>
