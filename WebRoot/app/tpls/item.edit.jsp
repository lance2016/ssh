<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div ng-controller="edititem">
<h3>导航栏节点id范围为 A~Z           二级节点为   A~Z后加数字  </h3>
<button class="btn btn-primary" ng-click="Add(navs[0].id)">增加子节点</button>
<table class="table-striped" class="col-md-9 text-center">
<thead>
<td>节点id</td><td>标题</td><td>父节点id</td><td>类型</td><td>删除</td><td>编辑</td>
</thead>
	<tr>
		<td width="100px">{{navs[0].id}}</td>
		<td width="200px">{{navs[0].name}}</td>
		<td width="100px">{{navs[0].parentid}}</td>
		<td width="100px">{{navs[0].link}}</td>
		<td width="100px"><a ng-click="Delete(navs[0].id)">删除</a></td>
 		<td><a width="100px"  ui-sref="index.item.rewrite({id:navs[0].id,name:navs[0].name,parentid:navs[0].parentid,type:navs[0].link})">编辑</a></td>
	</tr>
</table>
	
	
</div>
