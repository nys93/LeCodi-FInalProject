<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
* {
	height: 100%;
	width: 100%;
	margin: 0px;
	padding: 0px;
}

.wraper {
	position: relative; width : 1200px;
	height: auto;
	padding: 10px;
	margin: auto;
	width: 1200px;
}
#ForFooter{
	width: 1200px;
	height: 400px;
}

.title>b {
	font-size: 23px;
}

label {
	font-size: 10px;
}

td:first-child {
	width: 25%;
}

td {
	/* border:1px red solid; */
	padding-top: 5px;
}

input {
	height: 25px;
	text-align: center;
	width: 150px;
}

.address {
	width: 388px;
	text-align: left;
}

.email_Id {
	width: 100px;
}

select {
	height: 28px;
	padding: 3px;
}

.phoneNum {
	width: 100px;
}

table {
	width: 1100px;
}

button {
	width: 100px;
	height: 40px;
	float: right;
	margin-left: 10px;
}

.search_address {
	width: 20%;
}
</style>

<script>
		//가입신청 후 서버에서의 오류로 현재 페이지로 되돌아온 경우 오류 메시지를 출력
		<c:if test="${errorMsg != null}">alert('${errorMsg}');</c:if>
</script>

<script type="text/javascript">

	function beforeSubmit() {

		if ($('font[name=check]').text() == "암호일치") {
			location.href="joinConfirm";
			return true;
		} else {
			alert("암호가 일치하지 않습니다! 확인해주세요!")
			return false;
		}
	}
	 
	
	/*  
	
		패스워드 확인
	*/
	$(function() {
		$('#password').keyup(function() {
			$('font[name=check]').text('');
		}); //#user_pass.keyup

		$('#pass_ck').keyup(function() {
			if ($('#password').val() != $('#pass_ck').val()) {
				$('font[name=check]').text('');
				$('font[name=check]').html("암호일치X");
			} else {
				$('font[name=check]').text('');
				$('font[name=check]').html("암호일치");
			}
		}); //#chpass.keyup
	});
</script>
<head>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Le Codi - MypageUpdate</title>
	
	<!-- 조인 ajax불러오기 -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	</script>

</head>
<body>
	<div class="wraper">
		<%-- <jsp:include page="header.jsp"></jsp:include> --%>
		<form action="updateMember" method="post"
			onsubmit="return beforeSubmit()">
			<table class="updateForm">
				<tr style="height: 50px;">
					<th class="title" colspan="2"><b>회원정보 수정입력</b> 
						<label>회원정보 수정시 필요한 정보를 입력하세요</label>
					</th>
					<th>
						<!--  
						<input type="hidden" name="userid" value=${Member.userid }><!-- 프라이머리키를 지정해준곳 
						-->
					</th>
				</tr>
				<tr>
					<td>이름</td>
					<td>
						<input type="text" name="name" value="${Member.name }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="userid" id="userid" value="${Member.userid }" readonly="readonly"> 
						<label>공백 없는 영문, 숫자 포함 6-20자</label>
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="password" id="password" required> 
						<label>공백 없는 영문, 숫자 포함 6-20자</label>
					</td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td>
						<input type="password" id="pass_ck" required> 
						<label>비밀번호 확인을 위해 한번 더 입력하세요</label> <span></span></td>
					<td>
						<font name="check" size="2" color="red"></font>
					</td>
				</tr>
				<tr>
					<td rowspan="3">주소</td>
					<td>
						<input type="text" id="sample2_postcode"
						value="${Member.postcode }"
						placeholder="우편번호" name="postcode" readonly required> 
						<input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
					</td>
				</tr>
				<tr>
					<td><input type="text" name="address_primary"
						value="${Member.address_primary }" id="sample2_address"
						class="address" placeholder="기본주소" readonly></td>
				</tr>
				<tr>
					<td><input type="text" name="address_detail" class="address"
						value="${Member.address_detail }" placeholder="상세주소"
						required></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
						<input type="text" name="email_id" class="email_Id"value="${Member.email_id }" required> @ 
						<input type="text" name="email_domain" value="${Member.email_domain }" class="email_Domain" required> 
						<select style="width: 100px; margin-right: 10px" name="selectEmail" id="selectEmail">
							<option value="1" selected>직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="hotmail.com">hotmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="dreamwiz.com">dreamwiz.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="paran.com">paran.com</option>
					</select></td>
				</tr>
				<tr>
					<td>휴대폰번호</td>
					<td>
					<input type="text" name="phonenumber1" class="phoneNum" value="${Member.phonenumber1 }" required> - 
					<input type="text" name="phonenumber2" class="phoneNum" value="${Member.phonenumber2 }" required> - 
					<input type="text" name="phonenumber3" class="phoneNum" value="${Member.phonenumber3 }" required>
					</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td>
						<input type="text" name="birth" placeholder="yyyy-mm-dd" value="${Member.birth }" required>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="margin: auto;">
						<button class="submit">수정하기</button> 
						<a href="../member/mypage">
							<button type="button" class="cancel">취 소</button>
						</a>
					</td>
				</tr>
			</table>
		</form>
		<%-- <jsp:include page="footer.jsp"></jsp:include> --%>
	</div>

	<!-- 이메일 입력방식 : 직접입력 -->
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		//이메일 입력방식 선택 
		$('#selectEmail').change(function() {
			$("#selectEmail option:selected").each(function() {
				if ($(this).val() == '1') { //직접입력일 경우 
					$(".email_Domain").val(''); //값 초기화 
					$(".email_Domain").attr("readonly", false); //활성화 
				} else { //직접입력이 아닐경우 
					$(".email_Domain").val($(this).text()); //선택값 입력 
					$(".email_Domain").attr("readonly", true); //비활성화 
				}
			});
		});
	</script>





	<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img
			src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1; width: 5%; height: auto;"
			onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		// 우편번호 찾기 화면을 넣을 element
		var element_layer = document.getElementById('layer');

		function closeDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_layer.style.display = 'none';
		}

		function sample2_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullAddr = data.address; // 최종 주소 변수
							var extraAddr = ''; // 조합형 주소 변수

							// 기본 주소가 도로명 타입일때 조합한다.
							if (data.addressType === 'R') {
								//법정동명이 있을 경우 추가한다.
								if (data.bname !== '') {
									extraAddr += data.bname;
								}
								// 건물명이 있을 경우 추가한다.
								if (data.buildingName !== '') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !== '' ? ' ('
										+ extraAddr + ')' : '');
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample2_postcode').value = data.zonecode; //5자리 새우편번호 사용
							document.getElementById('sample2_address').value = fullAddr;

							// iframe을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							closeDaumPostcode();
						},
						width : '100%',
						height : '100%',
						maxSuggestItems : 5
					}).embed(element_layer);

			// iframe을 넣은 element를 보이게 한다.
			element_layer.style.display = 'block';

			// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
			initLayerPosition();
		}

		// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
		// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
		// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
		function initLayerPosition() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
			var height = 400; //우편번호서비스가 들어갈 element의 height
			var borderWidth = 5; //샘플에서 사용하는 border의 두께

			// 위에서 선언한 값들을 실제 element에 넣는다.
			element_layer.style.width = width + 'px';
			element_layer.style.height = height + 'px';
			element_layer.style.border = borderWidth + 'px solid';
			// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
			element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
					+ 'px';
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
					+ 'px';
		}
	</script>
</body>

</html>