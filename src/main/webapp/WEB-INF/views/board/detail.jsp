<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	$("#btnModify").on("click",function(){
		location.href = "/board/modify?id=" + ${resultData.id}; 
		
	})
	
	$("#btnDelete").on("click",function(){
		$("#formDelete").submit();
	})
})
</script>
</head>
<body>
<h1>게시판 상세</h1>
<table class="table table-striped" >
	<tr>
		<td>id</td>
		<td>제목</td>
		<td>내용</td>
	</tr>
	<tr>
		<td>${resultData.id}</td>
		<td>${resultData.title}</td>
		<td>${resultData.contents}</td>
	</tr>
</table>
<button id="btnModify">수정</button>
<button id="btnDelete">삭제</button>
<form id="formDelete" method="post" action="/board/delete">
	<input type="hidden" name="id" value="${resultData.id}">
</form>
</body>
</html>