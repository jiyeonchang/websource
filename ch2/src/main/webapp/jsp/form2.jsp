<!--forward의 페이지 이용방법을 알기위한 페이지
  form2->info2->forward로이동
forward :  a라는 페이지에서 forward로 페이지 이동하면 페이지를 이동했지만 a페이지 주소가 보임

  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	margin-bottom: 10px;
}

label {
	display: inline-block;
	width: 150px;
}input{
	padding:5px;
}

</style>

</head>
<body>
	<form action="info2.jsp" method="post">
		<div>
			<label for="userid">아이디</label> <input type="text" id="userid"
				name="userid" />
		</div>
		<div>
			<label for="password">비밀번호</label> <input type="password"
				id="password" name="password" />
		</div>
		<div>
			<label for="username">이름</label> <input type="text" id="username"
				name="username" />
		</div>
		<button type="submit">전송</button>
	</form>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		$(function() {
			$("button").click(function(e) {
				//태그가 가지고 있는 기능 막기
				//submit
				event.preventDefault();

				//input 요소 가져오기
				let userid = $("#userid");

				//비밀번호 가져오기
				let password = $("#password");
				//이름 가져오기
				let username = $("#username");
				// 폼 유효성 검증
				if (userid.val() == "") {
					alert("아이디를 확인해 주세요");
					userid.focus();
					return;
				} else if (password.val() == "") {
					alert("비밀번호를 확인해 주세요");
					password.focus();
					return;
				} else if (username.val() == "") {
					alert("이름을 확인해 주세요");
					username.focus();
					return;
				}
				//폼 전송
				$("form").submit();
			});
		});
	</script>
</body>
</html>