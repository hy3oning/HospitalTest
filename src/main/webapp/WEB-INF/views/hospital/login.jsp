<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>병원 로그인</title>
<style>
    body { font-family: Arial; background:#f5f6f7; }
    .box { width:350px; margin:120px auto; padding:30px; background:#fff; border:1px solid #ddd; }
    h2 { text-align:center; margin-bottom:20px; }
    input { width:100%; padding:10px; margin:8px 0; }
    button { width:100%; padding:10px; background:#2c7be5; color:#fff; border:none; }
    .link { text-align:center; margin-top:10px; }
</style>
</head>
<body>

<div class="box">
    <h2>병원 로그인</h2>

    <form action="/member/login" method="post">
        <input type="text" name="id" placeholder="아이디" required>
        <input type="password" name="password" placeholder="비밀번호" required>

        <button type="submit">로그인</button>
    </form>

    <div class="link">
        <a href="/member/register">회원가입</a>
    </div>
</div>

</body>
</html>