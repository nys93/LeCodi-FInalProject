<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html lang="ko-KR"> 
<head> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta name="description" content=""> 
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<title>Le Codi</title> 

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"> 
 
<link rel="shortcut icon" href="../../assets/ico/favicon.png"> 
<!-- 1. 파비콘 걸기 --> <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<!-- 구글 폰트 --> 
<link href="https://fonts.googleapis.com/css?family=Chicle|IBM+Plex+Mono|Indie+Flower" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico|Shadows+Into+Light" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=East+Sea+Dokdo|Hi+Melody|Pacifico|Shadows+Into+Light" rel="stylesheet">
<!-- 2.부트스트랩용 CSS --> 
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" /> 
<!-- 3.폰트아이콘용 CSS --> 
<style type="text/css">
.container-fluid text-center{
	position: relative;
}
 
/*floating menu*/
 body{
    margin-top:20px;
    background:#eee;
    height:1500px;
} 
.main-navigation .menu li a {
    display: block;
    font-size: 12px;
    color: #999;
    text-transform: uppercase;
    text-decoration: none;
    letter-spacing: .1em;
    padding-left: 20px;
    padding-right: 20px;
    -webkit-transition: color 0.3s;
    -o-transition: color 0.3s;
    transition: color 0.3s;
}
.floating-menu-btn {
    display: block;
    position: fixed;
    z-index: 100;
    top: 50px;
    right: 35px;
    width: 56px;
    height: 56px;
    border-radius: 50%;
}
.floating-menu-btn .floating-menu-toggle .bar {
    width: 22px;
    margin: 0 0 4px 0;
}
.mobile-menu-toggle .bar, .floating-menu-toggle .bar {
    display: block;
    will-change: transform, opacity;
    width: 32px;
    height: 2px;
    margin: 0 0 6px 0;
    background: #333;
    opacity: 1;
    -webkit-transform: translate(0) rotate(0deg);
    -moz-transform: translate(0) rotate(0deg);
    -ms-transform: translate(0) rotate(0deg);
    -o-transform: translate(0) rotate(0deg);
    transform: translate(0) rotate(0deg);
    -webkit-transition: all 0.2s ease-out;
    -o-transition: all 0.2s ease-out;
    transition: all 0.2s ease-out;
}
.floating-header {
    position: absolute;
    z-index: 100;
    display: block;
    width: 100%;
    padding: 35px
}

.floating-header .site-logo {
    max-width: 79px;
    padding: 0;
    margin: 0 !important
}

.floating-header+* {
    padding-top: 100px
}

@media screen and (max-width: 768px) {
    .floating-header {
        padding: 25px 15px
    }
    .floating-header+* {
        padding-top: 175px
    }
}

.floating-header .main-navigation-wrap {
    position: fixed;
    z-index: 110;
    display: table;
    width: 300px;
    height: 100%;
    top: 110px;
    left: 50%;
    margin-left: -150px;
    overflow: hidden;
    visibility: hidden
}

.floating-header .main-navigation {
    position: relative;
    display: table-cell;
    vertical-align: middle;
    top: auto;
    right: auto;
    padding: 0;
    text-align: center;
    top: -110px;
    overflow: hidden;
    opacity: 0;
    -webkit-transform: translateY(35px);
    -moz-transform: translateY(35px);
    -ms-transform: translateY(35px);
    -o-transform: translateY(35px);
    transform: translateY(35px);
    -webkit-transition: all 0.35s 0.2s;
    -o-transition: all 0.35s 0.2s;
    transition: all 0.35s 0.2s
}

.floating-header .main-navigation .menu {
    display: inline-block;
    width: 100%;
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
    -ms-transform: translate3d(0, 0, 0);
    -o-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    -webkit-transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1);
    -o-transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1);
    transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1)
}

.floating-header .main-navigation .menu.off-view {
    -webkit-transform: translate3d(-100%, 0, 0);
    -moz-transform: translate3d(-100%, 0, 0);
    -ms-transform: translate3d(-100%, 0, 0);
    -o-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0)
}

.floating-header .main-navigation .menu.in-view {
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
    -ms-transform: translate3d(0, 0, 0);
    -o-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0)
}

.floating-header .main-navigation .menu>li {
    position: static;
    border-bottom: none
}

.floating-header .main-navigation .menu>li>a {
    padding-top: 9px;
    padding-bottom: 9px
}

.floating-header .main-navigation .menu li {
    display: block
}

.floating-header .main-navigation .menu li a {
    display: block;
    font-size: 16px
}

.floating-header .main-navigation .menu li.menu-item-has-children>.sub-menu {
    position: absolute;
    display: block;
    width: 100%;
    height: auto;
    top: 0;
    left: auto;
    right: -100%;
    padding: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
    -webkit-transform: translate3d(100%, 0, 0);
    -moz-transform: translate3d(100%, 0, 0);
    -ms-transform: translate3d(100%, 0, 0);
    -o-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    -webkit-transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1);
    -o-transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1);
    transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1)
}

