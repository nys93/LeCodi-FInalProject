<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>상세보기</title>
	</head>
	<body>
		<h3>글 상세보기</h3>
		${sessionScope.board.title}<br>
		${sessionScope.board.inputdate}<br>
		${sessionScope.board.context}<br>
	
	</body>
</html>