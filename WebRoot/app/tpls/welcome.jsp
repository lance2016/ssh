<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div class="jumbotron text-center">
    <h2>尊敬的用户</h2>
    <p>
       欢迎使用<span class="text-danger"><a href="/ssh/init">信息学院</a></span>后台管理系统
    </p>
</div>