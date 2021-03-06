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



<script>
	$(function(){
		$("[id^='a_']").mouseover(function(){
			var id = this.id;
			id = 'a'+id;
			$('#'+id).show();
		});
		
		$("[id^='a_']").mouseleave(function(){
			var id = this.id;
			id = 'a'+id;
			$('#'+id).hide();
		});
				
	});

</script>



<body>
<div class="container_page">
	<div class="header" >
		<img src="${pageContext.request.contextPath}/front/images/head.jpg"  >
	</div>

	<div id="banner" class="banner-list ">

				<ul>
			<li><a href="init" style="text-decoration:none"  class="nav navbar-nav">首页</a></li>
			
			<c:forEach var="aa" items="${navList}">
						<c:if test="${aa.link=='#'}">
							<li  class="dropdown" id="a_${aa.id}">
							
							<a href="${pageContext.request.contextPath}/qsf_query?id=${aa.id}&pagenum=1"  class="dropdown-toggle" style="text-decoration:none">
							${aa.name}
							</a>
								<ul class="dropdown-menu" id="aa_${aa.id }" style="margin-left:-4.5rem;margin-top:-0px">
								<c:forEach var="twoa" items="${navListTwo}">
									<c:if test="${twoa.parentid==aa.id}">
									<li style="width:100%;text-align:center">
									<a id="action-1" href="${pageContext.request.contextPath}/qsf_changequery?leftid=${twoa.id}&pagenum=1"
										style="color:black;width:100%;text-align:center;text-decoration:none">	
										
										<p style="width:100%;text-align:center">${twoa.name }</p>
										</a>
									</li>
									
									
									</c:if>
								</c:forEach>
								</ul>
								
							</li>
							
						</c:if>
						<c:if test="${aa.link!='#'&&aa.link!='static'}">
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
							<a class="btn btn-default btn-lg "  style="width:200px; 
							<c:if test="${m.name==locationList.get(0).getName()}">
						color:red 
							</c:if>
							" href="qsf_changequery?leftid=${m.id}&pagenum=1">${m.name}</a>
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
						<c:if test="${r.link=='1' }">
							<a href="qf_query?id=${r.id}&add=${locationList.get(0).getName()}&leftid=${locationList.get(0).getId()}">${r.title }</a>
						</c:if>
						
						<c:if test="${r.link!='1'&&r.link!='#'}">
							<li><a href="${r.link}">${r.title }</a></li>
						</c:if>
						
						</div>
					</c:forEach>				
				</ul>
			
			
						<c:if test="${allContentList!=null}">
							<c:if test="${allContentList.get(0).getLink()!='#'}">
										共${pageCount }页,
										当前第${pageNo}页,
										共${ totalNum}条
								<c:if test="${pageNo>1 }">
											  	<a href="qsf_changequery?leftid=${locationList.get(0).getId()}&pagenum=1">第一页</a>
											  	<a href="qsf_changequery?leftid=${locationList.get(0).getId()}&pagenum=${pageNo-1}">上一页</a>
								</c:if>
								<c:if test="${pageNo!=pageCount }">
											  	<a href="qsf_changequery?leftid=${locationList.get(0).getId()}&pagenum=${pageNo+1}">下一页</a>
											  	<a href="qsf_changequery?leftid=${locationList.get(0).getId()}&pagenum=${pageCount}">最后一页</a>
								</c:if>
							</c:if>
						</c:if>
						<c:if test="${ allContentList==null}">
							<p style="color:red">暂无记录</p>
						</c:if>
			
 				 
			</div>
		</div>
	</div>
	
	<div class="footer" >
		<div id="foot" class="banner-list ">
		<div class="text-center" style="color:white;font-size:14px;">
			Copyright © 山东农业大学信息科学与工程学院<span><a href="app/login.jsp" style="color:red">管理入口</a></span> <br/> 
			地址:文理大楼1201 邮编:271018  |  技术支持：陈飞龙</br>　
		</div>
				
	</div>	
</div>
</body>

</html>