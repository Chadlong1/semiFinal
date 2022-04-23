<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<h3> ${sessionScope.loginId}회원님 환영합니다.  </h3> <br>
	<a href="${pageContext.request.contextPath}/index.jsp">목록으로</a>
</body>
</html>