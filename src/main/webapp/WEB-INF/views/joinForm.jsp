<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
#m_table {
	height: 400px;
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
</style>
</head>
<body>
	<div id="container">
		<form action="join" method="POST">
			<table id="m_table">
				<tr class="mtr">
					<th>아이디</th>
					<td><input type="text" id="id" name="id" /></td>
				</tr>
				<tr class="mtr">
					<th>비밀번호</th>
					<td><input type="password" id="pw" name="pw" /></td>
				</tr>
				<tr class="mtr">
					<th>비밀번호 확인</th>
					<td><input type="password" id="pwchk" /> 
						<br /> 
						<span class="span_pw"></span>
					</td>
				</tr>
				<tr class="mtr">
					<th>이름</th>
					<td><input type="text" id="name" name="name" /></td>
				</tr>
				<tr class="mtr">
					<th>핸드폰</th>
					<td><input type="text" id="phone" name="phone" /></td>
				</tr>
			</table>
		</form>
		<div id="btn">
			<button id="mbtn" onclick="joinChk()">회원가입</button>
			<button id="mbtn" onclick="location.href='loginForm'">닫기</button>
		</div>
	</div>
</body>
<script>
	var msg = "${msg}";
	if (msg != "") {
		alert(msg);
	}

	//비밀번호 일치여부 확인
	$("#pwchk").keyup(function() {
		if ($(this).val() != $("#pw").val()) {
			$(".span_pw").html('비밀번호를 다시 확인해주삼');
			$(".span_pw").css({
				'color' : 'red',
				'font-size' : '15px',
				'font-weight' : '600'
			});
		} else {
			$(".span_pw").html('');
		}
	});

	//휴대폰번호 자동하이픈
	$("#phone")
			.keydown(
					function(event) {
						var key = event.charCode || event.keyCode || 0;
						$text = $(this);
						if (key !== 8 && key !== 9) {
							if ($text.val().length == 3) {
								$text.val($text.val() + '-');
							}
							if ($text.val().length == 8) {
								$text.val($text.val() + '-');
							}
						}
						return (key == 8 || key == 9 || key == 46
								|| (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
					});

	function joinChk() {
		var id = $("#id");
		var pw = $("#pw");
		var pwchk = $("#pwchk");
		var name = $("#name");
		var phone = $("#phone");

		if (id.val() == '') {
			alert('아이디를 입력해 주세요');
			id.focus();
		} else if (pw.val() == '') {
			alert('비밀번호를 입력해 주세요');
			pw.focus();
		} else if (pw.val() != pwchk.val()) {
			alert('비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요');
			pwChk.focus();
		} else if (name.val() == '') {
			alert('이름을 입력해 주세요');
			name.focus();
		} else if (phone.val() == '') {
			alert('휴대폰번호를 입력해 주세요');
			phone.focus();
		} else {
			$('form').submit();
		}
	}
</script>
</html>