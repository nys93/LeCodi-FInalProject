<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
	<title>notice</title>
	<style type="text/css">
		.content :hover {background-color:#f5f5f5;}
		
		table {
   			 width: 1200px; 
  		}
		table.type07 {
		    border-collapse: collapse;
		    text-align: center;
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
<h1 style="font-family: 'Monoton', cursive;">NOTICE</h1>



<table class="type07">
    <thead>
    <tr>
        <th scope="cols">글 번호</th>
        <th scope="cols">제목</th>
        <th scope="cols">작성일</th>
        <th scope="cols">작성자</th>
    </tr>
    </thead>
    <tbody>
    <tr class="content">
        <th scope="row">134</th>
        <td>5월 1일 근로자의날 휴무 안내</td>
        <td>2018/04/29</td>
        <td>LeCodi</td>
    </tr>
    <tr class="content">
        <th scope="row">133</th>
        <td>[필독]제주도 및 도서산간지역 교환&반품 안내</td>
        <td>2018/04/27</td>
        <td>LeCodi</td>
    </tr>
    <tr class="content">
        <th scope="row">132</th>
        <td>5월 연휴 안내</td>
        <td>2018/04/25</td>
        <td>LeCodi</td>
    </tr>
      <tr class="content">
        <th scope="row">131</th>
        <td>[이벤트]3월 이벤트 당첨자 발표</td>
        <td>2018/04/20</td>
        <td>LeCodi</td>
    </tr>
      <tr class="content">
        <th scope="row">130</th>
        <td>안녕하세요</td>
        <td>2018/04/19</td>
        <td>LeCodi</td>
    </tr>
      <tr class="content">
        <th scope="row">129</th>
        <td>[필독]배송 관련 공지</td>
        <td>2018/04/17</td>
        <td>LeCodi</td>
    </tr>
      <tr class="content">
        <th scope="row">128</th>
        <td>4월 카드 무이자 혜택 이벤트</td>
        <td>2018/04/07</td>
        <td>LeCodi</td>
    </tr>
      <tr class="content">
        <th scope="row">127</th>
        <td>만우절 기념 특별 이벤트</td>
        <td>2018/04/01</td>
        <td>LeCodi</td>
    </tr>
      <tr class="content">
        <th scope="row">126</th>
        <td>새로운 멤버십이 찾아옵니다!</td>
        <td>2018/03/30</td>
        <td>LeCodi</td>
    </tr>
      <tr class="content">
        <th scope="row">125</th>
        <td>LeCodi 카카오톡 상담 오픈 안내</td>
        <td>2017/03/28</td>
        <td>LeCodi</td>
    </tr>
    
    </tbody>
</table>
<div style="text-align: center;">1 2 3 4 5   >></div>
</div>
		
</body>
		
</html>