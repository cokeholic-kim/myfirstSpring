<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	
	$("#btnRegister").on("click",function(){
		location.href = "/board/register";
	})
})
</script>
<title>List</title>
</head>
<body>
<h1>게시판</h1>

	<table class="table table-striped">
		<c:forEach var="board" items="${resultList }" varStatus="status">
			<tr>
				<td id=""><a href="/board/detail?id=${board.id}">${board.id }</a></td>
				<td id="">${board.title }</td>
				<td id="">${board.contents }</td>
			</tr>
		</c:forEach>
	</table>
	<button id="btnRegister">등록</button>
</body>
</html>