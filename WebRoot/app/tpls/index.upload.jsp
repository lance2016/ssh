<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

  	<s:actionerror/>
    <form  style="padding:30px"; action="${pageContext.request.contextPath}/upload" method="post" enctype="multipart/form-data">
    	
    	
    	<input type="file" name="photo"  label="靓照"></s:file>
    	
    	<input type="submit" style="margin-top:30px"; value="上传" class="btn btn-primary"></s:submit>
    </form>

