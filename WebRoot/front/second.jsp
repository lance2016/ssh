<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
	<title>信息学院</title>
	 <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://www.w3cschool.cc/try/angularjs/1.2.5/angular.min.js"></script>
<script src="http://cdn.bootcss.com/angular-ui-bootstrap/0.11.2/ui-bootstrap-tpls.js"></script>
	 	<link rel="stylesheet" href="${pageContext.request.contextPath}/front/css/bootstrap.min.css" >
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/front/css/style.css">
    	<script src="${pageContext.request.contextPath}/front/js/jquery-2.2.2.min.js"></script>
    	<script src="${pageContext.request.contextPath}/front/js/bootstrap.min.js"></script>
    	
</head>
<body>
<div class="container_page">
	<div class="header" >
		<img src="${pageContext.request.contextPath}/front/images/head.jpg"  >
	</div>

	<div id="banner" class="banner-list ">
			
				<ul>
					<li><a href="/ssh/init" style="text-decoration:none">首页</a></li>
					<c:forEach var="aa" items="${navList}">
						<c:if test="${aa.link=='#'}">
							<li><a href="${pageContext.request.contextPath}/qsf_query?id=${aa.id}" style="text-decoration:none">${aa.name}</a></li>
						</c:if>
						<c:if test="${aa.link!='#'}">
							<li><a href="${aa.link}" style="text-decoration:none">${aa.name}</a></li>
						</c:if>
					</c:forEach>
				</ul>
				
	</div>	
	<div style="height:800px;padding-top:15px">
		<div class="col-md-12">
			<div class="col-md-3">
			
				<div>
					<c:forEach var="m" items="${navLeftList}">
						<div class="text-center">
							<a class="btn btn-default btn-lg " style="width:200px" href="qsf_changequery?leftid=${m.id}">${m.name}</a>
						</div>
					</c:forEach>				
				</div>
			</div>
			<div class="col-md-9">
				<p >	当前位置:<a href="init">首页 </a> | ${locationList.get(0).getName() }</p>
					<ul>
					<c:forEach var="r" items="${allContentList}">
						<div>
						
						<c:if test="${r.link=='#'}">
							${r.content}
						</c:if>
						<c:if test="${r.link!='#' }">
							<a href="qf_query?id=${r.id}&add=${locationList.get(0).getName()}&leftid=${navLeftList.get(0).getId()}">${r.title }</a>
						</c:if>
							<!--<a href="qf_query?id=${r.id}&add=${locationList.get(0).getName()}&leftid=${navLeftList.get(0).getId()}">  </a>-->
						</div>
					</c:forEach>				
				</ul>
						
			<!-- 	<div ng-app="myApp" >
      				  <section ng-controller="pageDemo" class="col-md-9" >
           		 <pagination total-items="bigTotalItems" ng-model="bigCurrentPage" max-size="maxSize" class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages">
           		 </pagination> 
  					
          	  <pre>共{{totalItems}}条 当前：{{bigCurrentPage}}/{{numPages}}</pre>
      				  </section>

				</div> -->
 				 
			</div>
		</div>
	</div>
	
	<div class="footer" >
		<div id="foot" class="banner-list ">
		<div class="text-center" style="color:white;font-size:14px;">
			Copyright © 山东农业大学信息科学与工程学院<span><a href="app/index.html" style="color:red">管理入口</a></span> <br/> 
			地址:文理大楼1201 邮编:271018  |  技术支持：陈飞龙</br>　
		</div>
				
	</div>	
</div>
</body>

</html>