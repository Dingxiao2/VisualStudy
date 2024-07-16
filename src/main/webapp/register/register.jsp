<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
  body {
    background-color: #f2f2f2;
    font-family: Arial, sans-serif;
  }

  form {
    margin: 50px auto;
    padding: 20px;
    width: 300px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
  }

  input[type="submit"],
  input[type="reset"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 3px;
    background-color: #4CAF50;
    color: #fff;
    cursor: pointer;
  }

  /* 添加更多样式规则来满足你的需求 */
</style>
  </head>
  
<script type="text/javascript">
window.onload = function(){
	particleBg('body', {
			color: 'rgba(255, 255, 255, 0.5)'
		});
}
</script>
<script type="text/javascript">
	
	function AjaxChecked(){
		var xmlHttpRequest=null;
		if(XMLHttpRequest){
			xmlHttpRequest=new XMLHttpRequest();
		}else{
			xmlHttpRequest=new ActiveXObject("Microsoft.XMLHTTP");
		}
		if(xmlHttpRequest!=null){
			//拿到账号
			var stuNum=document.getElementById("stuNum");
			if(stuNum.value==""){
				document.getElementById("stuNumcheck").innerHTML = "学号不能为空";
				return;
			}else{
			
				var url="ServletRegisterStu?stuNum="+stuNum.value;
				xmlHttpRequest.open("get",url,true);
				
				xmlHttpRequest.send();
				xmlHttpRequest.onreadystatechange=function(){
					if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200){
						var text = xmlHttpRequest.responseText;
						//alert(text);
						document.getElementById("stuNumcheck").innerHTML = text;
					}
				};
			}
		}
	}
	
	function namecheck(){
		var stuName=document.getElementById("stuName").value;
		var rename=/^[\u4e00-\u9fa5]+$/gi;          //中文判断
		if(stuName==""){
			document.getElementById("stuNamecheck").innerHTML = "用户名不能为空";
		}
		else if (!rename.test(stuName))
		{
			document.getElementById("stuNamecheck").innerHTML = "请输入中文名，如：王文军";
		}else{
			document.getElementById("stuNamecheck").innerHTML = "正确";
		}
	}
	
	function pwdcheck(){
		var pwd1=document.getElementById("password").value;
		if(pwd1==""){
			document.getElementById("stuPwdcheck").innerHTML = "密码不能为空";
		}else if(pwd1.length<6){
			document.getElementById("stuPwdcheck").innerHTML = "密码不能小于六位";
		}else {
			document.getElementById("stuPwdcheck").innerHTML = "正确";
		}
	}
	
	function pwdc(){
		
		var pwd1=document.getElementById("password").value;
		var pwd2=document.getElementById("pwd").value;
		
		if(pwd1==""){
			document.getElementById("stuPwdrcheck").innerHTML = "确认密码不能为空";
		}else if(pwd1!=pwd2){
			document.getElementById("stuPwdrcheck").innerHTML = "两次密码不一致";
		}else {
			document.getElementById("stuPwdrcheck").innerHTML = "正确";
		}
	}
</script>
</head>

<body>
	 <form action="ServletRegistersStudent" method="post"> 
	
		<div class="div_ads">
		<font>${msg}</font><h3>注册页面</h3>
		<hr class="color:black">
		
			<table>
				<tr>
					<td colspan="2"><input type="text" name="stuNum" class="put form-control" id="stuNum" onblur="AjaxChecked();" placeholder="学号" aria-describedby="basic-addon1"/></td>
					<td><font id="stuNumcheck"></font></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="text" name="stuName" class="put form-control" id="stuName" onblur="namecheck();" placeholder="姓名" aria-describedby="basic-addon1"/></td>
					<td><font id="stuNamecheck"></font></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="password" name="password" class="put form-control" id="password" onblur="pwdcheck();"  placeholder="密码" aria-describedby="basic-addon1"/></td>
					<td><font id="stuPwdcheck"></font></td>
				</tr>
				<tr>
				
					<td colspan="2"><input type="password" name="pwd" class="put form-control" id="pwd" onblur="pwdc();"  placeholder="确认密码" aria-describedby="basic-addon1"/></td>
					<td><font id="stuPwdrcheck"></font></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="radio"  name="stuSex" value="男" checked="checked" />男&nbsp;&nbsp;
						<input type="radio" name="stuSex" value="女" />女
					</td>
				</tr>
				<tr>
				
					<td colspan="2"><input type="text" name="stuAge" class="put form-control" placeholder="年龄" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="text" name="stuClass" class="put form-control" placeholder="班级" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
				
					<td colspan="2"><input type="text" name="major" class="put form-control" placeholder="专业" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="text" name="department" class="put form-control" placeholder="院系" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="text" name="phone" class="put form-control" placeholder="电话" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="hidden" name="role" value="0" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="注册" class="putb btn btn1" /></td>
					<td><input type="reset" value="清空" class="putb btn btn1" /></td>
				</tr>
			</table>
		</div>
	 </form> 
</body>
</html>
  