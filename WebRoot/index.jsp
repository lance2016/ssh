<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form method="post"  action="ajax/update">
   	<input type="text" name="AllContent.Id">
   		<input type="text" name="AllContent.title">
   		<input type="text" name="AllContent.content">
   		<input type="text" name="AllContent.link">
   		<input type="text" name="AllContent.time">
   		<input type="text" name="AllContent.parentid">
   		<input type="text" name="AllContent.visitedtime">
   		
   	<input type="text" name="AllContent.important">
  	<input type="submit" value="aaa">
   </form>
  </body>
</html>
