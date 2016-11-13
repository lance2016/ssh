<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 该页面是个jsp页，因为图片上传的缓存问题没解决好 -_-!    -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/app/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/app/css/alertify.core.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/app/css/alertify.default.css" id="toggleCSS" />
    <script src="${pageContext.request.contextPath}/app/framework/jquery-1.12.1.min.js"></script>	
    <script src="${pageContext.request.contextPath}/app/framework/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/app/framework/alertify.min.js"></script>	
</head>
<body>
	<form name="frmUpload" enctype="multipart/form-data" action="${pageContext.request.contextPath}/txUploadfile.action" method="post" onsubmit="return validateForm(this)">
		<div class="form-group mt10">
			<label>刊物标题</label>
			<input type="text" class="form-control" name="title"/>
		</div>
		<div class="form-group">
			<label>主编</label>
			<input type="text" class="form-control" name="author"/>
		</div>
		<div class="form-group mt20" >
			<input type="file" id="exampleInputFile" name="uploadFile" class="mt20">
			<input type="hidden" value=ext name="uploadFileContentType">             
			<input id="pic_id" type="hidden" value="1" name="id">             
			<p class="help-block">请上传小于50K的.jpg格式图片</p>
			<input class="btn btn-primary" type="submit" value="提交"/>
		</div>			
	</form>
</body>
<script type="text/javascript">
$(document).ready(function(){
//判断消息
	var msg = "${message}";
	if(msg!='')
		alertify.alert(msg);
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
	 		 reset();
			 alertify.alert("只允许上传 .jpg，请重新选择需要上传的文件！");
			 return false;
	  }
}
</script>
</html>
