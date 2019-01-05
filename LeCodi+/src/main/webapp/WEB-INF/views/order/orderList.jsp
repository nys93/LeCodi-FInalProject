<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/Order_Lookup.css?ver=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문 조회</title>
</head>
<body>
	<div id="order_lookup">
	<jsp:include page="../header.jsp"/>
		<div>
			<h2>
				${member.userid}님 주문조회
			</h2>
		</div>
		
		<form action="orderList" method="post">
			<div>
				<table border="1">
						<tr>
							<th>
								<div>주문번호</div>
							</th>
							<th>
								<div>주문일자</div>
							</th>
							<th>
								<div>상품명</div>
							</th>
							<th>
								<div>결제금액</div>
							</th>
							<th>
								<div>물품정보</div>
							</th>
							<th>
								<div>배송현황</div>
							</th>
						</tr>
					
					<tbody>
						<c:choose>
							<c:when test="${orderList == null}">
								<tr>
									<td colspan="5" scope="row">
										주문내역이 존재하지 않습니다.
									</td>
								</tr>
							</c:when>
							
						<c:when test="${orderList != null}">
								<c:forEach items="${orderList}" var="order" varStatus="status" begin="0" end="5" step="1">
									<tr>
										<td>${order.ordernumber}</td>
										<td>${order.orderdate}</td>
										<td>${order.productname1}
											<c:if test="${status.index+1 != 0}">
												외 ${status.index+1}개
											</c:if>
										</td>
										<td>${order.price1}</td>
										<%-- <td>${order.price2}<input type="hidden" value="${oreder.productcode2}"></td>
										<td>${order.price3}<input type="hidden" value="${oreder.productcode3}"></td>
										<td>${order.price4}<input type="hidden" value="${oreder.productcode4}"></td>
										<td>${order.price5}<input type="hidden" value="${oreder.productcode5}"></td> --%>
										<td>
											<div>
												<a href="orderDetails"> <input type="hidden" value="${oreder.productcode1}">조회</a>
											</div>
										</td>
										<td>
											<div>
												<a href="#"> <input type="hidden" value="${oreder.productcode1}">배송조회</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:when>
						
						</c:choose>
					</tbody>
				</table>
				
				<div class="recommendation">
					<div class="recommendation_title">
						<a href="../codiTool">고객님만을 위한 맞춤 상품!!</a>
					</div>
					<div class="list_recommendation">
						<a href="../product/productList">추천 상품들</a>
					</div>
				
				</div>
				
			</div>
		</form>
		
	</div>
	
	<div class="footer">
	 	<jsp:include page="../footer.jsp"/>
	</div>
</body>
</html>