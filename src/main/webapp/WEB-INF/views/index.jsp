<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Chat主页面</title>
		<link href="../../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<script src="../../resources/bootstrap/js/jquery-1.12.2.min.js"></script>
		<script src="../../resources/bootstrap/js/bootstrap.min.js"></script>
	</head>
	<body>
		<!-- top start -->
		<div id="top">
			<!-- 顶部内容 -->
			<div id="top-main" class="top-main">
				<font>
					${date }
				</font>
				<c:choose>
					<c:when test="${not empty username}">
						<font>您好!  ${username}</font>
					</c:when>
					<c:otherwise>
						<div>
							<a id="a-login" href="javascript:void(0)" onclick="loginPop();" data-toggle="modal" data-target="#loginModal">登录</a>
							&nbsp;&nbsp;|&nbsp;&nbsp;
							<a id="a-register" href="mainController/register">注册</a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		
		<!-- loginModal弹出框 start -->
		<div class="modal fade" id="loginModal" tabIndex="-1" role="dialog" aria-labelledby="loginModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h5 class="modal-title" id="loginModalLabel">登录</h5>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label class="col-sm-2 control-label" for="username"></label>
								<div class="col-sm-4">
									<input class="form-controller" id="username" type="text" placeholder="username"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="password"></label>
								<div class="col-sm-4">
									<input class="form-controller" id="password" type="password" placeholder="password"/>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" onclick="login();">登录</button>
					</div>
				</div>
			</div>
		</div>
		<!-- loginModal弹出框 end -->
		
		<!-- top end -->
		
		<!-- middle start -->
		<div id="middle">
			
		</div>
		<!-- middle end -->
		
		<!-- foot start -->
		<div id="footer">
		</div>
		<!-- foot end -->
		
		<!-- 脚本调用 -->
		<script src="../../resources/chat/js/index.js"></script>
		<script src="../../resources/chat/js/login.js"></script>
	</body>
</html>