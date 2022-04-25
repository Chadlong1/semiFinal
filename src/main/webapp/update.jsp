<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form
			action="${ pageContext.request.contextPath }/board/updatePosting?boardId=${param.boardId}" method="post">
			<table>
				<thead>
					<tr>
						<th>수정</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" placeholder="글 제목" name="title"
							maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea placeholder="글 내용" name="contents"
								maxlength="2048"></textarea></td>
					</tr>
				</tbody>
			</table>
			<input type="submit" value="글쓰기">
		</form>
	</div>
</body>
</html>