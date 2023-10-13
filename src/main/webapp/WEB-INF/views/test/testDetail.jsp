<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 상세</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//post 전송
		$("#postButton").click(()=>{
			let varTitle = $("#title").val();
			let varContent = $("#content").val();
			let varWriter = $("#writer").val();
			
			let jsonData = {
					title : varTitle,
					content : varContent,
					writer : varWriter
			};
			
			console.log(jsonData);
			
			$.ajax({
				type:"post",
				url : '/test/detail/post',
				data : JSON.stringify(jsonData),
				contentType : "application/json; charset=UTF-8",
				success : function(result){
					if(result == "SUCCESS"){
						alert("전송에 성공하였습니다.");	
					}
				}
			})
		})
			
		
		//put 전송
		$("#putButton").click(()=>{
			let varTitle = $("#title").val();
			let varContent = $("#content").val();
			let varWriter = $("#writer").val();
			
			let jsonData = {
					title : varTitle,
					content : varContent,
					writer : varWriter
			};
			
			console.log(jsonData);
			
			$.ajax({
				type:"put",
				url : '/test/detail/put',
				data : JSON.stringify(jsonData),
				contentType : "application/json; charset=UTF-8",
				success : function(result){
					if(result == "SUCCESS"){
						alert("전송에 성공하였습니다.");	
					}else if(result == "FAIL"){
						alert("전송에 실패하였습니다.");
					}
				},
				error : ()=>{alert("전송에 실패하였습니다.")}
			})
		})
			
		
		//xml 전송
		$("#xmlButton").click(()=>{
			let varTitle = $("#title").val();
			let varContent = $("#content").val();
			let varWriter = $("#writer").val();
			
			var makeData ="";
			makeData += "<TestBoard>";
			makeData += "<title>좋은 하루입니다.</title>";
			makeData += "<content>산책하기 좋은 날씨이죠</content>";
			makeData += "<writer>김좋은</writer>";
			makeData += "</TestBoard>";
			
			$.ajax({
				type:"post"
				,url : "/test/detail/xml"
				,data : makeData
				,contentType: "application/xml; charset-utf-8"
				,success : function(result){
					if(result == "SUCCESS"){
						alert("전송에 성공하였습니다.")
					}
				}
			})
		})
	})
</script>
</head>
<body>
	<h1>여러가지 데이터 포맷을 전송하겠습니다.</h1>

	<form>
		제목 : <input type="text" id="title" name="title" value=""><br>
		내용 : <input type="text" id="content" name="content" value=""><br>
		작성자 : <input type="text" id="writer" name="writer" value=""><br>
	</form>
	<br>


	<button id="postButton">Post전송</button>
	<button id="putButton">put전송</button>
	<button id="xmlButton">xml전송</button>

</body>
</html>