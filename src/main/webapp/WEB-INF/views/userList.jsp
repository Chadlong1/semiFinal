<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<div>
		<c:forEach var="user" items="${list}">
			<li>${user.name},${user.email},${user.gender},
				${user.phoneNumber}</li>
		</c:forEach>
	</div>
</body>
</html>