<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userCafe updateForm</title>
<script type="text/javascript" src="/js/regExUtil.js"></script>
<style type="text/css">
.attachFile {
	display: none;
}
#changeimg{
	padding-top: 10px;
	padding-bottom: 25px;
}
</style>
<script type="text/javascript">
$(function(){
	$("#updateForm").submit(function(){
		if(!inputDataCheck(title_RegEx, "#title", title_err_msg))
			return false;
		if(!inputDataCheck(content_RegEx, "#content", content_err_msg))
			return false;
	});
	//첨부파일 변경 이벤트 
	$("#changeImageBtn").click(function() {
		if($(this).text()=="이미지 바꾸기 ")
			$(this).text("이미지 바꾸기 취소");
		else $(this).text("이미지 바꾸기 ");
		$(".attachFile").toggle();
	});
	   
});
</script>
</head>
<body>
	<h2 align="center"><br><br><strong>글 수정하기</strong><br><br>
	</h2>
<form action="update.do?no=${dto.no }&page=${param.page}&perPageNum=${param.perPageNum}" method="post" id="updateForm" enctype="multipart/form-data">
	<input type="hidden" name="cnt" value="0">
	<input type="hidden" name="page" value="${param.page }">
	<input type="hidden" name="perPageNum" value="${param.perPageNum }">
	<input type="hidden" name="key" value="${param.key }">
	<input type="hidden" name="word" value="${param.word }">
	<input type="hidden" name="deleteFile" value="${dto.fileName }">
	<input type="hidden" name="no" value="${dto.no }" >

	<div class="form-group">
	<label for="title">제목</label>
	<input type="text" class="form-control" id="title" name="title" value="${dto.title }">
	</div>
	
	<div id="changeimg">
	<img alt="" src="${dto.fileName }"><br><br>
	<button id="changeImageBtn" type="button">이미지 바꾸기</button>
	</div>
		
	<div class="form-group attachFile">
	<label for="fileName">첨부파일</label>
	<input type="file" class="form-control" id="fileName" name="fileName" draggable="true"  >
	현재 파일 :${dto.fileName }
	</div>

	<div class="form-group">
	<label for="content">내용</label>
	<textarea class="form-control" id="content" name="content" rows="10">${dto.content }</textarea>
	</div>

	<button>수정</button>
	<button onclick="history.back()">취소</button>

</form>

</body>
</html>