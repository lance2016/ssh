<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div class="row">
    <div class="col-md-3">
        <div class="row">
            <div class="col-md-12">
                <div class="list-group" ng-controller="changeBgColor">
                    <a ui-sref="#" class="list-group-item active" >首页管理</a>
                    <a ui-sref="index.indexconfig.xueyuannews" class="list-group-item a-bgcolor" ng-click="change($event)">学院动态</a>
                    <a ui-sref="index.indexconfig.inform" class="list-group-item a-bgcolor" ng-click="change($event)">通知公告</a>
                    <a ui-sref="index.indexconfig.studentwork" class="list-group-item a-bgcolor" ng-click="change($event)">学生工作</a>  
                    <a ui-sref="index.indexconfig.work" class="list-group-item a-bgcolor" ng-click="change($event)">就业工作</a>  
                    <a ui-sref="index.indexconfig.xueshunews" class="list-group-item a-bgcolor" ng-click="change($event)">学术动态</a>  
		            <a ui-sref="index.indexconfig.pic" class="list-group-item a-bgcolor" ng-click="change($event)">轮播</a>
				</div>
            </div>
        </div>
    </div>
    <div class="col-md-9">
        <div ui-view></div>
    </div>
</div>
