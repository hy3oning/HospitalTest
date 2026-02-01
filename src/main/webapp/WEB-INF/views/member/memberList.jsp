<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 목록</title>
<style>
body {
	font-family: 'Segoe UI', Arial;
	background: #eef2f6;
}

.container {
	width: 900px;
	margin: 60px auto;
	background: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #2c7be5;
	margin-bottom: 25px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 12px;
	text-align: center;
}

th {
	background: #f1f5f9;
	color: #333;
}

tr:nth-child(even) {
	background: #fafafa;
}

tr:hover {
	background: #eef6ff;
}

.actions {
	margin-top: 20px;
	text-align: right;
}

.actions a {
	padding: 8px 14px;
	background: #2c7be5;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-size: 14px;
}

.actions a:hover {
	background: #1a68d1;
}
</style>
</head>
<body>

	<div class="container">
		<h2>회원 목록</h2>
		<!-- 🔍 회원 검색 -->
		<form method="get" action="/member/list"
			style="margin-bottom: 20px; text-align: right;">
			<select name="searchType" style="padding: 6px;">
				<option value="">전체</option>
				<option value="id">아이디</option>
				<option value="name">이름</option>
				<option value="phone">전화번호</option>
			</select> <input type="text" name="keyword" placeholder="검색어 입력"
				style="padding: 6px;">
			<button type="submit" style="padding: 6px 12px;">검색</button>
		</form>

		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>생년월일</th>
					<th>주소</th>
					<th>가입일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="member" items="${memberList}">
					<tr>
						<td>${member.memberNo}</td>
						<td><a href="/member/detail?memberNo=${member.memberNo}">${member.id}</a></td>
						<td>${member.memberName}</td>
						<td>${member.phoneNumber}</td>
						<td><fmt:formatDate value="${member.birthDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${member.address}</td>
						<td><fmt:formatDate value="${member.regDate}"
								pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>

				<c:if test="${empty memberList}">
					<tr>
						<td colspan="6">등록된 회원이 없습니다.</td>
					</tr>
				</c:if>
			</tbody>
		</table>

		<div class="actions">
			<a href="/">메인으로</a>
		</div>
	</div>

</body>
</html>