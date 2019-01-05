<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
#searchIdPwSearch{
    width: 1200px;
    height: 1200px;
    margin-left: auto;
    margin-right: auto;
	position: relative;
}

#sipTitle{
    width: 700px;
    height: 50px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    margin-top: 60px;
    text-align: center;
    font-size: 40px;
    font-weight: bold;
}
#siBoxes{
    width: 450px;
    height:280px;
    margin-left: 120px;
    margin-top: 70px;
    border: 1px solid rgb(209, 209, 209);
    background-color: #FAFAFA;
    float: left;
}
#siTextbox{
    width: 450px;
    height: 40px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 30px;
    margin-bottom: 13px;
}
#siTextTitle{
    width: 100px;
    height: 20px;
    font-size: 17px;
    color: rgb(0, 0, 0);
    text-shadow: 0px 0px 0.5px rgb(0, 0, 0);
    margin-left: auto;
    margin-right: auto;
    padding-left: 20px;
    font-weight: bold;
    float: left;
}
#siText{
    width: 250px;
    height: 15px;
    font-size: 11px;
    margin-top: 6px;
    float: left;
}
#siInputTextBoxes{
    width: 430px;
    height: 130px;
}
.siInputText{
    width: 400px;
    height: 50px;
    margin-left: 20px;
    border: 1px solid rgb(209, 209, 209);
    background-color: white;
    margin-bottom: 13px;
}
.siInputTextBox{
    width: 380px;
    height: 30px;
    font-size: 14px;
    margin-top: 9px;
    margin-left: 9px;
    font-weight: bold;
    border: none;
}
.siInputTextBox_Email{
	width: 175px;
    height: 30px;
    font-size: 14px;
    margin-top: 9px;
    margin-left: 9px;
    font-weight: bold;
    border: none;
}
#siOkbtn{
    margin-top: 10px;
    width: 101px;
    height: 36px;
    display: block;
    margin-left: auto;
    margin-right: auto;
}
#pwBoxes{
    width: 450px;
    height:280px;
    margin-left: 50px;
  
    margin-top: 70px;
    border: 1px solid rgb(209, 209, 209);
    background-color: #FAFAFA;
    float: left;
}
#spwTextbox{
    width: 450px;
    height: 40px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 30px;
    margin-bottom: 13px;
    
}
#spwTextTitle{
    width: 120px;
    height: 20px;
    font-size: 17px;
    color: rgb(0, 0, 0);
    text-shadow: 0px 0px 0.5px rgb(0, 0, 0);
    margin-left: auto;
    margin-right: auto;
    padding-left: 20px;
    font-weight: bold;
    float: left;
}
#spwText{
    width: 250px;
    height: 15px;
    font-size: 11px;
    margin-top: 6px;
    float: left;
}
.spwInputText{
    width: 400px;
    height: 50px;
    margin-left: 20px;
    border: 1px solid rgb(209, 209, 209);
    background-color: white;
    margin-bottom: 13px;
}
.spwInputTextBox{
    width: 380px;
    height: 30px;
    font-size: 14px;
    margin-top: 9px;
    margin-left: 9px;
    font-weight: bold;
    border: none;
}
#spwOkbtn{
    width: 99px;
    height: 36px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    margin-top: 24px;
}
.setDiv {
    padding-top: 100px;
    text-align: center;
}
.mask {
    position:absolute;
    left:0;
    top:0;
    z-index:9999;
    background-color:#000;
    display:none;
}
.mask2 {
    position:absolute;
    left:0;
    top:0;
    z-index:9999;
    background-color:#000;
    display:none;
}
.window {
    width:500px;
    height: 300px;
    display: none;
    background-color: #ffffff;
    
    z-index:99999;
}
.window2 {
    width:500px;
    height: 300px;
    display: none;
    background-color: #ffffff;
    z-index:99999;
}
#modalTitleBox{
    width: 500px;
    height: 40px;
    background-color: rgb(46, 46, 46);
}
#modalTitle{
    width: 120px;
    height: 25px;
    font-size: 19px;
    font-weight: bold;
    color: rgb(255, 255, 255);
    float: left;
    margin-top: 7px;
}
#modalTitle2{
    width: 130px;
    height: 25px;
    font-size: 19px;
    font-weight: bold;
    color: rgb(255, 255, 255);
    float: left;
    margin-top: 7px;
    
}
.xbtn{
    width: 40px;
    height: 33px;
    font-size: 25px;
    margin-top: 3px;
    color: rgb(255, 255, 255);
    float: right;
}
.modalTextBox{
    width: 400px;
    height: 120px;
    border-top: 3px solid;
    border-bottom: 3px solid;
    display: inline-block;
    margin-top: 40px;
}
#modalText{
    width: 400px;
    height: 30px;
    margin-top: 35px;
    font-size: 14px;
}
#modalText1{
    width: 400px;
    height: 20px;
    font-size: 14px;
}
.close{
    width: 110px;
    height: 38px;
    margin-top: 30px;
}


		</style>
		<script>
		$(document).ready(function(){
		    $('#siOkbtn').on('click', function(){
		    	//alert($('#m_id').val());
		        $.ajax({
		            type: 'POST',
		            url: 'searchID',
		            data: {
		                "name" : $('#name').val(),
		                "email_id" : $('#email_id').val(),
		                "email_domain" : $('#email_domain').val()
		            },
		            success: function(data){
		                if($.trim(data) == "x"){
							$('#modalText').html('가입기록이 없습니다.<br>이름 또는 이메일을 다시 한 번 확인해주세요!');
		                }
		                else{
		                	$('#modalText').html('<br>회원님의 아이디는 <b>'+$.trim(data)+'</b>입니다.');
		                }
		            }
		        });    //end ajax    
		    });    //end on    
		    
		    $('#spwOkbtn').on('click', function(){
		    	//alert($('#m_id').val());
		        $.ajax({
		            type: 'POST',
		            url: 'searchPW',
		            data: {
		                "id" : $('#id2').val(),
		                "email_id" : $('#email_id2').val(),
		                "email_domain" : $('#email_domain2').val()
		            },
		            success: function(data){
		            }
		        });    //end ajax    
		    });    //end on   
		});
		</script>	
	</head>
	<body>
		
	


	<div id="searchIdPwSearch">
		<%-- <jsp:include page="../header.jsp"></jsp:include> --%>
		
		<br><br><br>

		<div id="sipTitle">FIND ID/PASSWORD</div>
		<div id="siBoxes">
			<div id="siTextbox">
				<p id="siTextTitle">아이디 찾기</p>
				<p id="siText">회원정보를 확인하여 아이디를 찾아드립니다</p>
			</div>
			<div id="siInputTextBoxes">
				<div class="siInputText">
					<input type="text" maxlength="20" class="siInputTextBox"  id="name"
						placeholder="이름">
				</div>
				<div class="siInputText">
					<input type="text" maxlength="50" class="siInputTextBox_Email"  id="email_id"
						placeholder="이메일">@
					<input type="text" maxlength="50" class="siInputTextBox_Email"  id="email_domain"
						placeholder="도메인">
				</div>
			</div>
			<input type="button" id="spwOkbtn" class="sendEmail" value="확인"
						style="cursor: pointer;">
			<div class="setDiv">


				<div class="mask"></div>
				<div class="window">
					<div id="modalTitleBox">
						<p id="modalTitle">아이디확인</p>
						<p style="cursor: pointer;" class="xbtn">X</p>
					</div>
 					<div class="modalTextBox">
						<p id="modalText">
							
						</p>
					</div>
					<input type="button" class="close" value="확인"
						style="cursor: pointer;">

				</div>
			</div>


		</div>
		<div id="pwBoxes">
			<div id="spwTextbox">
				<p id="spwTextTitle">비밀번호 찾기</p>
				<p id="spwText">본인인증으로 비밀번호를 변경하세요</p>
			</div>
			<div class="spwInputText">
				<input type="text" maxlength="20" class="spwInputTextBox" id="id2"
					placeholder="아이디">
			</div>
			<div class="spwInputText">
				<input type="text" maxlength="50" class="siInputTextBox_Email" id="email_id2"
						placeholder="이메일">@
				<input type="text" maxlength="50" class="siInputTextBox_Email" id="email_domain2"
						placeholder="도메인">
			</div>
			<input type="button" id="spwOkbtn" class="sendEmail" value="확인"
						style="cursor: pointer;">
			<div class="setDiv">


 			<div class="mask2"></div>
				<div class="window2">
					<div id="modalTitleBox">
						<p id="modalTitle2">비밀번호찾기</p>
						<p style="cursor: pointer;" class="xbtn">X</p>
					</div>
					<div class="modalTextBox">
						<p id="modalText">입력하신 이메일로 임시비밀번호를 보내드렸습니다.</p>
						<p id="modalText1">임시비밀번호로 로그인 후 비밀번호를 변경하세요.</p>
					</div>
					<input type="button" class="close" value="확인"
						style="cursor: pointer;">

				</div>
			</div>
		</div>
		<%-- <jsp:include page="../footer.jsp"></jsp:include> --%>
	</div>
		
	</body>
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script type="text/javascript">
		function wrapWindowBySendEmail(){
			// 화면의 높이와 너비를 변수로 만듭니다.
			var maskHeight = $(document).height();
			var maskWidth = 1200;
			//var maskWidth = $(window).width();
	
			// 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정합니다.
			$('.mask2').css({
				'width' : maskWidth,
				'height' : maskHeight
			});
	
			// fade 애니메이션 : 1초 동안 검게 됐다가 80%의 불투명으로 변합니다.
	
			$('.mask2').fadeTo("fast", 0.6);
			//($(window).width() - $('.window').width()) / 2
			// 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듭니다.
			var left = ($(window).scrollLeft() + 340);
			var top = ($(window).scrollTop() + ($(window).height() - $('.window2')
					.height()) / 2);
	
			// css 스타일을 변경합니다.
			$('.window2').css({
				'left' : left,
				'top' : top,
				'position' : 'absolute'
			});
	
			// 레이어 팝업을 띄웁니다.
			$('.window2').show();
		}
		function wrapWindowByMask() {
			// 화면의 높이와 너비를 변수로 만듭니다.
			var maskHeight = $(document).height();
			var maskWidth = 1200;
			//var maskWidth = $(window).width();
	
			// 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정합니다.
			$('.mask').css({
				'width' : maskWidth,
				'height' : maskHeight
			});
	
			// fade 애니메이션 : 1초 동안 검게 됐다가 80%의 불투명으로 변합니다.
	
			$('.mask').fadeTo("fast", 0.6);
			//($(window).width() - $('.window').width()) / 2
			// 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듭니다.
			var left = ($(window).scrollLeft() + 340);
			var top = ($(window).scrollTop() + ($(window).height() - $('.window')
					.height()) / 2);
	
			// css 스타일을 변경합니다.
			$('.window').css({
				'left' : left,
				'top' : top,
				'position' : 'absolute'
			});
	
			// 레이어 팝업을 띄웁니다.
			$('.window').show();
		}
	
		$(document).ready(function() {
			// showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄웁니다.
			$('.showMask').click(function(e) {
				// preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
				e.preventDefault();
				wrapWindowByMask();
			});
	
			// 닫기(close)를 눌렀을 때 작동합니다.
			$('.window .close').click(function(e) {
				e.preventDefault();
				$('.mask, .window').hide();
			});
			$('.window .xbtn').click(function(e) {
				e.preventDefault();
				$('.mask, .window').hide();
			});
	
			// 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리합니다.
			$('.mask').click(function() {
				$(this).hide();
				$('.window').hide();
			});
			
			
			//sendEmail
			$('.sendEmail').click(function(e) {
				// preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
				e.preventDefault();
				wrapWindowBySendEmail();
			});
	
			// 닫기(close)를 눌렀을 때 작동합니다.
			$('.window2 .close').click(function(e) {
				e.preventDefault();
				$('.mask2, .window2').hide();
			});
			$('.window2 .xbtn').click(function(e) {
				e.preventDefault();
				$('.mask2, .window2').hide();
			});
	
			// 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리합니다.
			$('.mask2').click(function() {
				$(this).hide();
				$('.window2').hide();
			});
			
			
		});
	</script>
</html>