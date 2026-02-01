<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>병원 로그인</title>
<style>
    * { box-sizing: border-box; }
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(120deg, #e3f2fd, #ffffff);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .card {
        width: 360px;
        background: #fff;
        padding: 35px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        color: #1976d2;
        margin-bottom: 25px;
    }
    .input-group {
        margin-bottom: 15px;
    }
    .input-group label {
        display: block;
        font-size: 14px;
        color: #555;
        margin-bottom: 5px;
    }
    .input-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .btn {
        width: 100%;
        padding: 12px;
        background: #1976d2;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 15px;
        cursor: pointer;
        margin-top: 10px;
    }
    .btn:hover {
        background: #1565c0;
    }
    .link {
        text-align: center;
        margin-top: 15px;
        font-size: 14px;
    }
    .link a {
        color: #1976d2;
        text-decoration: none;
    }
</style>
</head>
<body>

<div class="card">
    <h2>병원 로그인</h2>

    <form action="/member/login" method="post">
        <div class="input-group">
            <label>아이디</label>
            <input type="text" name="id" required>
        </div>

        <div class="input-group">
            <label>비밀번호</label>
            <input type="password" name="password" required>
        </div>

        <button type="submit" class="btn">로그인</button>
    </form>

    <div class="link">
        아직 회원이 아니신가요?
        <a href="/member/register">회원가입</a>
    </div>
</div>

</body>
</html>