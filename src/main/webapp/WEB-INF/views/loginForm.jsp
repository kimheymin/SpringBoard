<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
#m_table {
	height: 100px;
	margin: 100px auto;
}

#m_table input {
	width: 250px;
	height: 35px;
	margin: 5px 0;
	font-size: 18px;
}

#m_table th {
	width: 180px;
}

#btn {
	margin: 30px 0;
	text-align: center;
}

#mbtn {
	margin: 5px 24px;
	padding: 8px;
	width: 100px;
}

#lbtn{
	margin: 5px 24px;
	padding: 8px;
	width: 100px;
}
</style>
</head>
<body>
	<div id="container">
		<form action="login" method="POST">
			<table id="m_table">
				<tr class="mtr">
					<th>아이디</th>
					<td><input type="text" id="id" name="id" /></td>
				</tr>
				<tr class="mtr">
					<th>비밀번호</th>
					<td><input type="password" id="pw" name="pw" /></input></td>
				</tr>
			</table>
			<input id="lbtn" type="submit" value="로그인"></button>
		</form>
		<div id="btn">
			<button id="mbtn" onclick="location.href='joinForm'">회원가입</button>
			<button id="mbtn" onclick="location.href='memFind'">계정찾기</button>
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