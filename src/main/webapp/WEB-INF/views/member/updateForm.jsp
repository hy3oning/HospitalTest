<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 정보 수정</title>

<style>
body {
	font-family: 'Segoe UI', Arial;
	background: #eef2f6;
}

.container {
	width: 600px;
	margin: 70px auto;
	background: #fff;
	padding: 35px;
	border-radius: 12px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.12);
}

h2 {
	text-align: center;
	color: #2c7be5;
	margin-bottom: 30px;
}

.row {
	display: flex;
	align-items: center;
	margin-bottom: 14px;
}

.label {
	width: 140px;
	font-weight: 600;
	color: #444;
}

.value input {
	width: 100%;
	padding: 8px 10px;
	border-radius: 6px;
	border: 1px solid #ccc;
}

.actions {
	margin-top: 30px;
	text-align: center;
}

.actions button, .actions a {
	display: inline-block;
	padding: 10px 18px;
	margin: 0 6px;
	border-radius: 6px;
	font-size: 14px;
	cursor: pointer;
	text-decoration: none;
	border: none;
}

.btn-save {
	background: #2c7be5;
	color: #fff;
}

.btn-cancel {
	background: #6c757d;
	color: #fff;
}

.btn-save:hover {
	background: #1a68d1;
}

.btn-cancel:hover {
	background: #5a6268;
}
</style>

</head>
<body>

	<div class="container">
		<h2>회원 정보 수정</h2>

		<form action="/member/update" method="post">

			<!-- PK -->
			<input type="hidden" name="memberNo" value="${member.memberNo}">

			<div class="row">
				<div class="label">아이디</div>
				<div class="value">
					<input type="text" value="${member.id}" readonly>
				</div>
			</div>

			<div class="row">
				<div class="label">비밀번호</div>
				<div class="value">
					<input type="password" name="pw" placeholder="변경 시에만 입력">
				</div>
			</div>

			<div class="row">
				<div class="label">이름</div>
				<div class="value">
					<input type="text" name="memberName" value="${member.memberName}"
						readonly>
				</div>
			</div>

			<div class="row">
				<div class="label">전화번호</div>
				<div class="value">
					<input type="text" name="phoneNumber" value="${member.phoneNumber}">
				</div>
			</div>

			<div class="row">
				<div class="label">생년월일</div>
				<div class="value">
					<input type="date" name="birthDate"
						value="<fmt:formatDate value='${member.birthDate}' pattern='yyyy-MM-dd'/>"
						readonly>
				</div>
			</div>

			<div class="row">
				<div class="label">주소</div>
				<div class="value">
					<input type="text" name="address" value="${member.address}">
				</div>
			</div>

			<div class="actions">
				<button type="submit" class="btn-save">저장</button>
				<a href="/member/read?memberNo=${member.memberNo}"
					class="btn-cancel">취소</a>
			</div>

		</form>
	</div>

</body>
</html>
