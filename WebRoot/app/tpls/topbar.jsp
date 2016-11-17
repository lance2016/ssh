<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<nav class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand">信息学院后台管理</a>
    </div>  
    <ul class="nav navbar-nav" ng-controller='changeColor'>
        <li>
            <a ui-sref="index.indexconfig.welcome" ng-click="change($event)" class="a-color-active active">首页</a>
        </li>
        <li>
            <a ui-sref="index.load" ng-click="change($event)" class="a-color">加载文章</a>
        </li>
        <li>
            <a ui-sref="index.adminsetting" ng-click="change($event)" class="a-color">管理员设置</a>
        </li>
     
        <li>
            <a ui-sref="index.settings" ng-click="change($event)" class="a-color">全局设置</a>
        </li>
        <li style="margin-left:300px">
            <a  href="/ssh/init">前台首页</a>
        </li>
        <li>
            <a id="exit" href="#">注销</a>
        </li>
    </ul>
</nav>
