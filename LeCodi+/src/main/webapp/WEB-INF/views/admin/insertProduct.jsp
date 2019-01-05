<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insertProduct</title>
</head>
<body>
	<h3>물품 입력</h3>
	<form action="insertProduct" method="post" onsubmit="true">
	<table>
		<tr><td>상품명</td><td><input type="text" id="productname" name="productname"></td></tr>
		<tr><td>상품 개수</td><td><input type="text" id="productamount" name="productamount"></td></tr>
		<tr><td>상품 가격</td><td><input type="text" id="price" name="price"></td></tr>
		<tr><td>카테고리</td><td><input type="text" id="cloth_category" name="cloth_category"></td></tr>
		<tr><td>할인율</td><td><input type="text" id="discountrate" name="discountrate"></td></tr>
		<tr><td>사이즈</td><td><input type="text" id="cloth_size" name="cloth_size"></td></tr>
		<tr><td>색</td><td><input type="text" id="color" name="color"></td></tr>
		<tr><td>이미지 주소1</td><td><input type="text" id="imageaddress1" name="imageaddress1"></td></tr>
		<tr><td>이미지 주소2</td><td><input type="text" id="imageaddress2" name="imageaddress2"></td></tr>
		<tr><td>이미지 주소3</td><td><input type="text" id="imageaddress3" name="imageaddress3"></td></tr>
		<tr><td>이미지 주소4</td><td><input type="text" id="imageaddress4" name="imageaddress4"></td></tr>
		<tr><td>이미지 주소5</td><td><input type="text" id="imageaddress5" name="imageaddress5"></td></tr>
		</table>
		<input type="submit" value="등록">
	</form>
	<br><br>
	null값이 들어갈 수 있으니 잘 확인하고 넣어주세요<br>
	잘못 집어넣은 값은 돌이킬 수 없답니다<br>
	<a href="../">홈으로</a>
</body>
</html>