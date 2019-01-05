<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
   	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js" ></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="https://html2canvas.hertzen.com/dist/html2canvas.js"  type="text/javascript"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
	<link href="https://fonts.googleapis.com/css?family=Kirang+Haerang|Monoton" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Skranji" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>codi</title>
   <style type="text/css">
    #submit_btn{
			  width: 80px;
			  border: none; outline: none;
			  
			  background-color: #FFA69E;
			  color: #EFE9AE;
			  
			  position: relative;
			
			  box-shadow: 1px 2px 0px #B5838D,
			              -1px 2px 0px #B5838D;
			 
			  letter-spacing: 5px;
			  text-shadow: 1px 1px 2px #B5838D;
			}
	 #uploadImage2{
			  width: 80px;
			  border: none; outline: none;
			  
			  background-color: #FFA69E;
			  color: #EFE9AE;
			  
			  position: relative;
			
			  box-shadow: 1px 2px 0px #B5838D,
			              -1px 2px 0px #B5838D;
			 
			  letter-spacing: 5px;
			  text-shadow: 1px 1px 2px #B5838D;
			}
	 

   </style>
   </head>

   <script type="text/javascript">
    var haha;
   $(function (){
      var diagram = [];
      var canvas = $(".canvas");

      $(".droppableImage").draggable({
        revert: "invalid",
        helper: "clone"
      });

      canvas.droppable({
        drop: function (ev, ui) {
          var imgSrc = ui.draggable.find('img').attr('src');
        	console.log(imgSrc);
        	
          var newItem = ui.draggable.clone();

          if (newItem.hasClass("droppableImage")) {
            newItem.removeClass("droppableImage");
            var image = newItem.find("img");
            image.css({
              'width': '50%',
              'height': '50%'
            });

            // Create new canvas and draw image
            var imageCanvas = document.createElement("canvas");
            var context = imageCanvas.getContext("2d");
            image[0].crossOrigin = "Anonymous";//요청을 한 애랑 준애랑 같지않을떄 무시하도록 아니면 에러가 나니까 (서버에서 보내면 없애도됨)
            context.drawImage(image[0], 0, 0, ui.draggable.width(), ui.draggable.height());

            // Remove white background
            // Ref: https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/drawImage
            var imgd = context.getImageData(0, 0, ui.draggable.width(), ui.draggable.height());
            var pix = imgd.data;
            var newColor = {r: 0, g: 0, b: 0, a: 0};

            for (var i = 0, n = pix.length; i <n; i += 4) {
              var r = pix[i],
                g = pix[i + 1],
                b = pix[i + 2];

              // If its white then change it
              if(r > 250 && g > 250 && b > 250){ 
                  // Change the white to whatever.
                  pix[i] = newColor.r;
                  pix[i + 1] = newColor.g;
                  pix[i + 2] = newColor.b;
                  pix[i + 3] = newColor.a;
              }
            }
            context.putImageData(imgd, 0, 0);

            // Make new canvas draggable
            $(imageCanvas).draggable({
              revert: "invalid"
            });
           /*  $(imageCanvas).resizable(); // not working */

            $(imageCanvas).css({//to remember position  
              'position': 'absolute',
              'top': ui.offset.top,
              'left': ui.offset.left,
              'width': ui.draggable.width() + 200,
              'height': ui.draggable.height() + 50
            });
            
            $(imageCanvas).attr('src', imgSrc);

            // Add to .canvas
            $(this).append(imageCanvas);
          }
        }
      });

    $('#submit_btn').click(function(){
    	
    	var codi = new Object();
    	var itemArray = new Array();
    	
    	$(this).prev('div').children()
    		.each(function(index, item){
    			
    			var itemInfo = new Object();
    			
    			var src = $(this).attr('src');
    			var width = $(this).css('width');
    			var height = $(this).css('height');
    			var top = $(this).css('top');
    			var leftitem = $(this).css('left');
       			
    			itemInfo.src = src;
    			itemInfo.width = width;
    			itemInfo.height = height;
    			itemInfo.top = top;
    			itemInfo.leftitem = leftitem;
    			
    			itemArray.push(itemInfo)
    			
    		});
    	
    	codi.itemArray = itemArray;
    	console.log(codi);
    	
    	$.ajax({
    		url: 'saveEditedImage',
    		type: 'post',
    		contentType : 'application/json;charset=utf-8',
    		data: JSON.stringify(codi),
    		success: function(data){
    			alert(data);
    		},
    		error : function(err){
    			console.log(err);
    		}
    		
    	});
    	
    });
    
    });

   </script>

   <body>
   
      <h1 style="font-family: 'Monoton', cursive;">My Closet</h1>
   <form action="saveImage" method="post" enctype="multipart/form-data"> 
   <input id="fileName" class ="file_input_textbox" readonly/>
   <input type="file" name="uploadImage" >
   카테고리 선택  <select name="cloth_category">
   	<option value="boots">boots
   	<option value="tShirt">tShirt
   	<option value="blouse">blouse
   	<option value="jeans">jeans
   	<option value="hat">hat
   	<option value="leggings">leggings
   	<option value="shorts">shorts
   	<option value="glasses">glasses
   	<option value="trenchcoat">trench coat
   	<option value="underwear">underwear
   </select>
   <br><br>
   <input type="submit" id="uploadImage2">
   </form>   
      
      
   <div class ="spreadImage" >
   <table>
      <tr>
         <th style="font-family: 'Kirang Haerang', cursive;">${loginId}님의 옷장</th>
      </tr>
      <tr>
      <c:forEach var="image" items="${images}">
      <td>${image.id}</td>
      <td><div class="droppableImage"><img alt="" src="getByteImage?str=${image.ID}" style="width: 200px; height: 100px;"></div></td>
     


  </c:forEach>
   </table>
   </div>   
   <h2 style="font-family: 'Skranji', cursive;">DRAG AND DROP</h2>
   <div id="canvas" class="col-xs-9 canvas" style="border:solid 5px;  background-color: #e6e6e6; border: none; width: 80%; height: 500px">
   </div>
  <button id="submit_btn">
    Submit
  </button>
   
   <a href="codiBookList">역대 코디 확인</a>
   </body>
   
</html>

