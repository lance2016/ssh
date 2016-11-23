<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<nav class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" style="font-size:2.2em">信息学院后台管理</a>
    </div>  
    <br/>
     <br/>
    <ul class="nav navbar-nav text-center" ng-controller='changeColor'>
        <li>
            <a ui-sref="index.indexconfig.welcome" ng-click="change($event)" class="a-color-active active">首页</a>
        </li>
        <li>
            <a ui-sref="index.load" ng-click="change($event)" class="a-color">导航栏</a>
        </li>
         <li>
            <a ui-sref="index.write" ng-click="change($event)" class="a-color">写文章</a>
        </li>
         <li>
            <a ui-sref="index.loadstatic" ng-click="change($event)" class="a-color">静态内容管理</a>
        </li>
         <li>
            <a ui-sref="index.item" ng-click="change($event)" class="a-color">栏目管理</a>
        </li>
        <li>
            <a ui-sref="index.search" ng-click="change($event)" class="a-color">搜索</a>
        </li>
        <li>
            <a ui-sref="index.manager" ng-click="change($event)" class="a-color">管理员设置</a>
        </li>
     
       
        <li >
            <a  href="/ssh/init"> 前台首页 </a>
        </li>
        <li>
          <a id="exit" onclick="Exit()">注销</a>
        </li>
    </ul>
  
</nav>
