<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>mypage</title>
	</head>
	<body>
	<jsp:include page="../header.jsp"></jsp:include>
		<h3>마이 페이지</h3>


		<div id="mypage">
			
	
	
			<!-- <img id="mpTitle" src="./img/mypage_title.png"> -->
	
			<div id="mpInfo">
				<div id="mpTextbox">
	
						<font id="mpHello">${Member.userid }님 안녕하세요.</font><br>
						 <font size="2" color="#848484">저희 르코디를 이용해 주셔서 감사합니다:D<br>
							${Member.name }님의 <b>주문내역</b>, <b>장바구니내역</b>, <b>작성하신 글</b>들 확인 하실수 있습니다.<br>
							궁금하신 사항들은 <b>02 - 0000 - 0000</b> 전화 부탁드립니다.
						</font>
				</div>
				<!-- <div id="mpCheck">
					<p class="mpCheckTitle">적립금</p>
					<p class="mpCheckFont">150원</p>
					<img class="mpCheckbtn" src="./img/btn_result.png">
					<p class="mpCheckTitle">쿠폰</p>
					<p class="mpCheckFont">0개</p>
					<img class="mpCheckbtn" src="./img/btn_result.png">
				</div> -->
			</div>
			<div id="mpBoxes">
	
				<a href="../order/orderList">
					<div class="mpBox">
						<p class="mpBoxTitle">ORDER</p>
						<p class="mpBoxText">주문 내역 / 배송 현황</p>
					</div>
				</a> <a href="../cart">
					<div class="mpBox">
						<p class="mpBoxTitle">CART</p>
						<p class="mpBoxText">장바구니 상품 조회</p>
					</div>
					
				<!-- jsp를 아직 안만듬 -->
				</a> <a href="myPageBoardList?userid=${Member.userid}">
					<div class="mpBox">
						<p class="mpBoxTitle">MY BOARD</p>
						<p class="mpBoxText">게시물 관리</p>
					</div>
				</a> <a href="mypage_update">
					<div class="mpBox">
						<p class="mpBoxTitle">MY INFO</p>
						<p class="mpBoxText">회원 정보 조회 / 수정</p>
					</div>
				</a>
	
			</div>
			<jsp:include page="../footer.jsp"></jsp:include> 
		</div>


	</body>
</html>