.floating-header .main-navigation .menu li.menu-item-has-children>.sub-menu>li>a {
    padding-top: 9px;
    padding-bottom: 9px
}

.floating-header .main-navigation .menu li.menu-item-has-children>.sub-menu.in-view {
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
    -ms-transform: translate3d(0, 0, 0);
    -o-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0)
}

.floating-header .main-navigation .menu li.menu-item-has-children>.sub-menu.off-view {
    -webkit-transform: translate3d(-100%, 0, 0);
    -moz-transform: translate3d(-100%, 0, 0);
    -ms-transform: translate3d(-100%, 0, 0);
    -o-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0)
}

.floating-header .main-navigation .menu li.menu-item-has-children:hover .sub-menu {
    -webkit-animation: none;
    -o-animation: none;
    animation: none
}

.floating-header .main-navigation.is-visible {
    visibility: visible;
    opacity: 1;
    -webkit-transform: translateY(0);
    -moz-transform: translateY(0);
    -ms-transform: translateY(0);
    -o-transform: translateY(0);
    transform: translateY(0)
}

.ie .floating-header .main-navigation-wrap .main-navigation,
.edge .floating-header .main-navigation-wrap .main-navigation,
.firefox .floating-header .main-navigation-wrap .main-navigation {
    top: 0
}

.android .floating-header .main-navigation-wrap .main-navigation,
.ios .floating-header .main-navigation-wrap .main-navigation {
    -webkit-transition: all 0.25s 0s;
    -o-transition: all 0.25s 0s;
    transition: all 0.25s 0s
}
/* floating radius button*/
.floating-menu-btn { 
    display: block;
    position: fixed;
    z-index: 100;
    top: 110px;
    right: 35px;
    width: 56px;
    height: 56px;
    border-radius: 50%
}

.floating-menu-btn:before {
    display: block;
    position: absolute;
    z-index: -1;
    content: "";
    width: 56px;
    height: 56px;
    background-color: #fff;
    border-radius: 50%;
    -webkit-transform-origin: center 30%;
    -moz-transform-origin: center 30%;
    -ms-transform-origin: center 30%;
    transform-origin: center 30%;
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
    -webkit-transition: all 0.35s ease-out;
    -o-transition: all 0.35s ease-out;
    transition: all 0.35s ease-out;
    -webkit-box-shadow: 0px 12px 18px 0px rgba(0, 0, 0, 0.26);
    box-shadow: 0px 12px 18px 0px rgba(0, 0, 0, 0.26)
}

.floating-menu-btn .floating-menu-toggle-wrap {
    position: absolute;
    z-index: 1;
    width: 56px;
    height: 56px;
    border-radius: 50%;
    top: 28px;
    left: 27px;
    cursor: pointer
}

.floating-menu-btn .floating-menu-toggle {
    display: block;
    width: 22px;
    right: auto;
    left: 50%;
    margin-top: -6px;
    margin-left: -11px
}

.floating-menu-btn .floating-menu-toggle .bar {
    width: 22px;
    margin: 0 0 4px 0
}

.floating-menu-btn .floating-menu-toggle .bar:last-child {
    margin-bottom: 0
}

.floating-menu-btn.expanded .floating-menu-toggle {
    -webkit-transform: rotate(-180deg);
    -moz-transform: rotate(-180deg);
    -ms-transform: rotate(-180deg);
    -o-transform: rotate(-180deg);
    transform: rotate(-180deg)
}

.floating-menu-btn.expanded .floating-menu-toggle .bar:nth-child(1) {
    -webkit-transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1);
    -moz-transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1);
    -ms-transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1);
    -o-transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1);
    transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1)
}

.floating-menu-btn.expanded .floating-menu-toggle .bar:nth-child(3) {
    -webkit-transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1);
    -moz-transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1);
    -ms-transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1);
    -o-transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1);
    transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1)
}

.floating-menu-btn.expanded:before {
    -webkit-transform: scale(80);
    -moz-transform: scale(80);
    -ms-transform: scale(80);
    -o-transform: scale(80);
    transform: scale(80)
}

@media screen and (max-width: 768px) {
    .floating-menu-btn {
        right: 15px
    }
}
 /**/                                  


	
  /* Add a gray background color and some padding to the footer */
    footer {
     	position: relative;
     	padding-top: 400px;
    }

  
   /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-top:-150px;
      margin-bottom: -20px;
      background-color: white;
     
    }
  	
  	 .navbar {
  	  background-color: white;
      margin-bottom: 50px;
      border-radius: 0px;
    }
    
    .carousel-inner > .item > img {
    min-width: 100%;
    margin: 0 auto;
	}
	
	h1{
		font-family: 'Chicle', cursive;
		font-family: 'IBM Plex Mono', monospace;
		font-family: 'Indie Flower', cursive;
	}
	p{
		font-family: 'Chicle', cursive;
		font-family: 'IBM Plex Mono', monospace;
		font-family: 'Indie Flower', cursive;
	}
	li{
		font-family: 'Pacifico', cursive;
		font-family: 'Shadows Into Light', cursive;
		font-size: large;
	}
	.navbar-brand{
		font-family: 'Pacifico', cursive;
		font-family: 'Shadows Into Light', cursive;
		font-size: xx-large;
		color: black;
	}
	
	.collapse navbar-collapse{
		border-radius: 10px;
		border-color: black;
	}	

	.main_category{
		color: black;
	}
	
	

