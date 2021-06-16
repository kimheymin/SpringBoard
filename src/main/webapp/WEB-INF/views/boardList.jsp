<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
   <head>
      <meta charset="UTF-8">
      <title>게시판 목록</title>
      <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
      <link rel="stylesheet" href="resources/css/list.css">
      <style>
      </style>
   </head>
   <body>
         <jsp:include page="top.jsp"/>
         <div class="blist">
         <button onclick="location.href='writeForm'">글쓰기</button>
      	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${boardList}" var="dto">
		<tr>
			<td>${dto.boardIdx}</td>
			<td><a href="boardDetail?boardIdx=${dto.boardIdx}">${dto.subject}</a></td>
			<td>${dto.id}</td>
			<td>${dto.bHit}</td>
			<td class="delete"><a href="boardDelete?boardIdx=${dto.boardIdx}">삭제</a></td>
		</tr>
		</c:forEach>
	</table>
		</div>
	
   </body>
   <script>
   var msg = "${msg}";
   if(msg!=""){
   	alert(msg);
   }
   </script>
</html>