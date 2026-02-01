<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
    body { font-family: Arial; background:#f5f6f7; }
    .box { width:400px; margin:80px auto; padding:30px; background:#fff; border:1px solid #ddd; }
    h2 { text-align:center; margin-bottom:20px; }
    input { width:100%; padding:10px; margin:8px 0; }
    button { width:100%; padding:10px; background:#28a745; color:#fff; border:none; }
</style>
</head>
<body>

<div class="box">
    <h2>회원가입</h2>

    <form action="/member/insert" method="post">
        <input type="text" name="id" placeholder="아이디" required>
        <input type="password" name="password" placeholder="비밀번호" required>
        <input type="text" name="memberName" placeholder="이름" required>
        <input type="text" name="phoneNumber" placeholder="전화번호" required>
        <input type="date" name="birthDate" required>
        <input type="text" name="address" placeholder="주소" required>

        <button type="submit">회원가입</button>
    </form>
</div>

</body>
</html>