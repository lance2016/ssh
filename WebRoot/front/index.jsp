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
<body>
<div class="container_page">
	<div class="header" >
		<img src="${pageContext.request.contextPath}/front/images/head.jpg"  >
	</div>

	<div id="banner" class="banner-list ">
			
				<ul>
					<li><a href="#" style="text-decoration:none">首页</a></li>
					<c:forEach var="aa" items="${navList}">
						<c:if test="${aa.link=='#'}">
							<li><a href="${pageContext.request.contextPath}/qsf_query?id=${aa.id}&pagenum=1" style="text-decoration:none">${aa.name}</a></li>
						</c:if>
						<c:if test="${aa.link!='#'&&aa.link!='static'}">
							<li><a href="${aa.link}" style="text-decoration:none">${aa.name}</a></li>
						</c:if>
					</c:forEach>
				</ul>
	</div>	
	<div class="content1">
		<div class="col-md-7">
		<!--  轮播-->
			<div id="myCarousel" class="carousel slide"  data-ride="carousel" data-interval="3000">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" 
						class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>   
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="${pageContext.request.contextPath}/img/1.jpg"  style="width:800px; height:400px"; alt="First slide">
						<!-- <div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div> -->
					</div>
					<div class="item">
						<img src="${pageContext.request.contextPath}/img/2.jpg"  style="width:800px; height:400px"; alt="Second slide">
						<!--  <div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div>-->
					</div>
					<div class="item">
						<img src="${pageContext.request.contextPath}/img/3.jpg"  style="width:800px; height:400px"; alt="Third slide">
						<!--  <div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div>-->
					</div>
					<div class="item">
						<img src="${pageContext.request.contextPath}/img/4.jpg"  style="width:800px; height:400px"; alt="Fourth slide">
						<!--  <div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div>-->
					</div>
					<div class="item">
						<img src="${pageContext.request.contextPath}/img/5.jpg"   style="width:800px; height:400px"; alt="Fifth slide">
						<!-- <div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div> -->
					</div>
					
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
				<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div> 

		</div>
			<!-- 学院动态 -->
		<div class="col-md-5">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">${navTitleList1.get(0).getName()}</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="qsf_query?id=o&pagenum=1" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>	
			
			<table class="xueyuannews">
				<ul>
					<c:forEach var="m" items="${allContentList1}">
					<tr><td align="left" width="300px"><li><a href="qf_query?id=${m.id}" class="xueyuana"><div class="xueyuandiv"
					
							<c:if test="${m.important==1}">
										style="color:red";
									</c:if>
					
					>${m.title}</div></a></li></td><td width="20%">${m.time}</td></tr>
					</c:forEach>
				</ul>
			</table>
		</div>
	</div>
	<div class="content2">
	
	
	<!-- 通知公告 -->
		<div class="col-md-3">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">${navTitleList2.get(0).getName()}</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="qsf_query?id=p&pagenum=1" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>
			

		
			<table class="inform">		
				<ul>
					<c:forEach var="inform" items="${allContentList2}">
					<tr><td align="left" width="90%"><li><a href="qf_query?id=${inform.id}" class="xueyuana"><div class="otherdiv"
						<c:if test="${inform.important==1}">
										style="color:red";
									</c:if>
						
					>${inform.title}</div></a></li></td></tr>
					</c:forEach>
				</ul>
			</table>	
		</div>
		
		
		
		
		<!-- 学生工作 -->
		<div class="col-md-3">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">${navTitleList3.get(0).getName()}</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="qsf_query?id=q&pagenum=1" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>
		
			<table class="studentwork">		
				<ul>
					<c:forEach var="s" items="${allContentList3}">
					<tr><td align="left" width="200px"><li><a href="qf_query?id=${s.id}" class="xueyuana"><div class="otherdiv"
						<c:if test="${s.important==1}">
										style="color:red";
									</c:if>
					>${s.title}</div></a></li></td></tr>
					</c:forEach>
				</ul>
			</table>	
			
		</div>
		
		
		
		<!--就业工作  -->
		<div class="col-md-3">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">${navTitleList4.get(0).getName()}</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="qsf_query?id=r&pagenum=1" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>
			<table class="work">		
				<ul>
					<c:forEach var="work" items="${allContentList4}">
					<tr>
						<td align="left" width="200px">
							<li>
							<a href="qf_query?id=${work.id}" class="xueyuana">
								<div class="otherdiv" 
									<c:if test="${work.important==1}">
										style="color:red";
									</c:if>
								>
								${work.title}
								</div>
							</a>
							</li>
						</td>
					</tr>
					</c:forEach>
				</ul>
			</table>	
		</div>
		
		
		<!--学术动态  -->
		<div class="col-md-3">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">${navTitleList5.get(0).getName()}</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="qsf_query?id=s&pagenum=1" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>
			<table class="xueshunews">		
				<ul>
					<c:forEach var="xueshu" items="${allContentList5}">
					<tr>
						<td align="left" width="200px">
							<li>
								<a href="qf_query?id=${xueshu.id}" class="xueyuana">
									<div class="otherdiv" 
										<c:if test="${xueshu.important==1}">
											style="color:red";
										 </c:if> 
									>${xueshu.title}
									</div>
								</a>
							</li>
						</td>
					</tr>
					</c:forEach>
				</ul>
			</table>	
		</div>
		
	</div>
	

	<div class="footer" >
		<div id="foot" class="banner-list ">
		<div class="text-center" style="color:white;font-size:14px;">
			Copyright © 山东农业大学信息科学与工程学院   <span><a href="app/login.jsp" style="color:red">管理入口</a></span> <br/> 
			地址:文理大楼1201 邮编:271018  |  技术支持：陈飞龙</br>　
		</div>
	</div>
	
	
	</div>
	
</div>
  
</body>
</html>