/*회전 슬라이드*/
.carousel slide{
	position: relative;
	margin: 0; 
	z-index: -2;
}
.footer_font{
	font-family: 'Hi Melody', cursive;
	font-size: medium;
}

.movie{ height: 314px;
	width: 220px;
	margin-left: 10px;
	margin-right: 10px;
	margin-top: 10px;
	margin-bottom: 20px;
	border-radius: 20px;
	overflow: hidden;
	position: relative;
	float: left;
}					
.up{
	position: absolute;
	}
.movie:hover .up{
	top: 0px;
	height: 70%;
	width: 100%;
	background-color: gray;
	opacity: 0.3;
	transition-duration: 2s;
	}
.down {
	background-color: white;
	position: absolute;
	width: 100%;
	}
.movie:hover .down {
  top:190px;
  background-color: white;
  height: 60%;
  width: 100%;
  transition-duration: 0.5s;
  font-family: "Raleway", sans-serif;
  font-size: 17px;
	}
.radio1{
	cursor: pointer;
	font-size: 40px;
	}
	
  </style> 
  
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
  <!--[if lt IE 9]> <!-- 5. 인터넷익스플로러 9버전 이하일 경우 html5가 인식될 수 있게 해주는 스크립트 --> 
  
  <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script> 
  <script src="./images/respond.min.js"></script> 
 
  <!--[if IE 7]> <!-- 6. 인터넷익스플로러 7버전 일 경우 폰트아이콘이 인식될 수 있게 해주는 스크립트 --> 
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome-ie7.min.css" rel="stylesheet">
  <script type="text/javascript">
  	function click(){
  		
  	}
  	
  	function paging(page) {
		var ePage = document.getElementById('page');
		ePage.value = page;
		var form = document.getElementById('pageForm');
		form.submit();
	}
  </script>
  </head>
  
  <body> 
	

<!-- floating menu -->	
<header class="floating-header">
  
  <div class="floating-menu-btn">
    <div class="floating-menu-toggle-wrap">
      <div class="floating-menu-toggle">
        <span class="bar"></span>
        <span class="bar"></span>
        <span class="bar"></span>
      </div>
    </div>
  </div>

  <div class="main-navigation-wrap">
    <nav class="main-navigation" data-back-btn-text="Back">
      <ul class="menu">
        <li class="menu-item-has-children current-menu-item delay-0">
          <a href="#"><i class="fa fa-arrow-right" aria-hidden="true"></i>More Options</a>
          <ul class="sub-menu">
 
            <li class="current-menu-item"><a href="#">Home Design Agency</a></li>
            <li><a href="#">Home Architecture</a></li>
            <li><a href="#">Home Photographer</a></li>
          </ul>
        </li>
        <li class="delay-1"><a href="#">Portfolio</a></li>
        <li class="delay-2"><a href="#">Blog</a></li>
        <li class="delay-3"><a href="#">About Us</a></li>
        <li class="delay-4"><a href="#">Contacts</a></li>
        <li class="delay-5"><a href="#">Elements</a></li>
      </ul><!-- .menu -->
    </nav><!-- .main-navigation -->
  </div><!-- .main-navigation-wrap -->
</header>
	
  
  <nav class="navbar navbar-fixed-top">
  <div class="container-fluid">
  <div class="jumbotron">
  <div class="container text-center">
 <!--    <h1>Le Codi</h1>      
    <p>DIBS ON THESE CLOTHES</p> -->
  </div>
 </div>  
       
 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Le Codi</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
		<li class="active"><a href="" class ="main_category">HOME</a></li> 
  	 	 <li><a href="board/csc" class ="main_category">Customer Center</a> </li>
 	 	<c:if test="${loginId == null}">
			<li><a href="member/agree" class ="main_category">Join</a></li>
			<li><a href="member/login" class ="main_category">Login</a></li>
		</c:if>
		<c:if test="${loginId == 'admin'}">
			<li><a href="admin/main">Admin</a></li>
		</c:if>
		<c:if test="${loginId != null}">
			<li><a href="member/logout" class ="main_category">Logout</a></li>
		</c:if>
		
      </ul>
      <ul class="nav navbar-nav navbar-right">
      
      <c:if test="${loginId != null}">
        <li><a href="member/mypage" class ="main_category"><span class="glyphicon glyphicon-user"></span> MyPage</a></li>
        <li><a href="codi" class ="main_category"><img alt="" src="resources/image/hanger.png" style="width: 27px; height: 20px;"> CodiTool</a></li>
      </c:if>
        <li><a href="cart/main" class ="main_category"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

  	 <!--8. 모바일 시 사이드 메뉴 숨기기 시작 --> 
  	 <p class="pull-right visible-xs"> 
  	 <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button> 
  	 </p> 
  	 <!--모바일 시 사이드 메뉴 숨기기 끝 --> 
  	<div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  
  <!-- 회전광고판 항목 -->
  <div class="carousel-inner">
		  	  
    <div class="active item"><img alt="carousel" src="resources/image/img1.jpg"></div>
    <div class="item"><img alt="carousel" src="resources/image/img2.jpg"></div>
    <div class="item"><img alt="carousel" src="resources/image/img3.jpg"></div>
    
  </div>
  
  <!-- 회전광고판 탐색 -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>

