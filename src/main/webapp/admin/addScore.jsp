<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                                     <!-- 登录（管理员）->成绩管理->添加学生成绩 -->
<head>
<base href="<%=basePath%>">

<title>My JSP 'addScore.jsp' starting page</title>

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

		.div_ads .put {
			width: 100%;
		}

		.div_ads .putb {
			margin-top: 10px;
			width: 80px;
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
	function numChenked() {
		var xhr = null;
		if (XMLHttpRequest) {
			xhr = new XMLHttpRequest();
		} else {
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
		}

		if (xhr != null) {

			var stuNum = document.getElementById("num");

			var url = "ServletFindStu";
			//	var url="ServletFindStu?stunum="+stuNum.value;
			xhr.open("post", url, true);
			xhr.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded");
			//	xhr.send();
			xhr.send("stunum=" + stuNum.value);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					xmlDoc = xhr.responseXML;
					txt = "";
				
					x = xmlDoc.getElementsByTagName("title");
					for (i = 0; i < x.length; i++) {
						txt = x[i].childNodes[0].nodeValue;
						
						document.getElementById("a"+i).value =txt;
					}
					
				}
				
			};
		}

	}
</script>
</head>

<body>
	<form action="ServletaddScore" method="post">
	




		<div class="div_ads">
			<table>
				<tr>
					<td>学&nbsp;&nbsp;&nbsp;号：</td>
					<td><input type="text" name="stuNum" class="put form-control" id="num"
						onblur="numChenked();" />
						
					</td>
				</tr>
				<tr>
					<td>姓&nbsp;&nbsp;&nbsp;名：</td>
					<td><!-- <input type="text" name="stuName" class="put"
						id="i0" /> -->
						<input type="text" id="a0" name="stuName" class="put form-control">
					</td>
				</tr>
				<tr>
					<td>班&nbsp;&nbsp;&nbsp;级：</td>
					<td><!-- <input type="text" name="stuClass" class="put"
						id="i1" /> -->
						<input type="text" id="a1" name="stuClass" class="put form-control">
					</td>
				</tr>

				<tr>
					<td>科&nbsp;&nbsp;&nbsp;目：</td>
					<td><input type="text" name="courseName" class="put form-control" />
					</td>
				</tr>
				<tr>
					<td>成&nbsp;&nbsp;&nbsp;绩：</td>
					<td><input type="text" name="scoreGrade" class="put form-control" id="tim" />
					</td>
				</tr>
				<tr>
					<td>专&nbsp;&nbsp;&nbsp;业：</td>
					<td><!-- <input type="text" name="major" class="put" id="i2"
						 /> -->
						 <input type="text" id="a2" name="major" class="put form-control">
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="添加" class="putb btn btn-primary" />
					</td>
					<td><input type="reset" value="清空" class="putb btn btn-danger" />
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
