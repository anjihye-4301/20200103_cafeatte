<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지쓰기 폼</title>
<script type="text/javascript" src="/js/regExUtil.js"></script>
<script type="text/javascript">
$(function() {
	$("writeForm").submit(function() {
		if(!inputDataCheck(title_RegEx, "#title", title_err_msg))
			return false;
		if(!inputDataCheck(content_RegEx, "#content", content_err_msg))
			return false;
		if(!inputDataCheck(startDate_RegEx, "#startDate", startDate_err_msg))
			return false;
		if(!inputDataCheck(endDate_RegEx, "#endDate", endDate_err_msg))
			return false;
	});
});
</script>
</head>
<body>
<h1>공지쓰기</h1>
<form action="write.do" method="post" id="writeForm">
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" class="form-control" id="title" name="title"
				title="제목을 4~100 글자 사이로 입력하셔야 합니다.">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea class="form-control" rows="5" id="content"
			 name="content"></textarea>
		</div>
		<div class="form-group">
			<label for="startDate">공지시작일</label>
			<input type="date" class="form-control" id="startDate" name="startDate">
		</div>
		<div class="form-group">
			<label for="endDate">공지종료일</label>
			<input type="date" class="form-control" id="endDate" name="endDate">
		</div>
		
		<button>등록</button>
		<button type="reset">다시입력</button>
		<button onclick="history.back()">취소</button>
	</form>
</body>
</html>