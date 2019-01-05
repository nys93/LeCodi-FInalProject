<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>csc</title>
		<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
		<style type="text/css">
		/* grid */
			.container {
			  display: grid;
			  grid-template-columns: 1fr;
			  grid-gap: 10px;
			  font-family: 'Jua', sans-serif;
			}
			
			/* items */
			.container > * {
			  font-size: 1.2em;
			  line-height: 1.5;
			  padding: 20px;
			  background: #fff;
			  
			}
			
			/* nav styles */
			.container nav {
			  background: #fff;
			}
			
			nav ul {
			  list-style: none;
			  margin: 0;
			  padding: 0;
			}
			
			nav a {
			  color: #d0cfc5
			}
			
			nav a:hover {
			  text-decoration: none;
			}
			
			/* media query for grid layout */
			@media only screen and (min-width: 600px) {
			    
			  /* grid */
			 
			  
			  /* specific item styles */
			  .container header,
			  .container nav,
			  .container footer {
			    grid-column: span 4;
			  }
			  .container section {
			    grid-column: span 3;
			  }
			  
			  /* nav styles */
			  nav ul li {
			    display: inline-block;
			    padding: 0 20px 0 0;
			  }
			  
			  /* hide toggle */
			  .toggle {
			    display: none;
			  }
			  
			}
			
			/* media query for nav styles */
			@media only screen and (max-width: 599px) {
			  
			    #nav {
			      transition: transform .3s ease-in-out;
			      top: 0;
			      bottom: 0;   
			      min-height: 100vh; /* override Safari bug */
			      position: fixed; /* or choose `absolute` depending on desired behavior*/
			      width: 300px;
			      left: -340px;
			    }
			  
			    #nav:target {     
			      transform: translateX(340px);
			    }
			  
			    .close {
			      text-align: right;
			      display: block;
			      text-decoration: none;
			      font-size: 3em;
			      position: relative;
			      top: -30px;
			    }
			  
			}
		</style>
	</head>
	<body>
	<jsp:include page="../header.jsp"></jsp:include>	
		    
  
<div class="support-grid"></div>

<div class="container">
  
  <header role="banner">
      <a class="toggle open" href="#nav">open</a>
      <h1 style="font-family: 'Monoton', cursive;">CUSTOMER CENTER</h1>
  </header>

  <nav id="nav" role="navigation">  
    <a class="toggle close" href="#">×</a>
    <ul>
        <li>
            <a href="../board/notice" style="font-family: 'Jua', sans-serif;">공지사항 / 이벤트</a> 
        </li>
        <li>
            <a href="../board/qna" style="font-family: 'Jua', sans-serif;">문의하기</a>
        </li>
        <li>
            <a href="../board/qnaList" style="font-family: 'Jua', sans-serif;">내 문의 내역</a>
        </li>
        <li>
            <a href="../board/bestQuestion" style="font-family: 'Jua', sans-serif;">자주 묻는 질문</a>
        </li>
    </ul>
  </nav>

  <section role="main">
      <article>
          <img alt="" src="${pageContext.request.contextPath}/resources/image/notice.jpg" style="width: 800px;">
      </article>
  </section>

  <aside>
      <p>고객센터 전화번호</p>
		<h3 style="font-family: 'Jua', sans-serif;">1661-1813</h3>
		<p>MON - FRI 11AM ~ 6PM</p>
		<p>Lunch 12:30PM ~ 1:30PM</p>
		<p>DAY OFF 토 / 일 / 공휴일</p>
  </aside>

  <footer>
      <div class="col3">
      <span class="footer_title">FOLLOW US</span>
      <br><br>
      <div class="social">
      <a href="http://www.facebook.com/codibook" target="_blank" class="facebook">
      	<img src="https://s1.codibook.net/images/glyphs/footer/facebook.png" alt="Facebook">
      </a>
      <a href="http://instagram.com/codibook" target="_blank" class="instagram">
      	<img src="https://s1.codibook.net/images/glyphs/footer/instagram.png" alt="Instagram">
      </a>
      <a href="http://blog.codibook.net/" target="_blank" class="blog">
      	<img src="https://s1.codibook.net/images/glyphs/footer/blog.png" alt="Blog">
      </a>
      <a href="https://twitter.com/codibook" target="_blank" class="twitter">
      	<img src="https://s1.codibook.net/images/glyphs/footer/twitter.png" alt="Twitter"></a>
      <a href="https://story.kakao.com/ch/codibook" target="_blank" class="kakaostory">
      	<img src="https://s1.codibook.net/images/glyphs/footer/kakaostory.png" alt="Twitter"></a>
      </div>
      </div>
  </footer>
  
</div>


		
		
		
		
	<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>