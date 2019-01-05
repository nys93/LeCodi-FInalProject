<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Home</title>
	<!-- Styles -->
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="https://www.amcharts.com/lib/3/pie.js"></script>
<script type="text/javascript" src="https://www.amcharts.com/lib/3/themes/none.js"></script>
<style>
#chartdiv {
  width: 50%;
  height: 50%;
  margin-left: 600px;
}												
</style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./css/detail_edit.css?ver=2" />
    <title>Document</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var clothCategory = $('#cloth_category').val();
		$.ajax({
			url: 'recomm'
			,type: 'post'
			,data:{
				cloth_category:clothCategory
			}
			,dataType: 'json'
			,success:function(list){
				var obj = list;
				var chartData = [];
				 $.each(obj, function(idx, item) {
					 chartData.push(item);
		            });
				var chart = AmCharts.makeChart("chartdiv", {
					  "type": "pie",
					  "startDuration": 0,
					  "theme": "light",
					  "groupPercent": 5,
					  "titles": [ {
					    "text": "추천",
					    "size": 15
					  } ],
					  "addClassNames": true,
					  "innerRadius": "30%",
					  "defs": {
					    "filter": [{
					      "id": "shadow",
					      "width": "200%",
					      "height": "200%",
					      "feOffset": {
					        "result": "offOut",
					        "in": "SourceAlpha",
					        "dx": 0,
					        "dy": 0
					      },
					      "feGaussianBlur": {
					        "result": "blurOut",
					        "in": "offOut",
					        "stdDeviation": 5
					      },
					      "feBlend": {
					        "in": "SourceGraphic",
					        "in2": "blurOut",
					        "mode": "normal"
					      }
					    }]
					  },
					  
					  "dataProvider": [{
						  "item" : chartData[0].ITEM,
						  "value" : chartData[0].VALUE
					  },{
						  "item" : chartData[1].ITEM,
						  "value" : chartData[1].VALUE
					  },{
						  "item" : chartData[2].ITEM,
						  "value" : chartData[2].VALUE
					  },{
						  "item" : chartData[3].ITEM,
						  "value" : chartData[3].VALUE
					  },{
						  "item" : chartData[4].ITEM,
						  "value" : chartData[4].VALUE
					  }],
						"valueField" : "value",
						"titleField" : "item",
						"export" : {
							"enabled" : true
						},
						"listeners" : [{
							"event": "clickSlice",
							"method": function(e){
								var dp = e.dataItem.title;
								$.ajax({
									url: 'showImg1'
									,type: 'post'
									,data:{
										category:dp
									}
									,cache: false
									,success:function(Img){
										var img = document.getElementById("showImg");										
										img.innerHTML = "<a href='product'><img src='" + Img + "'/></a>";
									}
									,error:function(){
										alert('ht');
									}									
								});
							}
						}]
 					});
				},
				error : function() {
					alert('X');
				}
		})
});
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./css/detail_edit.css?ver=2" />
</head>
<body>
			<!-- 옷 url -->
			<c:forEach var="productInfo" items="${productInfo}">
				<c:if test="${productInfo.imageaddress1!=null}">
					<img class="url" src="${productInfo.imageaddress1}" width="20%">
				</c:if>
				<c:if test="${productInfo.imageaddress2!=null}">
					<img class="url" src="${productInfo.imageaddress2}" width="20%">
				</c:if>
				<c:if test="${productInfo.imageaddress3!=null}">
					<img class="url" src="${productInfo.imageaddress3}" width="20%">
				</c:if>
				<c:if test="${productInfo.imageaddress4!=null}">
					<img class="url" src="${productInfo.imageaddress4}" width="20%">
				</c:if>
				<c:if test="${productInfo.imageaddress5!=null}">
					<img class="url" src="${productInfo.imageaddress5}" width="20%">
				</c:if>
			</c:forEach>

			<!-- 가격 -->
			<c:forEach var="productInfo" items="${productInfo}">
				<h3>제품명 : ${productInfo.productname}</h3>
				<span>가격 : ${productInfo.price}원</span><br>
				<span>30,000원 이상 무료, 미만 2,500원</span>
				<span>배송비</span>
			</c:forEach>
			
                 		<!-- 색상선택 -->
                 		<br>
                        <span>색상을 선택해 주세요</span><br>
                     <select class="option_selecter" id="color_selecter">
				<c:forEach var="productInfo" items="${productInfo}">
				<option>${productInfo.color}</option>
				</c:forEach>
                      	</select><br>
                      	
                        <!-- 사이즈선택 -->
                        <span>사이즈를 선택해 주세요
                            <br>
                            <select class="option_selecter" id="size_selecter" name="">
								<option value="free">Free</option>
                            </select>
                        </span><br>
                        
                        <!-- 주문수량선택 -->
                        <span>주문수량을 선택해 주세요
                            <br>
                            <select class="count_selecter" id="count_selecter" name="cartmount">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
                            </select>
                        </span>
                        
                    <br>
                <form action="">
                    <input type="hidden" name="index">
                   	<input type="hidden" value="${product.productcode}" name="productcode">
                    <input type="hidden" value="${product.price}" name="price">
                    <input type="hidden" value="${product.cloth_size}" name="c_size">
                    <input type="hidden" value="${product.color}" name="color">
                    <br>
                    <button type="submit" class="pageMoveBtn">바로 주문</button>
                </form>
               	 <c:forEach items="${productInfo}" var="product">
                <form action="cart/addCart" class="cartData" method="post">
                	<input type="hidden" name="productname" value="${product.productname}">
                	<input type="hidden" name="productcode" value="${product.productcode}">
                	<input type="hidden" name="cartmount" value="1">
                	<input type="hidden" name="c_size" value="free">
                	<input type="hidden" name="color" value="${product.color}">
                	<input type="hidden" id = "price" name="price" value="${product.price}">
                    <button type="submit" class="pageMoveBtn">장바구니 담기</button>
                </form>
           		</c:forEach>
        <input type="hidden" id="cloth_category" value="${cloth_category }">
		<div id="chartdiv"></div>
		<div id="showImg"></div>
</body>

</html>