<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>회원 상세 정보</title>

<style>
body {
    font-family: 'Segoe UI', Arial;
    background:#eef2f6;
}
.container {
    width:600px;
    margin:70px auto;
    background:#fff;
    padding:35px;
    border-radius:12px;
    box-shadow:0 8px 20px rgba(0,0,0,0.12);
}
h2 {
    text-align:center;
    color:#2c7be5;
    margin-bottom:30px;
}
.row {
    display:flex;
    margin-bottom:14px;
}
.label {
    width:140px;
    font-weight:600;
    color:#444;
}
.value {
    color:#333;
}
.actions {
    margin-top:30px;
    text-align:center;
}
.actions a, .actions button {
    display:inline-block;
    padding:10px 18px;
    margin:0 6px;
    border-radius:6px;
    font-size:14px;
    cursor:pointer;
    text-decoration:none;
    border:none;
}
.btn-edit {
    background:#2c7be5;
    color:#fff;
}
.btn-delete {
    background:#e5533d;
    color:#fff;
}
.btn-list {
    background:#6c757d;
    color:#fff;
}
.btn-edit:hover { background:#1a68d1; }
.btn-delete:hover { background:#c4412f; }
.btn-list:hover { background:#5a6268; }
</style>

<script>
function deleteMember() {
    if(confirm("정말 삭제하시겠습니까?")) {
        document.getElementById("deleteForm").submit();
    }
}
</script>

</head>
<body>

<div class="container">
    <h2>회원 상세 정보</h2>

    <div class="row">
        <div class="label">회원번호</div>
        <div class="value">${member.memberNo}</div>
    </div>

    <div class="row">
        <div class="label">아이디</div>
        <div class="value">${member.id}</div>
    </div>

    <div class="row">
        <div class="label">이름</div>
        <div class="value">${member.memberName}</div>
    </div>

    <div class="row">
        <div class="label">전화번호</div>
        <div class="value">${member.phoneNumber}</div>
    </div>

    <div class="row">
        <div class="label">생년월일</div>
        <div class="value">
            <fmt:formatDate value="${member.birthDate}" pattern="yyyy-MM-dd"/>
        </div>
    </div>

    <div class="row">
        <div class="label">주소</div>
        <div class="value">${member.address}</div>
    </div>

    <div class="row">
        <div class="label">가입일</div>
        <div class="value">
            <fmt:formatDate value="${member.regDate}" pattern="yyyy-MM-dd"/>
        </div>
    </div>

    <div class="actions">
        <a href="/member/updateForm?memberNo=${member.memberNo}" class="btn-edit">수정</a>

        <button class="btn-delete" onclick="deleteMember()">삭제</button>

        <a href="/member/memberList" class="btn-list">목록으로</a>
    </div>

    <!-- 삭제용 hidden form -->
    <form id="deleteForm" method="post" action="/member/delete">
        <input type="hidden" name="memberNo" value="${member.memberNo}">
    </form>
</div>

</body>
</html>