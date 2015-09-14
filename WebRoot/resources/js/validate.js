function name_validate_required(field,alerttxt)
{
	with (field)
	{   
        if(("")==value.trim() || null==value.trim())
        	{alert(alerttxt);return false}
        else {return true}
	}
}

function email_validate_required(field,alerttxt)
{
	with (field)
	{
		apos=value.indexOf("@")
		dotpos=value.lastIndexOf(".")
		if (apos<1||dotpos-apos<2) 
		  {alert(alerttxt);return false}
		else {return true}
	}
}

function phone_validate_required(field,alerttxt)
{
	with (field)
	{
		var reg = /^1[3-9]\d{9}$/;
        if(!reg.test(value))
        	{alert(alerttxt);return false}
        else {return true}
	}
}


function validate_form(thisform)
{
	with (thisform)
	{
		if (name_validate_required(name,"姓名不能为空！")==false)
		{name.focus();return false}
		
		if (name_validate_required(sex,"性别不能为空！")==false)
		{sex.focus();return false}
		
		if (phone_validate_required(phone,"手机号码不符合要求！")==false)
		{phone.focus();return false}
		
		if (email_validate_required(email,"邮箱地址不正确！")==false)
		{email.focus();return false}
		
		
	}
}