<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div ng-controller='write'>	
	<form role="form">
		<div class="form-group">
				<label>选择栏目</label>
				<select   class="form-control w200 mt10" ng-model="parentid">
					
					<option ng-repeat="nav in navs" value="{{nav.id}}">{{nav.name}}</option>
					
				</select>
			</div>		
	    <div class="form-group">
		  <label for="name">标题</label>
		  <input type="text" class="form-control" required  ng-model="title"
			 placeholder="请输入标题">
	   </div>
	  
	  	
	   <div class="form-group">
		
		  <input type="text" class="form-control" ng-show="disabled" disabled ng-model="link"
			 placeholder="请输入链接">
	   </div>
	   
	   <div class="form-group">
		  <label for="name">日期</label>
		  <input type="text" class="form-control" required   ng-model="time"
			 placeholder="请输入日期">
	   </div>
	   
	    <div class="form-group">
		  
		  <input type="text" class="form-control" ng-show="false" ng-model="visitedtime"
			 placeholder="请输入访问次数">
	   </div>
	   

	   <div class="form-group">
		  <label for="name">标记重要</label>
		<select class="form-control"  ng-model="important" >
		   <option value="1">是</option>
		    <option value="0">否</option>
	    </select>
	   </div>

	   <div class="form-group">
			 <label for="name">内容</label>
			<textarea name="WriteArticleEditor" id="WriteArticleEditor" required  ng-model="content"  placeholder="请输入内容"></textarea>
	   </div>

	   <button type="submit" class="btn btn-info" ng-click="Submit(title,content,link,time,visitedtime,important,parentid)">提交</button>
	</form>
</div>				



