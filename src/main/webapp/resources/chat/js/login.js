//登录事件
function login(){
	var username = $("#username").val();
	var password = $("#password").val();
	if(check(username,password)){
		var params = {'username':username,'password':password};
		$.ajax({
			url:'loginController/login',
			type:'POST',
			contentType:'application/json',
			dataType:'json',
			data:JSON.stringify(params),
			success:function(result){
				if("success"==result){					
					window.location.href="mainController/toMain";
				}
			},
			error:function(){
				alert("Login Failed,Please Login Again...");
			}
		});
	}else{
		alert("Username And Password Are Needed...");
	}
}

//检查用户名或密码是否为空
function check(username,password){
	if(username == null ||username == ""||username==undefined
			||password == null||password==""||password==undefined){
		return false;
	}
	return true;
}