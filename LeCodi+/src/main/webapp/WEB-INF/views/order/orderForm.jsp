<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order Page</title>
<link rel="stylesheet" type="text/css"
   href="./css/orderFormCss.css?ver=2">
<script type="text/javascript"
   src="http://code.jquery.com/jquery-1.8.1.min.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
      // DOM 생성 완료 시 화면 숨김 (파라미터로 전달되는 id는 제외)
      hideExclude("changeKakao");
      // radio change 이벤트
      $("input[name=payment_type]").change(function() {
         var radioValue = $(this).val();
         if (radioValue == "카카오페이") {
            hideExclude("changeKakao");
         } else if (radioValue == "신용카드") {
            hideExclude("changeSin");
         } else if (radioValue == "실시간계좌이체") {
            hideExclude("changeSi");
         } else if (radioValue == "무통장") {
            hideExclude("changeMu");
         }
      });

      var checkCnt = $("input[name=payment_type]:checked").size();
      if (checkCnt == 0) {
         // default radio 체크 (첫 번째)
         $("input[name=payment_type]").eq(0).attr("checked", true);
      }
   });
   // text area 숨김
   function hideExclude(excludeId) {
      $("#changeTextArea").children().each(function() {
         $(this).hide();
      });
      // 파라미터로 넘겨 받은 id 요소는 show
      $("#" + excludeId).show();
   }
</script>

<style type="text/css"></style>

