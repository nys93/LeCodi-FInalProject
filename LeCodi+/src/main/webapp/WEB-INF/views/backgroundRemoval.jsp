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

  if (input.files && input.files[0]) {//������ �Ѱ��� ����
    var reader = new FileReader();

    reader.onload = function(e) {//������ �ö����
      $('#blah').attr('src', e.target.result); //�� �̺�Ʈ�� ������� �� �̹����� �ҽ��� �ȴٴ°�

      canvas.height = canvas.width = 500; //ĵ������ �ʺ�� ���̸� �����ְ�
      ctx.drawImage(image, 0,0); // (image, x, y��) 

      var imgd = ctx.getImageData(0,0,500,500), //(x, y, w, h) An ImageData object containing the image data for the given rectangle of the canvas.
      	pix = imgd.data, //�̹����� ���� �������� ���� 
      	newColor = {r:0, g:0, b:0, a:0};

      for (var i = 0, n = pix.length; i<n; i+=4) {//���� �����ͼ� �迭�� �־��ش�
      	var r = pix[i],
      	g = pix[i+1],
      	b = pix[i+2];

      	if (r >  230 && g > 230 && b > 230) {//r, g, b, a�� 230 �̻��̸� ���� 0���� �ٲ㼭 ����ȭ�����ش�. 
      		pix[i] = newColor.r;
      		pix[i+1] = newColor.g;
      		pix[i+2] = newColor.b;
      		pix[i+3] = newColor.a;
      	}
      }

    ctx.putImageData(imgd, 0,0);// �� �̹����� x�� = 0, y�� = 0�� ��ġ�� �ѷ��ش�. 


    }

    reader.readAsDataURL(input.files[0]);
  }
}

$("#testImage").change(function() {//testImage�� �ٲ��(Change) operate this function
  readURL(this);
});


</script>
</html>