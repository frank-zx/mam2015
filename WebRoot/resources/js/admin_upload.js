(function(){
	var maxSize = 20*1024*1024,
		warnMg = "请选择要上传的文件",
		errMg = "上传文件不能超过20MB",
		tipMg = "您的浏览器暂不支持计算上传文件的大小,建议使用IE、FireFox、Chrome浏览器.";
	
	var browerfg = {},
		user_agent = window.navigator.userAgent;
	if (user_agent.indexOf("MSIE") >= 1) {
		browerfg.ie = true;
	}else if (user_agent.indexOf("Chrome") >= 1) {
		browerfg.chrome = true;
	}else if (user_agent.indexOf("Firefox") >= 1) {
		browerfg.firefox = true;
	}
	$('#js-btn-upload').live('click',function(){
		checkFile(maxSize, errMg, warnMg, tipMg, browerfg);
	});
})();

function checkFile(maxSize,errMg,warnMg,tipMg,browerfg){
	try {
		var obj_file = $('#js-fileInput');
		if (obj_file.val() == "") {
			artDialog({
				title: '提示：',
				content: warnMg,
				fixed:true,
				lock:true
			},
			function(){
				return false;
			}
			);
			return false;
		}
		var filename = $('#js-fileInput').val();
		abc = filename.lastIndexOf(".");
		var bcd = filename.substring(abc + 1);
		if (bcd != "doc" && bcd != "docx" && bcd != "pdf") {
			alert("文件类型不正确");
			return false;
		}
		var file_size = 0;
		if (browerfg.firefox || browerfg.chrome) {
			file_size = findFileSize($('#js-fileInput'));
		} else if(browerfg.ie) {
			var obj_img = $('#tempimg');
			obj_img.attr('dynsrc',obj_file.val());
			file_size = boj_img.fileSize;
		}else {
			artDialog({
				title: '提示：',
				content: tipMg,
				fixed:true,
				lock:true
			},
			function(){
				return false;
			}
			);
			return false;
		}
		
		if (file_size == -1) {
			artDialog({
				title: '提示：',
				content: tipMg,
				fixed:true,
				lock:true
			},
			function(){
				return false;
			}
			);
			return false;
		}else if (file_size > maxSize) {
			artDialog({
				title: '提示：',
				content: errMg,
				fixed:true,
				lock:true
			},
			function(){
				return false;
			}
			);
		}else {
			artDialog({
				title:'提示：',
				content:"文件大小符合要求,是否确定上传？？？",
				fixed:true,
				lock:true
			},
			function(){
				$('#js-form').submit();
			},
			function(){
				return false;
			});
		}
	} catch (e) {
		console.log(e);
	}
}
/**
 * 计算文件大小，并返回
 * @param field_id
 */
function findFileSize(field_id){
	var byteSize  = field_id.get(0).files[0].size;
	return (Math.ceil(byteSize));//“XXXX KB”
}