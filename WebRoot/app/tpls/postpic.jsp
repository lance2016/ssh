<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 该页面是个jsp页，因为图片上传的缓存问题没解决好 -_-!    -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/app/framework/jquery-1.12.1.min.js"></script>
    <link href="${pageContext.request.contextPath}/app/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/app/css/alertify.core.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/app/css/alertify.default.css"  id="toggleCSS"/>
    <script src="${pageContext.request.contextPath}/app/framework/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/app/framework/alertify.min.js"></script>
</head>
<body>
	<form name="frmUpload" enctype="multipart/form-data" action="${pageContext.request.contextPath}/uploadfile.action" method="post" onsubmit="return validateForm(this)">
		<select class="form-control w200 mt20" id="pic_select">
			<option value='1'>图片1</option>
			<option value='2'>图片2</option>
			<option value='3'>图片3</option>
			<option value='4'>图片4</option>
			<option value='5'>图片5</option>
			<option value='6'>图片6</option>
			<option value='7'>图片7</option>
		</select>
		<div class="form-group mt20" >
			<input type="file" id="exampleInputFile" name="uploadFile" class="mt20">
			<input type="hidden" value=ext name="uploadFileContentType">             
			<input id="pic_id" type="hidden" value="1" name="id">             
			<p class="help-block">请上传小于200K的.jpg格式图片</p>
			<input class="btn btn-primary" type="submit" value="提交"/>
		</div>			
	</form>
	<div>
		<img id="pic_content" width="300px" height="215px" src="" />	
	</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
//判断消息
	var msg = "${message}";
	if(msg!='')
		alertify.alert(msg);
	var pic=1;
	var url = "/sdiia/img/" + pic + ".jpg?" + new Date();
	$('#pic_content').attr('src',url);
});
//更改上传图片
$('#pic_select').on('change',function(){
    var id = this.value;
	//console.log(id);
	var url = "/sdiia/img/" + id + ".jpg?" + new Date();
	$('#pic_content').attr('src',url);
	$('#pic_id').attr('value',id);
	//console.log($('#pic_id').attr('value'));
});

function reset () {
	$("#toggleCSS").attr("href", "../css/alertify.default.css");
	alertify.set({
		labels : {
			ok     : "OK",
			cancel : "Cancel"
		},
		delay : 5000,
		buttonReverse : false,
		buttonFocus   : "ok"
	});
}

function validateForm(frmUpload) {
	  //检查是否提交了上传文件否弹出提示不需要这一功能的删除即可   
	  if (document.all.uploadFile.value == "")
	  {
			 reset();
			 alertify.alert("没有选择上传的文件！");
			 frmUpload.uploadFile.focus();
			 return false;
	  }     
	  //截取提交上传文件的扩展名  
	  var ext = frmUpload.uploadFile.value.match(/^(.*)(\.)(.{1,8})$/)[3];
	  ext = ext.toLowerCase(); //设置允许上传文件的扩展名           
	  if (ext ==  "jpg") {
			 return true;
	  } else {
			 alert("只允许上传 .jpg件，请重新选择需要上传的文件！");
			 return false;
	  }
}
</script>
</html>
