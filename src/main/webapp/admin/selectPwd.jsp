<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>                                    <!-- 登录（管理员）->个人信息 -->
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
            background-color: #f1f1f1;
            font-family: Arial, sans-serif;
        }

        .div_pwd {
            margin: 20px auto;
            width: 50%;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .panel-heading {
            background-color: #517fa4;
            color: #fff;
            padding: 10px;
        }

        .table {
            width: 100%;
            margin-bottom: 0;
        }

        .table tr th,
        .table tr td {
            padding: 10px;
            text-align: left;
        }

        .table tr:nth-child(even) {
            background-color: #f1f1f1;
        }
    </style>

</head>

<body>
	<div class="div_pwd panel panel-default">
		<div class="panel-heading">个人信息</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>账&nbsp;&nbsp;号：</td>
				<td>${usernum }</td>
			</tr>
			<tr>
				<td>姓&nbsp;&nbsp;名：</td>
				<td>${username }</td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;码：</td>
				<td>${password }</td>
			</tr>
			
		</table>
	</div>
</body>
</html>
