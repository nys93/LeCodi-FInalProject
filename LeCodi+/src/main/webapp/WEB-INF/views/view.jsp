<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>[제대로 되는건지]</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
</head>

<body>
<img alt="" src="/foru/getByteImage"  height="42" width="42" />
<img id="img_file" src="" height="142" width="142" />
<script>
var result;
$.ajax({
	type: 'GET',
	url: "/foru/getByteImage",
	dataType: img/jpg
	
	}).done(function(res) {
	 console.log("success");
	 console.log(res);
	 $("#img_file").attr("src", "data:image/png;base64,"+res);
	 
    
  })
  .fail(function() {
    alert( "error" );
  });
</script>

</body>
</html>