<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">
<title>메인</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">My Mini Web</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="${pageContext.request.contextPath}/board">방명록</a></li>
			</ul>
			<c:choose>
				<c:when test="${ empty loginId }">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="dropdown-item" href="login.jsp">로그인</a></li>
						<li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">${sessionScope.loginId}님 환영합니다.<span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
							</ul>
							</li> 
					</ul>

				</c:otherwise>
			</c:choose>

		</div>
	</nav>
	<div class="contatiner">
		<div class="jumbotron">
			<div class="container">
				<h1>Web for portfolio</h1>
				<p>성장하는 개발자 정창훈</p>
				<p>
					<a class="btn btn-primary btn-pull" href="#" role="button">About
						Me</a>
				</p>

			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img
						src="${pageContext.request.contextPath}/resources/images/1st.jpg">
				</div>
				<div class="item">
					<img
						src="${pageContext.request.contextPath}/resources/images/2nd.jpg">
				</div>
				<div class="item">
					<img
						src="${pageContext.request.contextPath}/resources/images/3rd.jpg">
				</div>
			</div>
			<a class="left-carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphcion-chevron-left"></span>
			</a> <a class="right-carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphcion-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<c:choose>
		<c:when test="${ joinResult == 1 }">회원 등록 완료</c:when>
	</c:choose>


	<c:if test="${ not empty loginId }">
		<a href="${pageContext.request.contextPath}/user/logout">로그아웃</a>
	</c:if>
</body>
</html>