<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/user/join" method="post">
		<label>아이디<input type="text" name="id"></label><br>
		<label>비밀번호<input type="password" name="password"></label><br>
		<label>이름<input type="text" name="name"></label><br>
		<label>이메일<input type="text" name="email"></label><br>
		<label>남성<input type="radio" name="gender" value="남성"></label><br>
		<label>여성<input type="radio" name="gender" value="여성"></label><br>
		<label>휴대폰번호<input type="text" name="phoneNumber"></label><br>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>