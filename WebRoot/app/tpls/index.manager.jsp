<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
                    <a ui-sref="#" class="list-group-item active" >账号管理</a>
					<a ui-sref="index.manager.changepsw" class="list-group-item" ng-click="change($event)">修改密码</a>
		          <!--   <a ui-sref="index.manager.changename" class="list-group-item" ng-click="change($event)">修改账户</a> -->
				</div>
            </div>
        </div>
    </div>
    <div class="col-md-9">
        <div ui-view></div>
    </div>
</div>
