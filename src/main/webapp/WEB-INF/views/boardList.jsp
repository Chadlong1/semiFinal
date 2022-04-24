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
								<td>${board.boardId}</td>
								<td>${board.userId}</td>
								<td><a href="${pageContext.request.contextPath}/board/readPosting?boardId=${board.boardId}">${board.title}</a></td>
								<%-- <td>${board.contents}</td> --%>
								<td>${board.boardDate}</td>
							</c:when>
							<c:otherwise>게시글을 작성해주세요</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<a href="write.jsp">글쓰기</a>
	</div>
</body>
</html>