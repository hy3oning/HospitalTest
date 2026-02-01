<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>회원 정보</title>
<style>
body {
    font-family: 'Segoe UI', Arial;
    background:#eef2f6;
}
.box {
    width:520px;
    margin:80px auto;
    padding:35px;
    background:#ffffff;
    border-radius:10px;
    box-shadow:0 6px 15px rgba(0,0,0,0.1);
}
h2 {
    text-align:center;
    color:#2c7be5;
    margin-bottom:25px;
}
.info {
    display:flex;
    margin:12px 0;
    padding-bottom:8px;
    border-bottom:1px solid #eee;
}
.info strong {
    width:120px;
    color:#555;
}
.info span {
    color:#333;
}
.actions {
    margin-top:25px;
    text-align:center;
}
.actions a {
    display:inline-block;
    padding:10px 20px;
    background:#2c7be5;
    color:white;
    text-decoration:none;
    border-radius:6px;
}
.actions a:hover {
    background:#1a68d1;
}
</style>
</head>
<body>

<div class="box">
    <h2>로그인 성공</h2>

    <div class="info">
        <strong>이름</strong>
        <span>${member.memberName}</span>
    </div>

    <div class="info">
        <strong>아이디</strong>
        <span>${member.id}</span>
    </div>

    <div class="info">
        <strong>전화번호</strong>
        <span>${member.phoneNumber}</span>
    </div>

    <div class="info">
        <strong>생년월일</strong>
        <span>
            <fmt:formatDate value="${member.birthDate}" pattern="yyyy-MM-dd"/>
        </span>
    </div>

    <div class="info">
        <strong>주소</strong>
        <span>${member.address}</span>
    </div>

    <div class="actions">
        <a href="/member/memberList">회원 목록</a>
        <a href="/">예약 하기</a>
        <a href="/">예약 조회</a>
        <a href="/">의사 조회</a>
        <a href="/">회원 탈퇴</a>
    </div>
</div>

</body>
</html>
