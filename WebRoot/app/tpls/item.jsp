<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div  class="col-md-3">
	<div class="dtree" ng-controller="item">
		<a href="javascript: d.openAll();">全部展开</a> | <a href="javascript: d.closeAll();">全部折叠</a><br/><br/>
		<div id="tx"></div>
	</div>
</div>

<div class="col-md-9">
        <div ui-view></div>
</div>
