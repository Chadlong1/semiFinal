<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th style="background-color: #eeeeee; text-align: left;">${contentsByBoardId.title}</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td colspan="2" style="min-height: 200px; background-color: #eeeee; text-align: left;">${contentsByBoardId.userId}</td>
			</tr>
			<tr>
				<td colspan="2" style="min-height: 200px; background-color: #eeeee; text-align: left;">${contentsByBoardId.boardDate}</td>
			</tr>
			<tr>
				<td colspan="2" style="min-height: 200px; background-color: #eeeee; text-align: left;">${contentsByBoardId.contents}</td>
			</tr>
			
		</tbody>
	</table>
			<c:if test="${sessionScope.loginId.equals(contentsByBoardId.userId)}">
				<a href="../update.jsp?boardId=${contentsByBoardId.boardId}">수정</a>
			</c:if>
</body>
</html>