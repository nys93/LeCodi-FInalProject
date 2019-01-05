<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">
<script src="https://www.marvinj.org/releases/marvinj-0.8.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js" type="text/javascript"></script>
<title>Title</title>

	
</head>
<style>
	body{background:#777}
</style>
<body>
	


</body>
<h3>Original Image</h3>
<input type="file" id="testImage">
<img src="" alt="" id="blah">

<h3>Modified Image</h3>
<canvas id="canvas"></canvas>




<script type="text/javascript">

var canvas = document.getElementById("canvas"),//get canvas
    ctx = canvas.getContext("2d"),//and rendering 2d image on that canvas
    image = document.getElementById("blah");

function readURL(input) {

  if (input.files && input.files[0]) {//파일이 한개라도 들어가면
    var reader = new FileReader();

    reader.onload = function(e) {//파일이 올라오면
      $('#blah').attr('src', e.target.result); //이 이벤트의 결과물이 이 이미지의 소스가 된다는거

      canvas.height = canvas.width = 500; //캔버스의 너비랑 높이를 정해주고
      ctx.drawImage(image, 0,0); // (image, x, y축) 

      var imgd = ctx.getImageData(0,0,500,500), //(x, y, w, h) An ImageData object containing the image data for the given rectangle of the canvas.
      	pix = imgd.data, //이미지의 색을 가져오는 변수 
      	newColor = {r:0, g:0, b:0, a:0};

      for (var i = 0, n = pix.length; i<n; i+=4) {//색을 가져와서 배열에 넣어준다
      	var r = pix[i],
      	g = pix[i+1],
      	b = pix[i+2];

      	if (r >  230 && g > 230 && b > 230) {//r, g, b, a가 230 이상이면 각각 0으로 바꿔서 투명화시켜준다. 
      		pix[i] = newColor.r;
      		pix[i+1] = newColor.g;
      		pix[i+2] = newColor.b;
      		pix[i+3] = newColor.a;
      	}
      }

    ctx.putImageData(imgd, 0,0);// 이 이미지를 x축 = 0, y축 = 0의 위치에 뿌려준다. 


    }

    reader.readAsDataURL(input.files[0]);
  }
}

$("#testImage").change(function() {//testImage가 바뀌면(Change) operate this function
  readURL(this);
});


</script>
</html>