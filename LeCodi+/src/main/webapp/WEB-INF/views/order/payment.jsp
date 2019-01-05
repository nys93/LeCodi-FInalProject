<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>pay</title>
   </head>
   <body>
      <jsp:include page="../header.jsp"></jsp:include>
  
      <div id="osWrapper">
         <br><br><br><br><br><br><br><br><br><br><br>
          <div id="osBoxes">
           <p class="osMessage1">${sessionScope.member.name }님 주문해주셔서 감사합니다!</p>
              <p class="osMessage2">주문이 성공적으로 접수되었습니다.</p>
              <p class="osMessage2">주문 처리는 근무일 기준으로 1~2일 가량 소요될 수 있습니다.</p>
              <div id="osBtnBox">
                  <a href="../">
                    <div class="osBtn" style=" cursor: pointer;">
                       <p class="osBtnText">메인으로 가기</p>
                    </div>
                  </a>
                  <a href="orderList">
                     <div class="osBtn" style=" cursor: pointer;">
                        <p class="orderList">주문내역</p>
                     </div>
                  </a>
           </div>
          </div>
          </div>
          
      <jsp:include page="../footer.jsp"></jsp:include>
   </body>
</html>