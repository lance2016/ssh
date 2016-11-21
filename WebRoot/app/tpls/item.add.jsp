<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<div ng-controller="addnav">
<form role="form">
			
	    <div class="form-group">
		  <label for="name">节点ID</label>
		  <input type="text" class="form-control" required  ng-model="id"
			 placeholder="请输入节点ID">
	   </div>
	  
	  <div class="form-group">
		  <label for="name">父类节点ID</label>
		  <input type="text" class="form-control" required  disabled ng-model="parentid"
			 >
	   </div>
	   
	   <div class="form-group">
	    <label for="name">标题</label>
		  <input type="text" class="form-control"  required ng-model="name"
			 placeholder="请输入标题">
	   </div>
	   
	  <div class="form-group">
		  <label for="name">类型</label>
		<select class="form-control" ng-model="link" >
		   <option value="static">静态页面</option>
		    <option value="#">记录</option>
		     <option value="index">首页栏目</option>
	    </select>
	   
	   <button ng-click="submit()">增加</button>
	   
</div>