</head>
<body>
   <div class="wraper">
      <jsp:include page="../header.jsp"></jsp:include>
      <br> <br> <br> <br>
      <form method="post" action="payment" >
         <div class="orderDiv">
            <div class="orderer_info">
               <p class="title">주문자 정보</p>
               <table class="orderer InfoTable">
                  <tr>
                     <td>주문자 이름 <b style="color: red">*</b>
                     </td>
                     <td><input type="hidden" value="${sessionScope.member.userid}" name="userid">
                     <td><input value="${sessionScope.member.name}" type="text" id="orderer_name"
                        name="name" style="height: 100%;"></td>
                  </tr>
                  <tr>
                     <td>이메일 <b style="color: red">*</b>
                     </td>
                     <td><input value="${sessionScope.member.email_id}" type="text" name="email_id" id="str_email01"
                        style="width: 100px"> @ <input type="text"
                        name="email_domain" id="str_email02" style="width: 100px;"
                        value="${sessionScope.member.email_domain}"> <select
                        style="width: 100px; margin-right: 10px" name="selectEmail"
                        id="selectEmail">
                           <option value="1" selected>직접입력</option>
                           <option value="naver.com">naver.com</option>
                           <option value="hanmail.net">hanmail.net</option>
                           <option value="hotmail.com">hotmail.com</option>
                           <option value="nate.com">nate.com</option>
                           <option value="gmail.com">gmail.com</option>
                           <option value="paran.com">paran.com</option>
                     </select></td>
                  </tr>
                
               </table>
            </div>
            <br>
            <div class="delivery_Info">
               <p class="title">배송정보</p>
               <table class="delivery InfoTable">
                  <tr>
                     <td>수령자 주소 <b style="color: red">*</b>
                     </td>
                     <td><input type="text" style="width: 100px"
                        class="addressInput" id="postCode" name="postcode" value="${sessionScope.member.postcode}">
                        <button onclick="sample2_execDaumPostcode()" type="button"
                           class="search_address">주소 찾기</button> <br> 
                        <input type="text" style="width: 300px" class="addressInput"
                        id="baseAddress" name="address_primary" value="${sessionScope.member.address_primary}"> 기본 주소 <br> 
                        <input type="text" style="width: 300px" class="addressInput" name="address_detail" value="${sessionScope.member.address_detail}"> 상세 주소 <br>
                     </td>
                  </tr>
                  <tr>
                     <td>수령자 성함 <b style="color: red">*</b>
                     </td>
                     <td><input type="text" id="orderer_name" name="name" value="${sessionScope.member.name}"></td>
                  </tr>
                  <tr>
                     <td>수령자 휴대폰 <b style="color: red">*</b>
                     </td>                     
                     
                     <td><input value="${sessionScope.member.phonenumber1 }" type="text"
                        style="text-align: center; width: 80px;" id="cellphone1"name="phonenumber1">
                         - <input value="${sessionScope.member.phonenumber2 }" type="text"style="text-align: center; width: 80px;" id="cellphone2"name="phonenumber2"> 
                         - <input value="${sessionScope.member.phonenumber3 }" type="text" style="text-align: center; width: 80px;" id="cellphone3" name="phonenumber3">
                     </td>
                  </tr>
                  <tr>
                     <td>배송시 요청사항</td>
                     <td><textarea name="extrarequest" style="width: 100%; height: 100px;"
                           placeholder="이곳은 배송기사님이 보시는란입니다. 주문관련 문의는 게시판을 이용해주세요"></textarea>
                     </td>
                  </tr>
               </table>
            </div>

            <br>
            <div class="product_info">
               <p class="title">주문 품목 확인</p>
               <table class="product_table">
                  <tr>
                     <td colspan="2">주문상품</td>
                     <td>수량</td>
                     <td>상품 금액</td>
                     <td>색상</td>
                     <td>사이즈</td>
                     <td>적립금</td>
                  </tr>
                  
                  <c:forEach  items="${sessionScope.cartList}" var="cart" varStatus="status" begin="0" end="${size}" step="1">
                        <%-- <c:forEach var="i"  begin="1" end="${size}" step="1"> --%>
                     <tr>
                        <td><img src="#" width="100%"></td>
	                        <td>
	                           <div class="product_name" style="width: 60%; float: left;"><input type="text" name="productname${status.index+1}" value="${cart.productname}"></div><br>
	                        </td>
                        <td class="product_amount"><input type="text" name="mount${status.index+1}" value="${cart.cartmount}"><%-- <%=basket.getP_identifier() %> --%></td>
                        <td class="product_price"><input type="text" name="price${status.index+1}" value="${cart.price}"></td>
                        <td class="product_color"><input type="text" name="color${status.index+1}" value="${cart.color}"></td>
                        <td class="product_c_size">	<input type="text" name="c_size${status.index+1}" value="${cart.c_size}"></td>
                        
                        <!-- <td class="discount">-</td>
                        <td class="discount_price">10000원</td> -->
                        <td>${Amount_accumulated}</td>
                     </tr>
                        <%-- </c:forEach> --%>
                  </c:forEach>   
                  
                  <%-- <tr>
                     <td colspan="7"
                     style="text-align: center; font-size: 20px; border-bottom: none;">할인 금액 : 
                                                        <%= request.getParameter("sel_price") %> 원
                     </td>
                  </tr> --%>
                  
                  <tr>
                     <td colspan="7"
                     style="text-align: center; font-size: 20px; border-bottom: none;"> 배송비 : 
                                                   <%-- <%= request.getParameter("delivery_fee") %> --%> 5000원
                     </td>
                  </tr>
                  
                  <tr>
                     <td colspan="7" class="payment_amount" style="text-align: center; font-size: 20px; color: red;">
                   		  총 결제 금액 :<%--   <%= request.getParameter("rs_price") %> --%>
                 		 <c:forEach items="${sessionScope.cartList}" var="cart">
                   		  	${cart.price}
                  		 </c:forEach>
                   		  	원
                     </td>
                  </tr>
               </table>
            </div>
            <div class="payment_info">
               <p class="title">결제 정보 입력</p>
               <table class="payment_table">
                  <tr>
                     <td rowspan="2">일반 결제</td>
                     <td>
                        <div id="radioArea">
                           <input name="payment_type" type="radio"
                              class="select_payment" value="카카오페이"><label>카카오페이</label>
                           <input name="payment_type" type="radio"
                              class="select_payment" value="신용카드"><label>신용카드</label>
                           <input name="payment_type" type="radio"
                              class="select_payment" value="실시간계좌이체"><label>실시간 계좌이체</label> 
                              <input name="payment_type" type="radio"
                              class="select_payment" value="무통장"><label>무통장입금</label>
                        </div>
                     </td>
                  </tr>
                  <tr style="height: 100px;">
                     <td id="changeTextArea">
                        <p id="changeKakao">kakaopay결제</p>
                        <p id="changeMu">무통장 결제</p>
                        <p id="changeSi">실시간 계좌이체</p>
                        <p id="changeSin">신용카드</p>
                     </td>
                  </tr>
               </table>
            </div>
            
            <c:forEach items="${basketList}" var="basket">
               <c:set var="p_total_identifier" value="${p_total_identifier} ${basket.p_identifier}"/>
               <input type="hidden" name="c_cnt" value="${basket.c_cnt}">
            </c:forEach>
            
            <input type="hidden" name="p_total_identifier" value="${p_total_identifier}">
            <input type="hidden" name="total_price" value="<%= request.getParameter("rs_price") %>">
            <input type="hidden" name="index" value="-1">
               <div class="last_Payment">
                  <button type="submit"class="img_btn" onclick="pre_order_check()">주문결제</button>
               </div>
		</div>
      </form>
      </div>
      
      <jsp:include page="../footer.jsp"></jsp:include>
      
      <script type="text/javascript">
         function pre_order_check() {
            if($("#orderer_name").val() == '' || $("#str_email01").val() == '' || $("#str_email02").val() == '' 
                  || $("#postCode").val() == ''|| $("#baseAddress").val() == ''|| $("#addressInput").val() == ''|| $("#orderer_name").val() == ''
                     || $("#cellphone1").val() == ''|| $("#cellphone2").val() == ''|| $("#cellphone3").val() == ''){
               alert('필수 사항들을 꼭 입력해주세요.');
               event.preventDefault();
            }
         }
      </script>   
      

   <!-- 이메일 입력방식 : 직접입력 -->
   <script type="text/javascript"
      src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript">
      //이메일 입력방식 선택 
      $('#selectEmail').change(function() {
         $("#selectEmail option:selected").each(function() {
            if ($(this).val() == '1') { //직접입력일 경우 
               $("#str_email02").val(''); //값 초기화 
               $("#str_email02").attr("readonly", false); //활성화 
            } else { //직접입력이 아닐경우
               $("#str_email02").val($(this).text()); //선택값 입력 
               $("#str_email02").attr("readonly", true); //비활성화 
            }
         });
      });
   </script>


   <!--  -->
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
         new daum.Postcode({
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
                           + data.buildingName : data.buildingName);
                  }
                  // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                  fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
                        : '');
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('postCode').value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById('baseAddress').value = fullAddr;

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