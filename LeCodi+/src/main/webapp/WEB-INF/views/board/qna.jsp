<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">
	<style type="text/css">
	body {
		  padding-top:25px;
		  margin-left:10px;
		  margin-right:10px;
		}
		.qnacontainer {
		  max-width:1000px;
		  margin:0 auto;
		  text-align:center;
		  -webkit-border-radius:10px;
		  -moz-border-radius:10px;
		  border-radius:10px;
		  background-color:#FAFAFA;
		}
		.head {
		  -webkit-border-radius:6px 6px 0px 0px;
		  -moz-border-radius:6px 6px 0px 0px;
		  border-radius:6px 6px 0px 0px;
		  background-color:#ff8080;
		  color:#FAFAFA;
		}
		.qna {
		  text-align:center;
		  padding:18px 0 18px 0;
		  font-size: 1.4em;
		}
		input {
		  margin-bottom:10px;
		}
		textarea {
		  height:100px;
		  margin-bottom:10px;
		}
		input:first-of-type
		{
		  margin-top:35px;
		}
		input, textarea {
		  font-size: 1em;
		  padding: 15px 10px 10px;
		  font-family: 'Source Sans Pro',arial,sans-serif;
		  border: 1px solid #cecece;
		  background: #d7d7d7;
		  color:#FAFAFA;
		  -webkit-border-radius: 5px;
		  -moz-border-radius: 5px;
		  border-radius: 5px;
		  -moz-background-clip: padding;
		  -webkit-background-clip: padding-box;
		  background-clip: padding-box;
		  -webkit-box-sizing: border-box;
		  -moz-box-sizing: border-box;
		  box-sizing: border-box;
		  width: 80%;
		  max-width: 600px;
		}
		::-webkit-input-placeholder {
		   color: #FAFAFA;
		}
		:-moz-placeholder {
		   color: #FAFAFA;  
		}
		::-moz-placeholder {
		   color: #FAFAFA; 
		}
		:-ms-input-placeholder {  
		   color: #FAFAFA;  
		}
		#writeQna {
		  margin-top:15px;
		  margin-bottom:25px;
		  background-color:#ff8080;
		  padding: 12px 45px;
		  -ms-border-radius: 5px;
		  -o-border-radius: 5px;
		  border-radius: 5px;
		  border: 1px solid #fff;
		  -webkit-transition: .5s;
		  transition: .5s;
		  display: inline-block;
		  cursor: pointer;
		  width:30%;
		  color:#fff;
		}
		#writeQna:hover {
		   color:#fff; 
		}
		label.error {
		    font-family:'Source Sans Pro',arial,sans-serif;
		    font-size:1em;
		    display:block;
		    padding-top:10px;
		    padding-bottom:10px;
		    background-color:#d89c9c;
		    width: 80%;
		    margin:auto;
		    color: #FAFAFA;
		    -webkit-border-radius:6px;
		    -moz-border-radius:6px;
		    border-radius:6px;
		}
		/* media queries */
		@media (max-width: 700px) {
		  label.error {
		    width: 90%;
		  }
		  input, textarea {
		    width: 90%;
		  }
		  button {
		    width:90%;
		  }
		  body {
		  padding-top:10px;
		  }  
		}
		.context {
		    font-family:'Source Sans Pro',arial,sans-serif;
		    font-size:1.1em;
		    display:none;
		    padding-top:10px;
		    padding-bottom:10px;
		    background-color:#2ABCA7;
		    width: 80%;
		    margin:auto;
		    color: #FAFAFA;
		    -webkit-border-radius:6px;
		    -moz-border-radius:6px;
		    border-radius:6px;
		}
		input[type="text"]{
			font-family: 'Permanent Marker', cursive;
		}
	</style>
	<title>qna</title>
		<script type="text/javascript">
		function check(){
			var title = document.getElementById('title');
			var context = document.getElementById('context');
			
			if(title == ''){
				alert('빈 칸을 입력해주세요');
				return false;
			}
			if(context == ''){
				alert('빈 칸을 입력해주세요');
				return false;
			}
			return true;
		}
		
	</script>
	</head>
	<body>
		<jsp:include page="../header.jsp"></jsp:include>
		<br><br><br><br><br><br>
		<!-- 
		contact form created for treehouse competition.
		-->
		<form action="writeQ" method="post" onsubmit="return check()">
		  <div class="qnacontainer">
		    <div class="head">
		      <h2 class ="qna" style="font-family: 'Monoton', cursive;"> Question & Answer</h2>
		    </div>
		    <input type="text" name="name" value="${sessionScope.loginId}" readonly="readonly"/><br />
		    <br>
		    <input type="text" id="title" name="title" placeholder="title">
		    <br><br>
		    <textarea name="context" placeholder="Message" style="font-family: 'Permanent Marker', cursive;"></textarea>
		    <br><br>
		    <div class="context">message Sent</div>
		    <button id="writeQna" style="font-family: 'Permanent Marker', cursive;">
		      	Write
		    </button>
		  </div>
		</form>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="../footer.jsp"></jsp:include>	
	</body>
</html>