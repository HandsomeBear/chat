<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>登录</title>
		<link href="../../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<script src="../../resources/bootstrap/js/jquery-1.12.2.min.js"></script>
		<script src="../../resources/bootstrap/js/bootstrap.min.js"></script>
	</head>
	<body>
		<!-- 主题内容start -->
		<div id="content">
			<!-- 左侧显示内容start -->
			<div id="left">
			</div>
			<!-- 左侧显示内容end -->
			
			<!-- 右侧登录框start -->
			<div id="right">
				<form id="loginForm" name="loginForm" action="" method="post">
					<table>
						<tr>
							<td>用户名:</td>
							<td><input type="text" id="username" name="username"></td>
						</tr>
						<tr>
							<td>密码:</td>
							<td><input type="password" id="password" name="password"></td>
						</tr>
						<tr>
							<td colspan="2"><button type="button" id="submit" name="submit" 
								class="btn btn-primary" onclick="login();">登录</button></td>
						</tr>
					</table>
				</form>
			</div>
			<!-- 右侧登录框end -->
		</div>
		<!-- 主题内容end -->
		
		<!-- 引用login.js脚本 -->
		<script src="../../resources/chat/js/login.js"></script>
	</body>
</html>