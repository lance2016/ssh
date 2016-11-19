<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<!--[if IE 8]>
		<html xmlns="http://www.w3.org/1999/xhtml" class="ie8" lang="zh-CN">
	<![endif]-->
	<!--[if !(IE 8) ]><!-->
		<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
	<!--<![endif]-->
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>后台登陆</title>
	<link rel='stylesheet' id='buttons-css'  href='${pageContext.request.contextPath}/login/css/buttons.min.css' type='text/css' media='all' />
	<link rel='stylesheet' id='open-sans-css'  href='${pageContext.request.contextPath}/login/css/Open.css' type='text/css' media='all' />
	<link rel='stylesheet' id='dashicons-css'  href='${pageContext.request.contextPath}/login/css/dashicons.min.css' type='text/css' media='all' />
	<link rel='stylesheet' id='login-css'  href='${pageContext.request.contextPath}/login/css/login.min.css' type='text/css' media='all' />
	<meta name='robots' content='noindex,follow' />
	</head>
	<body class="login login-action-login wp-core-ui  locale-zh-cn">
	<div id="login">
		<h1></h1>
	
		<form name="loginform" id="loginform" action="login.action" method="post">
			<p>
				<label for="user_login">用户名<br />
				<input type="text" name="user.id" id="user_login" class="input" value="" size="20" /></label>
			</p>
			<p>
				<label for="user_pass">密码<br />
				<input type="password" name="user.password" id="user_pass" class="input" value="" size="20" /></label>
			</p>
			<p class="forgetmenot"><label for="rememberme">${message}</label></p>
			<p class="submit">
				<input type="submit" id="wp-submit" class="button button-primary button-large" value="登录" />
			</p>
			<span><a href="/ssh/init">返回首页</a></span>

	</div>
		<div class="clear"></div>
	</body>
</html>



