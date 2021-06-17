<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="resources/css/write.css">
<style>
</style>
</head>
<body>
	<jsp:include page="top.jsp" />
	<div id="container">
		<form action="boardUpdate" method="POST">
			<table id="n_table">
				<tr class="tr1">
					<td>글번호</td>
					<td><input type="text" name="boardIdx" value="${info.boardIdx}" readonly /></td>
				</tr>			
				<tr class="tr1">
					<td>작성자</td>
					<td><input type="text" name="id" value="${info.id}" readonly /></td>
				</tr>
				<tr class="tr1">
					<td>제목</td>
					<td><input type="text" name="subject" value="${info.subject}" /></td>
				</tr>
				<tr class="tr1">
					<td>내용</td>
					<td><input type="text" name="content" value="${info.content}" /></td>
				</tr>
				<tr>
					<td colspan="2" id="btn">
						<button id="nbtn">수정</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script>
   </script>
</html>