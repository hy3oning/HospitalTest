<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 실패</title>
<style>
    * { box-sizing: border-box; }
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(120deg, #e8f5e9, #ffffff);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .card {
        width: 420px;
        background: #fff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        text-align: center;
    }
    .icon {
        font-size: 48px;
        color: #2e7d32;
        margin-bottom: 15px;
    }
    h2 {
        color: #2e7d32;
        margin-bottom: 15px;
    }
    p {
        font-size: 15px;
        color: #555;
        margin-bottom: 25px;
    }
    .btn {
        display: inline-block;
        padding: 12px 25px;
        background: #1976d2;
        color: #fff;
        text-decoration: none;
        border-radius: 6px;
        font-size: 14px;
    }
    .btn:hover {
        background: #1565c0;
    }
</style>
</head>
<body>

<div class="card">
    <div class="icon">✔</div>

    <h2>회원가입 실패</h2>

    <p>${message}</p>

    <a href="/member/register" class="btn">다시 입력하기</a>
</div>

</body>
</html>
