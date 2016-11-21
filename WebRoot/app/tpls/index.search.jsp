<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<div  ng-controller="SearchCtrl">
   <form class="bs-example bs-example-form" role="form">
      <div class="row col-md-offset-0">

         <div class="col-md-4">
            <div class="input-group">
               <input type="text" ng-model="keywords" class="form-control">
               <span class="input-group-btn">
                 <button type="submit" class="btn btn-info" ng-click="search()">搜索</button>
               </span>
            </div><!-- /input-group -->
         </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
   </form>
   
   <table class="table" >
		<tr ng-repeat="x in articles">
			<td width="40%" >{{x.title}}</td>
			<td width="20%" >{{x.time}}</td>
			<td  width="20%" ><a ng-click="Delete(x.id)">删除</a/></td>
			<td  width="20%" ><a ui-sref="index.indexconfig.rewrite({id:x.id})">编辑</a/></td>
		</tr>
	</table>
</div>
   