<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div ng-controller='Editnav'>	
	<form role="form">
	
		<div class="form-group">
		  <label for="name">节点id</label>
		  <input type="text" class="form-control"   required  ng-model="id"
			 placeholder="id">
	   </div>

	    <div class="form-group">
		  <label for="name">节点名称</label>
		  <input type="text" class="form-control" required  ng-model="name"
			 placeholder="请输入标题">
	   </div>
	  
	  	<div class="form-group">
		  <label for="name">父节点id</label>
		  <input type="text" class="form-control" required  ng-model="parentid"
			 placeholder="请输入标题">
	   </div>
	   
	   <div class="form-group">
		  <label for="name">类型</label>
		<select class="form-control" ng-model="type" >
		   <option value="static">静态页面</option>
		    <option value="#">记录</option>
		     <option value="index">首页栏目</option>
	    </select>
	   </div>
 
	   <button type="submit" class="btn btn-info" ng-click="Submit(id,name,type,parentid)">提交</button>
	</form>
</div>				



