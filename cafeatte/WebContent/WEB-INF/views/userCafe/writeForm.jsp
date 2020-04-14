<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<title>UserCafe Write Form</title>
<style type="text/css">
#title{
 height: 50px;
 width: 100%;
}
#title:hover
{
 cursor: pointer;
}

#content{
 height: 300px;
 width: 100%;
}
#content:hover
{
 cursor: pointer;
}

</style>
<script type="text/javascript" src="/js/regExUtil.js"></script>
<script type="text/javascript">
	$(function(){
		$("#writeForm").submit(function() {
			if(!inputDataCheck(title_RegEx, "#title", title_err_msg))
				return false;
			if(!inputDataCheck(content_RegEx, "#content", content_err_msg))
				return false;
		});
	});



</script>
</head>
<body>
	<h2 align="center"><br><br><strong>당신만의 카페를 공유해보세요!</strong>
	<i class='fas fa-coffee' style='font-size:35px;color:brown'></i><br><br>
	</h2>
	<form action="write.do?page=${param.page }&perPageNum=${param.perPageNum}" method="post" id="writeForm" enctype="multipart/form-data">
		<input name="page" value="${param.page }" type="hidden">
		<input name="perPageNum" value="${param.perPageNum }" type="hidden">
<%-- 		<input type="hidden" value="${login.id }" name="id"> --%>
		<div id="titleForm">
			<input type="text" id="title" name="title"
			title="제목을 4~100글자 사이로 입력해주세요." placeholder="제목(4~100자)" style="font-size:30px;border-style: hidden;">
		</div>
		<hr>
		<div id="contentForm">
			<textarea rows="" cols="" id="content" name="content" placeholder="멋진 내용을 입력하세요!(4~1000자)" style="font-size:30px; border-style: hidden;"></textarea>
		</div>
		
		<div>
<!-- 			<i class="fa fa-image" style="font-size:48px;color:red"></i> -->
			<input type="file" id="fileName" name="fileName" draggable="true" required="required" ><br><br>
<!-- 			</div> -->
		</div>
		

		
		
		<button>등록</button>
		<button onclick="history.back()">글쓰기취소</button>
	</form>

</body>
</html>