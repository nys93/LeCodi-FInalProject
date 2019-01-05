<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>codiList</title>
</head>
<body>
		<c:forEach var="codi" items="${codiname}">
			<a href = "view?codiname=${codi}">${codi}</a>
		</c:forEach>
</body>
</html>