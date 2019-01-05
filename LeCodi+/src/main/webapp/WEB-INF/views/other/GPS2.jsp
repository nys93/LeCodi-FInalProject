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
<title>Le Codi</title> 
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 70%;
        width: 70%;
        
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        width: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <h3>오시는길</h3>
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
    	var myLatLng = {lat: 37.512650, lng: 127.058703};
    	
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 37.512650, lng: 127.058703},
          zoom: 15
        });
        
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'Le Codi!'
          });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCBbVor343uJSgcWImAm3o9gjv6lvIjuj0&callback=initMap"
    async defer></script>
    
<p class = "footer_font">르 코디  |  대표 : 남유송  |  문의전화 : 0507-1403-6313  |  서울시 관악구 봉천동 2311, Biz6</p>
<p class = "footer_font">사업자등록번호 : 053-30-00343  |  통신판매업신고 : 제2017-용인기흥-00248호 [사업자정보확인]  |  개인정보책임자 : 남유송 (lecodi4u@naver.com)</p>

<p class = "footer_font">COPYRIGHT 2017 LeCodi. ALL RIGHTS RESERVED.</p> 
  </body>
</html>