<!-- 황용추가 검색기--> 
<br>
<div class="w3-container">
	<table class="w3-table-all">
	<tr>
		<td>카테고리</td>
		<td><a id="neat">니트/스웨터</a></td>
		<td><a id="onePiece">원피스</a></td>
		<td><a id="tShirt">티셔츠</a></td>
		<td><a id="blouse">블라우스/셔츠</a></td>
		<td><a id="jumper">점퍼</a></td>
		<td><a id="jacket">재킷</a></td>
		<td><a id="coat">코트</a></td>
		<td><a id="jeans">청바지</a></td>
		<td><a id="skirt">스커트</a></td>
		<td><a id="legings">레깅스</a></td>
		<td><a id="pants">바지</a></td>
		<td><a id="training">트레이닝복</a></td>
		<td><a id="vest">조끼</a></td>
		<td><a id="suit">정장</a></td>
		<td><a id="raincoat">레인코트</a></td>
	</tr>
	<tr>
		<td>주요소재x</td>
		<td>데님</td>
		<td>면</td>
		<td>시폰</td>
		<td>폴리에스테르</td>
		<td>폴리우레탄</td>
		<td>아크릴</td>
		<td>나일론</td>
		<td>모</td>
		<td>스판덱스</td>
		<td>가죽</td>
		<td>앙고라</td>
		<td>알파카</td>
		<td>견</td>
		<td>캐시미어</td>
	</tr>
    <tr>
		<td>색상선택(중복가능)</td>
		<td><a id="red">빨</a></td>
		<td><a id="ornage">주</a></td>
		<td><a id="yellow">노</a></td>
		<td><a id="green">초록</a></td>
		<td><a id="sky">하늘</a></td>
		<td><a id="blue">파랑</a></td>
		<td><a id="navy">남색</a></td>
		<td><a id="white">흰색</a></td>
		<td><a id="grey">회색</a></td>
		<td><a id="black">검정</a></td>
		<td><a id="brown">갈색</a></td>
		<td><a id="purple">보라</a></td>
		<td><a id="pink">핑크</a></td>
    </tr>
    <tr>
		<td>가격</td>
		<td><a id="priceOne">~1만원</a></td>
		<td><a id="priceTwo">1만원~2만원</a></td>
		<td><a id="priceThree">2만원~4만원</a></td>
		<td><a id="priceFour">4만원~</a></td>
    </tr>
   
  </table>
</div>
 
<div id="grim">         
	<c:forEach var="product" items="${product}" varStatus="status">
		<div id="big1">
			<div id="${product.productname}" style="display: ">
				<div class="movie">
					<a href="product?productcode=${product.productcode}"><img class="poster" src="${product.imageaddress1}" width="100%"></a>
					<div class="up"></div>
					<div class="down">
						<div align="center"><a href="product?productcode=${product.productcode}">${product.productname}</a></div>
						<div align="center">${product.price} 원</div>
						<br>
						<div align="center">
							<a href="product?productcode=${product.productcode}&cloth_category=${product.cloth_category}">
							<img src="resources/image/cart.png" width="20%">
							</a>
							<a href="product?productcode=${product.productcode}&cloth_category=${product.cloth_category}">
							<img src="resources/image/search.png" width="20%">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</div> 
<br><br><br><br><br><br><br><br><br>
<!-- 황용추가 끝 -->   

<div id="navigator">
		
		<c:if test="${navi.startPageGroup > 1}">
			<a href="javascript:paging(1)">첫번째페이지</a>
			<a href="javascript:paging(${navi.startPageGroup-1})">이전</a>
		</c:if>
		<c:forEach var="p" begin="${navi.startPageGroup}"
			end="${navi.endPageGroup}">
			
			<c:if test="${navi.currentPage != p}">
				<a href="javascript:paging(${p})">${p}</a>
			</c:if>
			
			<c:if test="${navi.currentPage == p}">
				${p}
			</c:if>
			
		</c:forEach>
		<c:if test="${navi.endPageGroup < navi.totalPageCount}">
		<a href="javascript:paging(${navi.endPageGroup+1})">다음</a>
		<a href="javascript:paging(${navi.totalPageCount})">마지막페이지</a>
		</c:if>
		
		</div>
			<div id="page_field" class="paging">
			<form id="pageForm" action="./main" method="get">
				<input type="hidden" id="page" name="page">
			</form>
		</div>

