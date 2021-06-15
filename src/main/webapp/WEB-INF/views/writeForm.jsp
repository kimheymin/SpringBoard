<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String loginId = (String) request.getSession().getAttribute("loginId");
%>
<html>
   <head>
      <meta charset="UTF-8">
      <title>게시판 글쓰기</title>
      <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
      <link rel="stylesheet" href="resources/css/write.css">
      <style>
      </style>
   </head>
   <body>
      <jsp:include page="top.jsp"/>
      	<div id="container">
		<form action="boardWrite" method="post">
			<table id="n_table">
				<input type="hidden" name="id" value="${sessionScope.loginId}" />
				<tr class="tr1">
					<th>제목</th>
					<td><input type="text" id="subject" name="subject"
						placeholder="제목을 입력해주세요."></td>
				</tr>
				<tr class="tr2">
					<th>내용</th>
					<td><textarea name="content" id="content"
							placeholder="내용을 입력해주세요."></textarea></td>
				</tr>
			</table>
		<div id="btn">
			<input type="submit" id="nbtn" value="작성완료">
			<button id="nbtn" onclick="location.href='boardList'">닫기</button>
		</div>
		</form>
	</div>
   </body>
   <script>
var msg = "${msg}";
if(msg!=""){
	alert(msg);
}
   </script>
</html>