<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<h3>文章</h3>
<a ui-sref="index.write"><button class="btn btn-primary">写文章</button></a>
<div ng-controller='LoadArticle'>
	<select class="form-control w200 mt10" ng-model="value" ng-change="LoadById(value)">
	  <option value='Z0'>学院动态</option>
	  <option value='Z1'>通知公告</option>
	  <option value='Z2'>学生工作</option>
	  <option value='Z3'>就业工作</option>
	  <option value='Z4'>学术动态</option>
	</select>
	<table class="table table-hover mt20">
		<tr><th>文章名</th><th>发布日期</th><th>访问次数</th><th>编辑</th><th>删除</th></tr>		
		<tr ng-repeat="article in articles">
			<td width="40%">{{article.title}}</td>
			<td>{{article.time}}</td>
			<td>{{article.visitedtime}}</td>
			<td><a ui-sref="index.indexconfig.rewrite({id:article.id})">编辑</a/></td>
			<td><a ng-click="Delete(article.id)">删除</a/></td>
		</tr>
	</table>
</div>