<br><br><br><br><br><br><br><br><br>

	
	<div style="position: fixed; right:expression((document.body.clientWidth/2)+515); 
  	  top:700px; width:100px; height:100px; z-index:9; cursor:pointer;">
      </div>
      
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<footer class="container-fluid text-center">
  <p class = "footer_font">Le Codi</p> 
  <a class = "footer_font">회사소개 | </a>  
  <a href="board/notice" class = "footer_font">공지사항 | </a>  
  <a class = "footer_font">이용약관 | </a>  
  <a class = "footer_font">개인정보취급방침 | </a>  
  
 

<p class = "footer_font">르 코디  |  대표 : 남유송  |  문의전화 : 0507-1403-6313  |  서울시 관악구 봉천동 2311, Biz6</p>
<p class = "footer_font">사업자등록번호 : 053-30-00343  |  통신판매업신고 : 제2017-용인기흥-00248호 [사업자정보확인]  |  개인정보책임자 : 남유송 (lecodi4u@naver.com)</p>

<p class = "footer_font">COPYRIGHT 2017 LeCodi. ALL RIGHTS RESERVED.</p> 
  
</footer>
  	 
  	 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> <!--9. jquery 스크립트 --> 
  	 <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script><!--10. bootstrap 스크립트 --> 
  	 
  	 <script type="text/javascript"> 
  	 
  	 
  	 /* 황용추가시작  검색기 */
  	var jeansFlag = true;
  	var neatFlag= true;
  	var onePieceFlag= true;
  	var tShirtFlag= true;
  	var blouseFlag= true;
  	var jumperFlag= true;
	var jacketFlag= true;
	var coatFlag= true;
	var skirtFlag= true;
	var legingsFlag= true;
	var pantsFlag= true;
	var trainingFlag= true;
	var vestFlag= true;
	var suitFlag= true;
	var raincoatFlag= true;
	var redFlag= true;
	var ornageFlag= true;
	var yellowFlag= true;
	var greenFlag= true;
	var skyFlag= true;
	var blueFlag= true;
	var navyFlag= true;
	var whiteFlag= true;
	var greyFlag= true;
	var blackFlag= true;
	var brownFlag= true;
	var purpleFlag= true;
	var pinkFlag= true;
	var priceOneFlag= true;
	var priceTwoFlag= true;
	var priceThreeFlag= true;
	var priceFourFlag= true;
	var addList = [];
	var priceList = [];

	$(document).ready(function(){
	    $("#jeans").click(function(){
	        if(jeansFlag==true){
	        	$('#jeans').css("background-color","black");
	        	jeansFlag=false;
	        	addList.push("jeans");
	        	select();
	        }else{
	        	$('#jeans').css("background-color","white");
	        	jeansFlag=true;
	        	addList.splice($.inArray("jeans", addList),1);
	        	select();
	        }
	    });
	    $("#neat").click(function(){
	        if(neatFlag==true){
	        	$('#neat').css("background-color","black");
	        	neatFlag=false;
	        	addList.push("neat");
	        	select();
	        }else{
	        	$('#neat').css("background-color","white");
	        	neatFlag=true;
	        	addList.splice($.inArray("neat", addList),1);
	        	select();
	        }
	    });
	    $("#onePiece").click(function(){
	        if(onePieceFlag==true){
	        	$('#onePiece').css("background-color","black");
	        	onePieceFlag=false;
	        	addList.push("onePiece");
	        	select();
	        }else{
	        	$('#onePiece').css("background-color","white");
	        	onePieceFlag=true;
	        	addList.splice($.inArray("onePiece", addList),1);
	        	select();
	        }
	    });
	    $("#tShirt").click(function(){
	        if(tShirtFlag==true){
	        	$('#tShirt').css("background-color","black");
	        	tShirtFlag=false;
	        	addList.push("tShirt");
	        	select();
	        }else{
	        	$('#tShirt').css("background-color","white");
	        	tShirtFlag=true;
	        	addList.splice($.inArray("tShirt", addList),1);
	        	select();
	        }
	    });
	    $("#blouse").click(function(){
	        if(blouseFlag==true){
	        	$('#blouse').css("background-color","black");
	        	blouseFlag=false;
	        	addList.push("blouse");
	        	select();
	        }else{
	        	$('#blouse').css("background-color","white");
	        	blouseFlag=true;
	        	addList.splice($.inArray("blouse", addList),1);
	        	select();
	        }
	    });
	    $("#jumper").click(function(){
	        if(jumperFlag==true){
	        	$('#jumper').css("background-color","black");
	        	jumperFlag=false;
	        	addList.push("jumper");
	        	select();
	        }else{
	        	$('#jumper').css("background-color","white");
	        	jumperFlag=true;
	        	addList.splice($.inArray("jumper", addList),1);
	        	select();
	        }
	    });
	    $("#jacket").click(function(){
	        if(jacketFlag==true){
	        	$('#jacket').css("background-color","black");
	        	jacketFlag=false;
	        	addList.push("jacket");
	        	select();
	        }else{
	        	$('#jacket').css("background-color","white");
	        	jacketFlag=true;
	        	addList.splice($.inArray("jacket", addList),1);
	        	select();
	        }
	    });
	    $("#coat").click(function(){
	        if(coatFlag==true){
	        	$('#coat').css("background-color","black");
	        	coatFlag=false;
	        	addList.push("coat");
	        	select();
	        }else{
	        	$('#coat').css("background-color","white");
	        	coatFlag=true;
	        	addList.splice($.inArray("coat", addList),1);
	        	select();
	        }
	    });
	    $("#skirt").click(function(){
	        if(skirtFlag==true){
	        	$('#skirt').css("background-color","black");
	        	skirtFlag=false;
	        	addList.push("skirt");
	        	select();
	        }else{
	        	$('#skirt').css("background-color","white");
	        	skirtFlag=true;
	        	addList.splice($.inArray("skirt", addList),1);
	        	select();
	        }
	    });
	    $("#legings").click(function(){
	        if(legingsFlag==true){
	        	$('#legings').css("background-color","black");
	        	legingsFlag=false;
	        	addList.push("legings");
	        	select();
	        }else{
	        	$('#legings').css("background-color","white");
	        	legingsFlag=true;
	        	addList.splice($.inArray("legings", addList),1);
	        	select();
	        }
	    });
	    $("#pants").click(function(){
	        if(pantsFlag==true){
	        	$('#pants').css("background-color","black");
	        	pantsFlag=false;
	        	addList.push("pants");
	        	select();
	        }else{
	        	$('#pants').css("background-color","white");
	        	pantsFlag=true;
	        	addList.splice($.inArray("pants", addList),1);
	        	select();
	        }
	    });
	    $("#training").click(function(){
	        if(trainingFlag==true){
	        	$('#training').css("background-color","black");
	        	trainingFlag=false;
	        	addList.push("training");
	        	select();
	        }else{
	        	$('#training').css("background-color","white");
	        	trainingFlag=true;
	        	addList.splice($.inArray("training", addList),1);
	        	select();
	        }
	    });
	    $("#vest").click(function(){
	        if(vestFlag==true){
	        	$('#vest').css("background-color","black");
	        	vestFlag=false;
	        	addList.push("vest");
	        	select();
	        }else{
	        	$('#vest').css("background-color","white");
	        	vestFlag=true;
	        	addList.splice($.inArray("vest", addList),1);
	        	select();
	        }
	    });
	    $("#suit").click(function(){
	        if(suitFlag==true){
	        	$('#suit').css("background-color","black");
	        	suitFlag=false;
	        	addList.push("suit");
	        	select();
	        }else{
	        	$('#suit').css("background-color","white");
	        	suitFlag=true;
	        	addList.splice($.inArray("suit", addList),1);
	        	select();
	        }
	    });
	    $("#raincoat").click(function(){
	        if(raincoatFlag==true){
	        	$('#raincoat').css("background-color","black");
	        	raincoatFlag=false;
	        	addList.push("raincoat");
	        	select();
	        }else{
	        	$('#raincoat').css("background-color","white");
	        	raincoatFlag=true;
	        	addList.splice($.inArray("raincoat", addList),1);
	        	select();
	        }
	    });
	    $("#red").click(function(){
	        if(redFlag==true){
	        	$('#red').css("background-color","black");
	        	redFlag=false;
	        	addList.push("red");
	        	select();
	        }else{
	        	$('#red').css("background-color","white");
	        	redFlag=true;
	        	addList.splice($.inArray("red", addList),1);
	        	select();
	        }
	    });
	    $("#ornage").click(function(){
	        if(ornageFlag==true){
	        	$('#ornage').css("background-color","black");
	        	ornageFlag=false;
	        	addList.push("ornage");
	        	select();
	        }else{
	        	$('#ornage').css("background-color","white");
	        	ornageFlag=true;
	        	addList.splice($.inArray("ornage", addList),1);
	        	select();
	        }
	    });
	    $("#yellow").click(function(){
	        if(yellowFlag==true){
	        	$('#yellow').css("background-color","black");
	        	yellowFlag=false;
	        	addList.push("yellow");
	        	select();
	        }else{
	        	$('#yellow').css("background-color","white");
	        	yellowFlag=true;
	        	addList.splice($.inArray("yellow", addList),1);
	        	select();
	        }
	    });
	    $("#green").click(function(){
	        if(greenFlag==true){
	        	$('#green').css("background-color","black");
	        	greenFlag=false;
	        	addList.push("green");
	        	select();
	        }else{
	        	$('#green').css("background-color","white");
	        	greenFlag=true;
	        	addList.splice($.inArray("green", addList),1);
	        	select();
	        }
	    });
	    $("#sky").click(function(){
	        if(skyFlag==true){
	        	$('#sky').css("background-color","black");
	        	skyFlag=false;
	        	addList.push("sky");
	        	select();
	        }else{
	        	$('#sky').css("background-color","white");
	        	skyFlag=true;
	        	addList.splice($.inArray("sky", addList),1);
	        	select();
	        }
	    });
	    $("#blue").click(function(){
	        if(blueFlag==true){
	        	$('#blue').css("background-color","black");
	        	blueFlag=false;
	        	addList.push("blue");
	        	select();
	        }else{
	        	$('#blue').css("background-color","white");
	        	blueFlag=true;
	        	addList.splice($.inArray("blue", addList),1);
	        	select();
	        }
	    });
	    $("#navy").click(function(){
	        if(navyFlag==true){
	        	$('#navy').css("background-color","black");
	        	navyFlag=false;
	        	addList.push("navy");
	        	select();
	        }else{
	        	$('#navy').css("background-color","white");
	        	navyFlag=true;
	        	addList.splice($.inArray("navy", addList),1);
	        	select();
	        }
	    });
	    $("#white").click(function(){
	        if(whiteFlag==true){
	        	$('#white').css("background-color","black");
	        	whiteFlag=false;
	        	addList.push("white");
	        	select();
	        }else{
	        	$('#white').css("background-color","white");
	        	whiteFlag=true;
	        	addList.splice($.inArray("white", addList),1);
	        	select();
	        }
	    });
	    $("#grey").click(function(){
	        if(greyFlag==true){
	        	$('#grey').css("background-color","black");
	        	greyFlag=false;
	        	addList.push("grey");
	        	select();
	        }else{
	        	$('#grey').css("background-color","white");
	        	greyFlag=true;
	        	addList.splice($.inArray("grey", addList),1);
	        	select();
	        }
	    });
	    $("#black").click(function(){
	        if(blackFlag==true){
	        	$('#black').css("background-color","black");
	        	blackFlag=false;
	        	addList.push("black");
	        	select();
	        }else{
	        	$('#black').css("background-color","white");
	        	blackFlag=true;
	        	addList.splice($.inArray("black", addList),1);
	        	select();
	        }
	    });
	    $("#brown").click(function(){
	        if(brownFlag==true){
	        	$('#brown').css("background-color","black");
	        	brownFlag=false;
	        	addList.push("brown");
	        	select();
	        }else{
	        	$('#brown').css("background-color","white");
	        	brownFlag=true;
	        	addList.splice($.inArray("brown", addList),1);
	        	select();
	        }
	    });
	    $("#purple").click(function(){
	        if(purpleFlag==true){
	        	$('#purple').css("background-color","black");
	        	purpleFlag=false;
	        	addList.push("purple");
	        	select();
	        }else{
	        	$('#purple').css("background-color","white");
	        	purpleFlag=true;
	        	addList.splice($.inArray("purple", addList),1);
	        	select();
	        }
	    });
	    $("#pink").click(function(){
	        if(pinkFlag==true){
	        	$('#pink').css("background-color","black");
	        	pinkFlag=false;
	        	addList.push("pink");
	        	select();
	        }else{
	        	$('#pink').css("background-color","white");
	        	pinkFlag=true;
	        	addList.splice($.inArray("pink", addList),1);
	        	select();
	        }
	    });

	});	    
	
    $("#priceOne").click(function(){
        if(priceOneFlag==true){
        	$('#priceOne').css("background-color","black");
        	
        	$('#priceTwo').css("background-color","white");
        	$('#priceThree').css("background-color","white");
        	$('#priceFour').css("background-color","white");
        	
        	priceTwoFlag=true;
        	priceThreeFlag=true;
        	priceFourFlag=true;

        	priceList.length=0;

        	priceList.push("priceOne");

        	select();
        	priceOneFlag=false;
        	return;
        }else{
        	$('#priceOne').css("background-color","white");
        	priceOneFlag=true;
        	priceList.length=0;
				        	
			select();
        }
    });
    $("#priceTwo").click(function(){
        if(priceTwoFlag==true){
        	$('#priceTwo').css("background-color","black");
        	
        	$('#priceOne').css("background-color","white");
        	$('#priceThree').css("background-color","white");
        	$('#priceFour').css("background-color","white");
        	
        	priceTwoFlag=false;
        	
        	priceOneFlag=true;
        	priceThreeFlag=true;
        	priceFourFlag=true;
        	
        	priceList.length=0;

        	priceList.push("priceTwo");
        	
        	select();
			
        }else{
        	$('#priceTwo').css("background-color","white");
        	priceTwoFlag=true;
        	priceList.length=0;
        	
        	select();
        }
    });
    $("#priceThree").click(function(){
        if(priceThreeFlag==true){
        	$('#priceThree').css("background-color","black");
        	
        	$('#priceOne').css("background-color","white");
        	$('#priceTwo').css("background-color","white");
        	$('#priceFour').css("background-color","white");
        	
        	priceThreeFlag=false;
        	
        	priceOneFlag=true;
        	priceTwoFlag=true;
        	priceFourFlag=true;
        	
        	priceList.length=0;

        	priceList.push("priceThree");
        	
        	select();
			
        }else{
        	$('#priceThree').css("background-color","white");
        	priceThreeFlag=true;
        	priceList.length=0;
        	
        	select();
        }
    });
    $("#priceFour").click(function(){
        if(priceFourFlag==true){
        	$('#priceFour').css("background-color","black");
        	
        	$('#priceOne').css("background-color","white");
        	$('#priceTwo').css("background-color","white");
        	$('#priceThree').css("background-color","white");
        	
        	priceFourFlag=false;
        	
        	priceOneFlag=true;
        	priceTwoFlag=true;
        	priceThreeFlag=true;

        	priceList.length=0;

        	priceList.push("priceFour");
        	
        	select();
        }else{
        	$('#priceFour').css("background-color","white");
        	priceFourFlag=true;
        	priceList.length=0;
        	
        	select();
        
        }
    }); 
    
	function select() {
		
	    $.ajax({
	    	url:'select'
			,type:'POST'
			,dataType : "json"
			,data : {
				addList : JSON.stringify(addList)
				,priceList : JSON.stringify(priceList)
			}
			, success:function(data){
				var obj = data;
				var str="";
				$.each(obj, function(idx, item) {
					$.each(item, function(key, value) {
						
						str+= "<div id='grim'>";
						str+= "<div id='big1'>";
						str+= "<div id="+item[key].productcode+" style='display: '>";
						str+= "<div class='movie'>";
						str+= "<img class='poster' src="+item[key].imageaddress1+" width='100%'>";
						str+= "<div class='up'></div>";
						str+= "<div class='down'>";
						str+= "<div align='center'>"+item[key].productname+"</div>";
						str+= "	<div align='center'>"+item[key].price+" 원</div>";
						str+= "<br>";
						str+= "	<div align='center'>";
						str+= "		<a href='product?productcode="+item[key].productcode+"'>";
						str+= "					<img src='resources/image/cart.png' width='20%'>";
						str+= "					</a>";
						str+= "					<a href='product?productcode="+item[key].productcode+"'>";
						str+= "					<img src='resources/image/search.png' width='20%'>";
						str+= "					</a>";
						str+= " 				</div>";
						str+= "		</div>";
						str+= "		</div>";
						str+= "	</div>";
						str+= "</div>";
						str+= "</div>";
						
						
						console.log(str);
						/* console.log("key : " + key + " productcode : " + item[key].productcode + " name : " + item[key].productname); */
						
					});
				});
				
				
				var grim = document.getElementById("grim")
				grim.innerHTML = str;

				        
             }
			,error: function(){
				
			}
		});
	}


 	 /* 황용추가 끝 */
 	 
  	 $(document).ready(function() 
  			 { $('[data-toggle=offcanvas]').click(function() 
  					 { $('.row-offcanvas').toggleClass('active'); }); }); 
  	$('.carousel').carousel({
  	  interval: 2000
  	})
  	
	
  	
  	jQuery(document).ready(function($) {
/* Floating Menu
	**************************************************************/

 	var $floatingMenuToggle = $('.floating-menu-toggle-wrap'),
			$floatingMenu = $('.floating-header .main-navigation'),
			$floatingMenuItem = $('.floating-header .main-navigation .menu > li');
	if($floatingMenu.length) {
		$floatingMenuItem.each(function(index, element) {
			$(element).addClass('delay-' + index);
		});

		$floatingMenuToggle.click(function() {
		  var clicks = $(this).data('clicks');
		  if (clicks) {
				$floatingMenu.removeClass('is-visible');
				setTimeout(function(){
					$floatingMenuToggle.parent().removeClass('expanded');
				}, 500);
		  } else {
				$floatingMenuToggle.parent().addClass('expanded');
				$floatingMenu.addClass('is-visible');
		  }
		  $(this).data("clicks", !clicks);
		});

	}

	// Back Button
	var backBtnText = $floatingMenu.data( 'back-btn-text' ),
			subMenu = $( '.floating-header .main-navigation .sub-menu' );

	subMenu.each( function () {
		$( this ).prepend( '<li class="back-btn"><a href="#"><i class="fa fa-arrow-left" aria-hidden="true"></i>' + backBtnText + '</a></li>' );
	} );

	var hasChildLink = $( '.floating-header .menu-item-has-children > a' ),
		backBtn = $( '.floating-header .main-navigation .sub-menu .back-btn' );

	backBtn.on('click', function (e) {
		var self = this,
			parent = $( self ).parent(),
			siblingParent = $( self ).parent().parent().siblings().parent(),
			menu = $( self ).parents( '.menu' );

		parent.removeClass( 'in-view' );
		siblingParent.removeClass( 'off-view' );

		e.stopPropagation();
	});

	hasChildLink.on( 'click', function ( e ) {
		var self = this,
			parent = $( self ).parent().parent(),
			menu = $( self ).parents( '.menu' );

		parent.addClass( 'off-view' );
		$( self ).parent().find( '> .sub-menu' ).addClass( 'in-view' );

		e.preventDefault();
		return false;
	} );
    } );
	/******************************************************************/ 
  
  	 </script> 
  </body> 
</html>

