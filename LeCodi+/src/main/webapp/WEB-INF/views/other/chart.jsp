<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 1000px;
}												
</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script type="text/javascript" src="<c:url value="resources/js/jquery-3.2.1.js"/>"></script>
<!-- <script src="https://www.amcharts.com/lib/3/themes/none.js"></script> -->
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>


<!-- Chart code -->
<script>
$(function(){
	var code = $('#code').val();
	$.ajax({
		url: 'chart'
		,type: 'post'
		,data:{
			productcode:code
		}
		,dataType: 'json'
		,cache: false
		,success:function(list){
			var chart = AmCharts.makeChart("chartdiv", {
				  "type": "pie",
				  "startDuration": 0,
				  "theme": "light",
				  "titles": [ {
				    "text": "머신러닝으로 분석한 추천 제품",
				    "size": 25
				  } ],
				  "addClassNames": true,
				  "legend":{
				   	"position":"right",
				    "marginRight":100,
				    "autoMargins":false
				  },
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
				    	"item": "topHandleBag",
						"value" : list[0].topHandleBag
					}, {
						"item" : "tShirt",
						"value" : list[0].tShirt
					}, {
						"item" : "jewelry",
						"value" : list[0].jewelry
					}, {
						"item" : "boots",
						"value" : list[0].boots
					}, {
						"item" : "sunglasses",
						"value" : list[0].sunglasses
					}, {
						"item" : "jeans",
						"value" : list[0].jeans
					}, {
						"item" : "sweater",
						"value" : list[0].sweater
					}, {
						"item" : "tankTop",
						"value" : list[0].tankTop
					}, {
						"item" : "skirt",
						"value" : list[0].skirt
					}, {
						"item" : "sandals",
						"value" : list[0].sandals
					}, {
						"item" : "leggings",
						"value" : list[0].leggings
					}, {
						"item" : "buttonDownShirt",
						"value" : list[0].buttonDownShirt
					}, {
						"item" : "pantsCasual",
						"value" : list[0].pantsCasual
					}, {
						"item" : "heelsPumpsOrWedges",
						"value" : list[0].heelsPumpsOrWedges
					}, {
						"item" : "lingerie",
						"value" : list[0].lingerie
					}, {
						"item" : "blouse",
						"value" : list[0].blouse
					}, {
						"item" : "lightweightJacket",
						"value" : list[0].lightweightJacket
					}, {
						"item" : "casualDress",
						"value" : list[0].casualDress
					}, {
						"item" : "winterJacket",
						"value" : list[0].winterJacket
					}, {
						"item" : "formalDress",
						"value" : list[0].formalDress
					}, {
						"item" : "watches",
						"value" : list[0].watches
					}, {
						"item" : "hat",
						"value" : list[0].hat
					}, {
						"item" : "vest",
						"value" : list[0].vest
					}, {
						"item" : "sneakers",
						"value" : list[0].sneakers
					}, {
						"item" : "shoulderBag",
						"value" : list[0].shoulderBag
					}, {
						"item" : "flats",
						"value" : list[0].flats
					}, {
						"item" : "overall",
						"value" : list[0].overall
					}, {
						"item" : "sweatpants",
						"value" : list[0].sweatpants
					}, {
						"item" : "shorts",
						"value" : list[0].shorts
					}, {
						"item" : "rompers",
						"value" : list[0].rompers
					}, {
						"item" : "pantsSuitFormal",
						"value" : list[0].pantsSuitFormal
					}, {
						"item" : "glasses",
						"value" : list[0].glasses
					}, {
						"item" : "clutches",
						"value" : list[0].clutches
					}, {
						"item" : "socks",
						"value" : list[0].socks
					}, {
						"item" : "backpackOrMessengerBag",
						"value" : list[0].backpackOrMessengerBag
					}, {
						"item" : "jumpsuit",
						"value" : list[0].jumpsuit
					}, {
						"item" : "runningShoes",
						"value" : list[0].runningShoes
					}, {
						"item" : "blazer",
						"value" : list[0].blazer
					}, {
						"item" : "tunic",
						"value" : list[0].tunic
					}, {
						"item" : "hosiery",
						"value" : list[0].hosiery
					}, {
						"item" : "denimJacket",
						"value" : list[0].denimJacket
					}, {
						"item" : "belts",
						"value" : list[0].belts
					}, {
						"item" : "leatherJacket",
						"value" : list[0].leatherJacket
					}, {
						"item" : "trenchcoat",
						"value" : list[0].trenchcoat
					}, {
						"item" : "headwrap",
						"value" : list[0].headwrap
					}, {
						"item" : "sweaterDress",
						"value" : list[0].sweaterDress
					}, {
						"item" : "sweatshirt",
						"value" : list[0].sweatshirt
					}, {
						"item" : "gloves",
						"value" : list[0].gloves
					}, {
						"item" : "underwear",
						"value" : list[0].underwear
					} ],
					"valueField" : "value",
					"titleField" : "item",
					"export" : {
						"enabled" : true
					}
				});

				chart.addListener("init", handleInit);

				chart.addListener("rollOverSlice", function(e) {
					handleRollOver(e);
				});

				function handleInit() {
					chart.legend.addListener("rollOverItem", handleRollOver);
				}

				function handleRollOver(e) {
					var wedge = e.dataItem.wedge.node;
					wedge.parentNode.appendChild(wedge);
				}
			},
			error : function() {

			}

		})
	})
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Chart</title>
</head>
<body>
<div id="chartdiv"></div>

	
		<input type="hidden" id="code" value='${productcode}'>

</body>
</html>