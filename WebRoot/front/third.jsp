<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
	<title>信息学院</title>
	 	<link rel="stylesheet" href="${pageContext.request.contextPath}/front/css/bootstrap.min.css" >
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/front/css/style.css">
    	<script src="${pageContext.request.contextPath}/front/js/jquery-2.2.2.min.js"></script>
    	<script src="${pageContext.request.contextPath}/front/js/bootstrap.min.js"></script>
</head>
<body >
<div class="container_page">
	<div class="header" >
		<img src="${pageContext.request.contextPath}/front/images/head.jpg"  >
	</div>

	<div id="banner" class="banner-list ">
			
				<ul>
					<li><a href="http://localhost:8080/ssh/init" style="text-decoration:none">首页</a></li>
					<c:forEach var="aa" items="${navList}">
						<li><a href="${pageContext.request.contextPath}/qsf_query?id=${aa.id}" style="text-decoration:none">${aa.name}</a></li>
					</c:forEach>
				</ul>
	</div>	
	<div style="height:800px">
	<div class="col-md-12" >
			<p class="text-right">当前位置：<a href="init">首页</a> | <a href="qsf_changequery?leftid=${leftid}">${add }</a> | ${allContentList.get(0).getTitle()}</a></p>
			<c:forEach var="m" items="${allContentList}">
				<h2 class="text-center">${m.title}</h2>
				<p class="text-center">发布时间 ${m.time }  浏览次数 ${m.visitedtime }</p>
				<hr style="border:10px"/>
				<div style=" font-family: 宋体;font-size: 16px;">
					${m.content}  
				</div>
					
					</c:forEach>
	</div>
	

</div>
	<div class="footer" >
		<div id="foot" class="banner-list ">
		<div class="text-center" style="color:white;font-size:14px;">
			Copyright © 山东农业大学信息科学与工程学院 <span><a href="app/index.html" style="color:red">管理入口</a></span> <br/> 
			地址:文理大楼1201 邮编:271018  |  技术支持：陈飞龙</br>　
		</div>
				
	</div>
</div>
</body>
</html>