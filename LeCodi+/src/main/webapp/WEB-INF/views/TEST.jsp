<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js" ></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>codi</title>
	 <style type="text/css">

   </style>
   </head>
   <script type="text/javascript">
   $(function (){
      var diagram = [];
      var canvas = $(".canvas");

      $(".droppableImage").draggable({
        revert: "invalid",//다시 돌아가는거 막는거
      	helper: "clone" 
      });

      canvas.droppable({
        drop: function(event, ui) {
          var node = {//움직여지는 대상
            _id: (new Date).getTime(), //날짜와 시간을 이용하여 각자 id를 부여한다. 
            src: $(ui.draggable),//드래그 되는 개체를 복사를 해서 캔버스에 가져오도록하는거 src: $(ui.draggable).clone(),
            position: $(ui.helper).offset()// 그 드랍되는 순간의 포지션을 가지는거지
          };
          console.log(ui.helper.hasClass("droppableImage"));
          if (!ui.helper.hasClass("droppableImage")) {
        	 return ;
         }
        	
          diagram.push(node); //이 움직여지는 대상을 배열에 저장한다 push/pop형태로
          renderDiagram(diagram); //이 배열을 캔버스에 그려주는 메소드로 넘어갑니다.
        }
      });

      function renderDiagram(diagram) {
        
        canvas.empty();//일단캔버스를 비우고
        for (var d in diagram) {//다이어그램에서 저장된 배열형태의 이미지를 하나씩 꺼내오는거
          
            var node = diagram[d];
   /*    	node.src.dropClass("droppableImage"); */
            var dom = node.src.css({//움직여지는 개체의 속성에 css를 줘서 변수에 저장한다. 
                "position": "absolute",
                "top": node.position.top,
                "left": node.position.left,
                "width": "100px",
                "height": "100px"
            }).draggable({
                stop: function(event, ui) {//드래그가 멈추면 어떻게 할것인가
                   
                    var id = $(this).attr("id");//아이디라는 attribute를 주고 그것을 id라는 변수에 저장한다
                    
                    for(var i in diagram) {//다이어그램에서 하나씩 또 배열로 뽑아온다
                    	console.log(diagram[i]);
                        if(diagram[i]._id == id) {
                            diagram[i].position.top = ui.position.top;
                            diagram[i].position.left = ui.position.left;
                            diagram[i].cloned = true;
                        }
                    }
                    
                }
            })
           /*   .resizable({//왜 이게 안먹히냐 대체 왜
                stop: function( event, ui ) {
                	console.log($(this));
                    width = $(this).width();
                    height = $(this).height();
                    var id = ui.helper.attr("id");
                    for(var i in diagram) {
                        if(diagram[i]._id == id) {
                            diagram[i].width = width;
                            diagram[i].height = height;
                        }
                    }
                }
            }) */
            .attr("id", node._id);

           canvas.append(dom);
        }
      }


    });// end of drag and drop

   </script>

   <body>
   
      <h3>코디 페이지</h3>
   <form action="saveImage" method="post" enctype="multipart/form-data">
   Last name:<br>
   
   <input type="file" name="uploadImage" >
   <br><br>
   <input type="submit">
   </form>   
      
      
   <div class ="spreadImage" >
   <table>
      <tr>
         <th>ID</th>
         <th>Image</th>
      </tr>
      <tr>
      <c:forEach var="image" items="${images}">
      <td>${image.id}</td>
      <td><div class="droppableImage"><img alt="" src="getByteImage?str=${image.ID}" style="width: 200" height="100"></div></td>

      <%-- <img id="pin" class="droppableImage" src="getByteImage?str=${image.ID}" width="100px" height="100px" /> --%>

  </c:forEach>
   </table>
   </div>   
   <h2>Canvas</h2>
   <div class="col-xs-9 canvas" style="background-color: beige; width: 100%; height: 500px">
   </div>
      <form action="" id="canvas_form">
        <!--  form 밑에 innerhtml, append-->
         <input type="submit" value="전송">
      </form>
   
   
   </body>
   
</html>