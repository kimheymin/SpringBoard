<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String loginId = (String) request.getSession().getAttribute("loginId");
%>
<html>
   <head>
      <meta charset="UTF-8">
      <title>게시판 상세보기</title>
      <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
      <link rel="stylesheet" href="resources/css/write.css">
      <style>
      </style>
   </head>
   <body>
      <jsp:include page="top.jsp"/>
      	<div id="container">
			<table id="n_table">
				<tr class="tr1">
					<th>글번호</th>
					<td>${info.boardIdx}</td>
				</tr>			
				<tr class="tr1">
					<th>제목</th>
					<td>${info.subject}</td>
				</tr>
				<tr class="tr1">
					<th>작성자</th>
					<td>${info.id}</td>
				</tr>				
				<tr class="tr2">
					<th>내용</th>
					<td>${info.content}</td>
				</tr>
				<tr class="tr1">
					<th>조회수</th>
					<td>${info.bHit}</td>
				</tr>
				<tr class="tr1">
					<th>작성일</th>
					<td>${info.reg_date}</td>
				</tr>								
			</table>
		<div id="btn">
			<button id="nbtn" onclick="location.href='updateForm?boardIdx=${info.boardIdx}'">수정</button>
			<button id="nbtn" onclick="location.href='boardList'">닫기</button>
			</div>
	</div>
   </body>
   <script>
var msg = "${msg}";
if(msg!=""){
	alert(msg);
}
   </script>
</html>