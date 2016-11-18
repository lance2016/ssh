<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div  ng-controller="work" class="panel panel-default"  >

<table class="table table-striped">
 <thead>
    <tr>
    	<th>ID</th>
      <th>标题</th>
      <th>删除</th>
      <th>编辑</th>
    </tr>
  </thead>
<tr ng-repeat="x in news">
	<td>{{x.id}}</td>
	<td > {{ x.title}}</td>
 	<td><a ng-click="Delete(x.id)">删除</a></td>
 	<td><a  ui-sref="index.indexconfig.rewrite({id:x.id})">编辑</a></td>
</td>
</tr>
 </table>
  <pagination  total-items="bigTotalItems" ng-model="bigCurrentPage" 
 max-size="maxSize" class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages">
 </pagination> 
   <div>共{{n}}条记录</div>
</div>