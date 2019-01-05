<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
	<link href="https://fonts.googleapis.com/css?family=Hi+Melody|Poor+Story" rel="stylesheet">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	
<style type="text/css">
input[type='text'] {
    background-image: url(../resources/image/sponge.png);
    background-position: left;
    background-repeat: no-repeat;
}

input[type='password'] {
    background-image: url(../resources/image/bo.png);
    background-position: left;
    background-repeat: no-repeat;
}
	 .login {
		text-align: center;
		
	} 
	.con{width:25%; margin:5% auto}
.login{
	font-family: 'Hi Melody', cursive;
	font-size: large;
}	
input[type="text"], input[type="password"]{
	font-family: 'Poor Story', cursive;
}
input[type=submit] {
  width: 300px;
  padding: 15px;
  border-radius: 25px;
  border: none; outline: none;
  
  background-color: #FFA69E;
  color: #EFE9AE;
  
  position: relative;

  font-size:110%;
  box-shadow: 1px 2px 0px #B5838D,
              -1px 2px 0px #B5838D;
  transition: all .5s ease-in-out;
  letter-spacing: 5px;
  text-shadow: 1px 1px 2px #B5838D;
}
input[type=submit]:AFTER{
  content: " ";
  position: absolute;
  top: -48%; left: 9%;

    border-bottom: 100px solid #fff;
    border-left: 25px solid transparent;
    border-right: 25px solid transparent;
    border-radius: 60%;
  
  transform: rotate(90deg);
  
}
input[type=submit]:HOVER{
  letter-spacing: 1px;
  cursor: pointer;
  box-shadow: 1px 1px 1px #B5838D;
}
		
	</style>
	<script type="text/javascript">
			function check(){
				var checkId = document.getElementById('userid');
				var checkPass = document.getElementById('password');
				
				if(checkId.value == ''){
					alert('ID를 입력해주세요');
					return false;
				}
				if(checkPass.value == ''){
					alert('비밀번호를 입력해주세요');
					return false;
				}
				return true;
			}
			function hideIcon(self) {
			    self.style.backgroundImage = 'none';
			}
			
			
	</script>
   </head>
	<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class = "login">
		<h3 class ="login">로그인</h3>
		<form action="login" method="post" onsubmit="return check()">
			<input type="text" id="userid" name="userid" onclick="hideIcon(this);">
			<br><br>
			<input type="password" id="password" name="password" onclick="hideIcon(this);">
			<div class="con">
			<input type="submit" value="Login">
				<div class="find_footer">
		<div class="find">
		<a href="find" style="color: #ff9999;">아이디 및 비밀번호 찾기</a><br>
		회원가입을 하시면 다양하고 특별한 혜택이 준비되어 있습니다. <a href="join" style="color: #ff9999;">Join</a>
		</div>
		</div>
			</div>
		</form>
		 
	<br>
		<br>

		
	<div>	
	<jsp:include page="../footer.jsp"></jsp:include>	
	</div>
	</div>
	</body>
</html>