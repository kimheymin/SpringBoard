<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="resources/css/top.css">
<style>
</style>
</head>
<body>
	<nav id="nav_bar">
		<div class="logo">
			<a href="#">COTUDY</a>
		</div>
		<div class="menu">
			<ul>
				<li><a href="#">공지</a></li>
				<li><a href="#">자유게시판</a></li>
				<li><a href="#">중고거래</a></li>
				<li><a href="#">QNA</a></li>
				<li><a href="#">마이페이지</a></li>
			</ul>
		</div>
		<div class="sns">
			<ul>
				<li><a href="joinForm">회원가입</a></li>
				<li><a href="loginForm">로그인</a></li>
			</ul>
		</div>
	</nav>

</body>
<script>
   var msg = "${msg}";
   if(msg!=""){
   	alert(msg);
   }
   </script>
</html>