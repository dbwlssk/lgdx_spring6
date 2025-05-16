<%@page import="com.lgdx.entity.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>게시판 목록 페이지</h1>
	<div class="container">
<h2>Spring MVC 05</h2>
<div class="panel panel-info">
<div class="panel-heading">Board Contents Page</div>
<div class="panel-body">
<% Board vo = (Board)request.getAttribute("vo"); %>

<table class = "table table-bordered table-hover">
	<tr>
	
		<td>제목</td>
		<td><%=vo.getTitle() %></td>
		
	</tr>
	<tr>
		<td>내용</td>
		<td><%=vo.getContents().replaceAll("\n", "<br>") %></td>
		
	</tr>
	<tr>
		<td>작성자</td>
		<td><%=vo.getWriter() %></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="boardList.do"><button type="button" class="btn btn-primary">돌아가기</button></a>
			<!-- 
				BoardController에 boardDelete.do 요청 시
				해당 idx와 일치하는 게시글을 삭제하고
				boardList.jsp 페이지로 이동
				힌트 , 상세보기를 잘 살펴보면 매우 흡사하다
			 -->
			<a href="boardDelete.do?idx=<%= vo.getIdx() %>"><button type="button" class="btn btn-primary">삭제</button></a>
			<a href="boardUpdate.do?idx=<%= vo.getIdx() %>"><button type="button" class="btn btn-primary">수정</button></a>
		</td>
	</tr>
</table>

	
</div>
<div class="panel-footer">LG DX - 나유진</div>
</div>
</div>
 
</body>
</html>