<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
	<div>
	<table>
		<thead>
			<tr>
				<th>방명록</th>
				<th style="background-color: #eeeeee; text-align: center;">번호</th>
				<th style="background-color: #eeeeee; text-align: center;">작성자</th>
				<th style="background-color: #eeeeee; text-align: center;">제목</th>
				<th style="background-color: #eeeeee; text-align: center;">작성일자</th>
			</tr>
		</thead>
		
		<tbody>
		</tbody>
			
		<c:choose>
			<c:when test="${ boardList != null }">
				<c:forEach var="board" items="${boardList}">
					<li>${board.boardId},${board.userId},${board.title},
						${board.contents},${board.boardDate}</li>
				</c:forEach>
			</c:when>
			<c:otherwise>게시글을 작성해주세요</c:otherwise>
		</c:choose>
		
		<a href="write.jsp">글쓰기</a>
	
	</table>
	</div>
</body>
</html>