<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">
<title>Insert title here</title>+
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
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">접속하기<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="login.jsp">로그인</a></li>
								<li><a href="join.jsp">회원가입</a></li>
							</ul></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">회원관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="logoutAction.jsp">로그아웃</a></li>
							</ul></li>
					</ul>

				</c:otherwise>
			</c:choose>

		</div>
	</nav>

	<div class="container">
		<div class="row">
			<table class="table table-striped" style="border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: left;">${contentsByBoardId.title}</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td colspan="2"
							style="min-height: 200px; background-color: #eeeee; text-align: left;">${contentsByBoardId.userId}</td>
					</tr>
					<tr>
						<td colspan="2"
							style="min-height: 200px; background-color: #eeeee; text-align: left;">${contentsByBoardId.boardDate}</td>
					</tr>
					<tr>
						<td colspan="2"
							style="min-height: 200px; background-color: #eeeee; text-align: left;">${contentsByBoardId.contents}</td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>
	<c:if test="${sessionScope.loginId.equals(contentsByBoardId.userId)}">
		<a href="../update.jsp?boardId=${contentsByBoardId.boardId}">수정</a>
		<a
			href="${pageContext.request.contextPath}/board/deletePosting?boardId=${contentsByBoardId.boardId}">삭제</a>
	</c:if>
</body>
</html>