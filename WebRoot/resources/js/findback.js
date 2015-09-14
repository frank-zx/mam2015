$('#btn-catch').bind('click',function(){
	var emailValue = $.trim($('#email').val());
	var pathUrl = 'membernotlogin/sentResetPwdCode.action';
	var successStr = '验证码获取成功,请去邮箱查看';
	var failStr = '该邮箱尚未注册';
	var sourceData = {
			email : emailValue	
	};
	console.log(emailValue);
	if(emailValue !== ""){		
		$.ajax({
			type:"POST",
			url:pathUrl,
			data:sourceData,
			success:function(data){
				if(data === "success"){
					$('#find-back .find-form .road1').fadeOut();
					$('#find-back .find-form .road2').fadeIn();
					$('#road-two').addClass('road-active');
					alert(successStr);
				}else if(data === "emailNotExist"){
					alert(failStr);
				}else{
					alert("邮箱验证失败");
				}
			}
		});
	}else{
		alert('请输入登录邮箱');
	}
});
$('#btn-coder').bind('click',function(){
	var coderValue = $.trim($('#coder').val());
	var pathUrl = 'membernotlogin/verifyCode.action';
	var successStr = '验证码验证成功，请重新设置密码';
	var failStr = '验证码验证失败';
	var sourceData = {
			resetPwdCode : coderValue	
	};
	if(coderValue !== ""){
		$.ajax({
			type:"POST",
			url:pathUrl,
			data:sourceData,
			success:function(data){
				if(data === "success"){
					$('#find-back .find-form .road2').fadeOut();
					$('#find-back .find-form .road3').fadeIn();
					$('#road-thr').addClass('road-active');
					alert(successStr);
				}else{
					alert(failStr);
				}
			}
		});
	}else{
		alert("请输入验证码");
	}
});
/*$('#btn-submit').bind('click',function(){
	var newpwdValue = $.trim($('#new-pw').val());
	var newpwd2Value = $.trim($('#repeat-pw').val())
	if(newpwdValue === newpwd2Value){
		$('#form3').submit();		
	}else{
		alert("密码输入不一致");
	}
});*/

$('#btn-submit').bind('click',function(){
	var newpwdValue = $.trim($('#new-pw').val());
	var newpwd2Value = $.trim($('#repeat-pw').val())
	len = parseInt(newpwdValue.length);
	console.log(len);
	if(len < 6){
		alert("密码至少6位数！");
		return false;
	}else{
		if(newpwdValue != newpwd2Value){
			alert("密码不一致！");
			return false;
		}
		$('#form3').submit();
		
	}
});
