<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
	<title>내 문의 내역</title>
	<style type="text/css">
		.content :hover {background-color:#f5f5f5;}
		
		table {
   			 width: 1200px; 
  		}
		table.type07 {
		    border-collapse: collapse;
		    <!--text-align: center;-->
		    line-height: 1.5;
		    border: 1px solid #ccc;
		    margin: 20px 10px;
		}
		table.type07 thead {
		    border-right: 1px solid #ccc;
		    border-left: 1px solid #ccc;
		    background: #e7708d;
		}
		table.type07 thead th {
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: #fff;
		}
		table.type07 tbody th {
		    width: 150px;
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		    background: #fcf1f4;
		}
		table.type07 td {
		    width: 350px;
		    padding: 10px;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		}
		</style>
	</head>
	<body>
	<jsp:include page="../header.jsp"></jsp:include>	
		<!-- 글 리스트 출력<br>
		<a href="viewBoard">글 별 상세페이지</a> -->
		<!-- 보드 넘버로 연결시켜서 글로 넘겨보냄 -->
		
		<div class="container">
<h1 style="font-family: 'Monoton', cursive;">FAQ</h1>



<table class="type07">
    <thead>
    <tr>
        <th scope="cols">글 번호</th>
        <th scope="cols">질문</th>
        <th scope="cols">답변</th>
        <th scope="cols">조회수</th>
    </tr>
    </thead>
    <tbody>
	    <tr class="content">
	        <th scope="row">1</th>
	        <td>아이디와 비밀번호 찾기는 어떻게 해야하나요?</td>
	        <td>lecodi3@gmail.com으로 연락 주세요</td>
	        <td>952</td>
	    </tr>
	    <tr class="content">
	        <th scope="row">2</th>
	        <td>옷을 사고싶은데 어떻게 주문하나요?</td>
	        <td>능력껏 주문해주세요 이곳은 선착순제입니다</td>
	        <td>7777</td>
	    </tr>
	    <tr class="content">
	        <th scope="row">3</th>
	        <td>코딩이 하기 싫을땐 어떻게 해야하나요?</td>
	        <td>죽으면 편해집니다</td>
	        <td>이이데쇼?</td>
	    </tr>
	    <tr class="content">
	        <th scope="row">4</th>
	        <td>프로젝트가 끝나갑니다</td>
	        <td>과연...</td>
	        <td></td>
	    </tr>
    </tbody>
</table>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br>

		<jsp:include page="../footer.jsp"></jsp:include> 
</body>
		
</html>