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
					<c:forEach var="aa" items="${navList}">
						<li><a href="${pageContext.request.contextPath}/lookMore.action?id=${aa.id}" style="text-decoration:none">${aa.name}</a></li>
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
						<img src="${pageContext.request.contextPath}/front/carousel/1.jpg"  style="width:800px; height:400px"; alt="First slide">
						<div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div>
					</div>
					<div class="item">
						<img src="${pageContext.request.contextPath}/front/carousel/2.jpg"  style="width:800px; height:400px"; alt="Second slide">
						<div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div>
					</div>
					<div class="item">
						<img src="${pageContext.request.contextPath}/front/carousel/3.jpg"  style="width:800px; height:400px"; alt="Third slide">
						<div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div>
					</div>
					<div class="item">
						<img src="${pageContext.request.contextPath}/front/carousel/4.jpg"  style="width:800px; height:400px"; alt="Fourth slide">
						<div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div>
					</div>
					<div class="item">
						<img src="${pageContext.request.contextPath}/front/carousel/5.jpg"   style="width:800px; height:400px"; alt="Fifth slide">
						<div class="carousel-caption"><a>信息学院2016级本科生迎新大会</a></div>
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
				<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div> 

		</div>
		
		<div class="col-md-5">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">学院动态</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="http://xinxi.sdau.edu.cn/s/50/t/2108/p/22/list.htm" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>	
			<table class="xueyuannews">
				<ul>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
					<tr><td align="left" width="80%"><li><a>我校学子在第三届全国高校物联网应用...</a></li></td><td align="right">2016-11-13</td></tr>
				</ul>
			</table>
		</div>
	</div>
	<div class="content2">
		<div class="col-md-3">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">通知公告</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="http://xinxi.sdau.edu.cn/s/50/t/2108/p/22/list.htm" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>
			<table class="inform">		
				<ul>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
				</ul>
			</table>	
		</div>
		<div class="col-md-3">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">学生工作</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="http://xinxi.sdau.edu.cn/s/50/t/2108/p/22/list.htm" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>
			<table class="inform">		
				<ul>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
				</ul>
			</table>	
		</div>
		<div class="col-md-3">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">就业工作</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="http://xinxi.sdau.edu.cn/s/50/t/2108/p/22/list.htm" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>
			<table class="inform">		
				<ul>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
				</ul>
			</table>		
		</div>
		<div class="col-md-3">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/front/images/mainmiddle1_4.gif">
	 			<tr>
				    <td width="14"><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_1.gif" width="14" height="23"></td>
				    <td background="${pageContext.request.contextPath}/front/images/mainmiddle1_2.gif" class="biaoti1">学术动态</td>
				    <td width=""><img src="${pageContext.request.contextPath}/front/images/mainmiddle1_3.gif" width="106" height="23"></td>
				    <td width="">
				    	<div align="right"><a href="http://xinxi.sdau.edu.cn/s/50/t/2108/p/22/list.htm" target="_self">
				    		<img src="${pageContext.request.contextPath}/front/images/more.gif" border="0"></a>
				    	</div>
				    </td>
  				</tr>
			</table>
			<table class="inform">		
				<ul>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
					<tr><td align="left" width="90%"><li><a>我校学子在第三届全国高校...</a></li></td></tr>
				</ul>
			</table>		
		</div>
		
	</div>
	

	<div class="footer">
		<h3>this is footer</h3>1234
		<div id="banner" class="banner-list ">
				<ul>
					<c:forEach var="m" items="${userList}">
						<li><a href="${pageContext.request.contextPath}/lookMore.action?id=${m.id}" style="text-decoration:none">${m.username}</a></li>
					</c:forEach>
				</ul>
	</div>	
	</div>
	
</div>

</body>
</html>