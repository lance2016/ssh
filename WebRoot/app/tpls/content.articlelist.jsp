<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<h3>文章</h3>
<a ui-sref="index.write"><button class="btn btn-primary">写文章</button></a>
<div ng-controller='LoadArticle'>

	 <select   class="form-control w200 mt10" ng-model="value" ng-change="LoadById(value)">
					
					<option ng-repeat="nav in navs" value="{{nav.id}}">{{nav.name}}</option>
					
				</select>
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
	<pagination  total-items="bigTotalItems" ng-model="bigCurrentPage" 
 max-size="maxSize" class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages">
 </pagination> 
   <div>共{{n}}条记录</div>
</div>
