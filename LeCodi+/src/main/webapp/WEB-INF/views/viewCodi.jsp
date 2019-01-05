<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>codiview</title>
<script type="text/javascript">


</script>


</head>
<body>

	<div id="canvas" class="col-xs-9" style="background-color: #e6e6e6; border: none; width: 80%; height: 500px; margin-top: 370px; margin-left: 10px;">
	   	<c:forEach var="codi" items="${codiSet}">
	   	<div
	   	style="position: absolute; resize: none; zoom: 1; display: block; width: ${codi.width}; height: ${codi.height}; top: ${codi.top}; left:${codi.leftItem};">
	   	<img src="${codi.src}" style="width: 80%; height: 80%;" id="blah">
	   	</div>
	   	
	   	</c:forEach>
   </div>
	 
		
		
	
	
	
	
</body>
</html>