$('#js-title').live('keyup',function(){
	var titleValue = $.trim($('#js-title').val()),
		titleLength = titleValue.length,
		maxLength = 40;
	if (titleLength > maxLength) {
		titleValue = titleValue.substr(0,maxLength);
	}else {
		titleValue = titleValue;
	}
	$('#js-title').val(titleValue);
});

$('#js-btn-sub').live('click',function(){
	var titleValue = removeTag($('#js-title').val());
	$('#js-title').val(titleValue);
	if (titleValue === "") {
		artDialog({
			title:'提示：',
			content:'消息标题不能为空',
			fixed:true,
			lock:true
		},
		function(){
			return false;
		});
	}else{
		$('#js-msg-sub').submit();
	}
});

function removeTag(str){
	str = str.replace(/<\/?[^>]*>/g,'<标签隐去>'); //remove Tag
	str = str.replace(/[ | ]*\n/g,'\n');//remove kong bai hang of hang wei.
	str=str.replace(/ /ig,'');
	return str;
}



