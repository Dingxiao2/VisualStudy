<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                       <!-- 登录（管理员）->课程管理->添加课程 -->
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
		.div_ads {
			margin: 20px;
			padding: 20px;
			background-color: #f1f1f1;
			width: 300px;
		}

		.div_ads table {
			width: 100%;
		}

		.div_ads td {
			padding: 10px;
		}

		.div_ads .form-control {
			width: 100%;
		}

		.div_ads .btn-primary {
			background-color: #337ab7;
			color: white;
			border: none;
			cursor: pointer;
		}

		.div_ads .btn-primary:hover {
			background-color: #286090;
		}

		.div_ads .btn-danger {
			background-color: #d9534f;
			color: white;
			border: none;
			cursor: pointer;
		}

		.div_ads .btn-danger:hover {
			background-color: #c9302c;
		}
	</style>
	

<script type="text/javascript">
    function check()
   {   
        var date = document.getElementById("tim").value;
        var result = date.match(/((^((1[8-9]\d{2})|([2-9]\d{3}))(-)(10|12|0?[13578])(-)(3[01]|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))(-)(11|0?[469])(-)(30|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))(-)(0?2)(-)(2[0-8]|1[0-9]|0?[1-9])$)|(^([2468][048]00)(-)(0?2)(-)(29)$)|(^([3579][26]00)(-)(0?2)(-)(29)$)|(^([1][89][0][48])(-)(0?2)(-)(29)$)|(^([2-9][0-9][0][48])(-)(0?2)(-)(29)$)|(^([1][89][2468][048])(-)(0?2)(-)(29)$)|(^([2-9][0-9][2468][048])(-)(0?2)(-)(29)$)|(^([1][89][13579][26])(-)(0?2)(-)(29)$)|(^([2-9][0-9][13579][26])(-)(0?2)(-)(29)$))/);
        if(result==null)
        {
            alert("请输入正确的日期格式");
            doucument.getElementById("tim").focus();
            return false;
        }
        
}
    </script>

</head>

<body>
	<form action="ServletaddCourse" method="post">
	
		<div class="div_ads">
			<table>
				<tr>
					<td>科&nbsp;&nbsp;&nbsp;目：</td>
					<td class="_td"><input type="text" name="courseName" class="form-control"/></td>
				</tr>
				<tr>
					<td>学&nbsp;&nbsp;&nbsp;分：</td>
					<td class="_td"><input type="text" name="courseCredit" class="form-control" /></td>
				</tr>
				<tr>
					<td>学&nbsp;&nbsp;&nbsp;时：</td>
					<td class="_td"><input type="text" name="courseHours" class="form-control" /></td>
				</tr>
				
				<tr>
					<td>任课教师：</td>
					<td class="_td"><input type="text" name="courseTea" class="form-control" /></td>
				</tr>
				<tr>
					<td>开课时间：</td>
					<td class="_td"><input type="text" name="courseDate" class="form-control" id="tim" onblur="check();" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="添加" class="btn btn-primary" /></td>
					<td><input type="reset" value="清空" class="btn btn-danger" /></td>
				</tr>
			</table>
		</div>
	</form>

</body>
</html>
