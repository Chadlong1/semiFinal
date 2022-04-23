<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
</head>
<body>
	<c:choose>
	<c:when test="${ joinResult == 1 }">회원 등록 완료</c:when>
	<c:otherwise>회원 등록 실패</c:otherwise>
	</c:choose> 
	
	
	
	<a href="join.jsp">회원 가입</a>
	<c:if test="${ empty loginId }">
		<a href="login.jsp">로그인</a>
	</c:if>
	<c:if test="${ not empty loginId }">
		<a href="${pageContext.request.contextPath}/user/list">회원 목록 보기</a>
		<h3> ${sessionScope.loginId}회원님 환영합니다.  </h3> <br>
		<a href="${pageContext.request.contextPath}/user/logout">로그아웃</a><br>
		<a href="">게시판</a>
	</c:if>
</body>
</html>