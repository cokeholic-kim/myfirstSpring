<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 수정</title>
</head>
<body>
<h1>테스트 수정</h1>
<form action="/test/list" method="get">
	<input type="submit" value="list(GET)">
</form>
<form action="/test/detail" method="get">
	<input type="submit" value="detail(GET)">
</form>
<form action="/test/insert" method="POST">
	<input type="submit" value="insert(POST)">
</form>
<form action="/test/update" method="post">
	<input type="submit" value="update(POST)">
</form>
<form action="/test/delete" method="post">
	<input type="submit" value="delete(POST)">
</form>
</body>
</html>