<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
    * { box-sizing: border-box; }
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(120deg, #f1f8e9, #ffffff);
        padding: 40px 0;
    }
    .card {
        width: 420px;
        margin: auto;
        background: #fff;
        padding: 35px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        color: #2e7d32;
        margin-bottom: 25px;
    }
    .input-group {
        margin-bottom: 14px;
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
        background: #2e7d32;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 15px;
        cursor: pointer;
        margin-top: 15px;
    }
    .btn:hover {
        background: #1b5e20;
    }
</style>
</head>
<body>

<div class="card">
    <h2>회원가입</h2>

    <form action="/member/create" method="post">
        <div class="input-group">
            <label>아이디</label>
            <input type="text" name="id" required>
        </div>

        <div class="input-group">
            <label>비밀번호</label>
            <input type="password" name="password" required>
        </div>

        <div class="input-group">
            <label>이름</label>
            <input type="text" name="memberName" required>
        </div>

        <div class="input-group">
            <label>전화번호</label>
            <input type="text" name="phoneNumber" placeholder="010-1234-5678" required>
        </div>

        <div class="input-group">
            <label>생년월일</label>
            <input type="date" name="birthDate" required>
        </div>

        <div class="input-group">
            <label>주소</label>
            <input type="text" name="address" required>
        </div>

        <button type="submit" class="btn">회원가입</button>
    </form>
</div>

</body>
</html>