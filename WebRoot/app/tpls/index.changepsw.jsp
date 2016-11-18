<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div ng-controller='manage_id'>	
   <form role="form"  >
		
	<label for="name">账号</label>
		<input type="text"   placeholder="id"  ng-model='id' 
		   disabled required class="form-control" ><br/>
		   
	<label for="name">当前密码</label>
		<input type="password"  ng-model="psw"  placeholder="当前密码" required class="form-control" ><br/>
		
	<label for="name">新的密码 </label>
	
		<input type="password"  ng-model="psw1"   placeholder="新的密码" required class="form-control" ><br/>
		
	<label for="name">确认密码 </label>
		<input type="password"  ng-model="psw2" placeholder="确认密码" required class="form-control"><br/>
			<button ng-click="change()" class="btn btn-info">修改 </button>
  	
</form>
</id>
