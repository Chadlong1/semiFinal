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
<title>게시판 목록</title>
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
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">회원관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
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
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일자</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="board" items="${boardList}">
						<tr>
							<c:choose>
								<c:when test="${ boardList != null }">
									<c:if test="${board.boardAvailable == 1}">
										<td>${board.boardId}</td>
										<td>${board.userId}</td>
										<td><a
											href="${pageContext.request.contextPath}/board/readPosting?boardId=${board.boardId}">${board.title}</a></td>
										<%-- <td>${board.contents}</td> --%>
										<td>${board.boardDate}</td>
									</c:if>
								</c:when>
								<c:otherwise>게시글을 작성해주세요</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>
				</tbody>

			</table>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>