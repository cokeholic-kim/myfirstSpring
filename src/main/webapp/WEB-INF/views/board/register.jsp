<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function(){


	$("#btnRegister").on("click" ,function(){
		
		$("#formData").submit();
		
	})
	
	$("#btnList").on("click",function(){
		location.href = "/board/list";
	})
})
</script>
</head>
<body>
<form id="formData" method="post" action="/board/register">
게시판id<input type="text" id="boardId" name="id" /><br/>
게시판 제목<input type="text" id="boardTitle" name="title" /><br/>
게시판 내용<input type="text" id="boardContents" name="contents" /><br/>
</form>
<input type="button" id="btnRegister" value="등록">
<input type="button" id="btnList" value="목록"/>
</body>
</html>