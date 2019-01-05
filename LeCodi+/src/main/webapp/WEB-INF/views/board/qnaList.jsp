<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
		<title>등록된 문의</title>
		<script type="text/javascript">
			function paging(page) {
				var ePage = document.getElementById('page');
				ePage.value = page;
				var form = document.getElementById('pageForm');
				form.submit();
			}
		</script>
		<style type="text/css">
		#qnath{
			text-align: center;
		}
		#navigator{
			text-align: center;
		}
		.content : hover {background-color:#f5f5f5;}
		
		table {
   			 width: 1200px; 
  		}
		table.type07 {
		    border-collapse: collapse;
		    text-align: center;
		    line-height: 1.5;
		    border: 1px solid #ccc;
		    margin: 20px 10px;
		}
		table.type07 thead {
		    border-right: 1px solid #ccc;
		    border-left: 1px solid #ccc;
		    background: #e7708d;
		}
		table.type07 thead th {
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: #fff;
		}
		table.type07 tbody th {
		    width: 150px;
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		    background: #fcf1f4;
		}
		table.type07 td {
		    width: 350px;
		    padding: 10px;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		}
		</style>
	</head>
	<body>
		<jsp:include page="../header.jsp"></jsp:include>	
		
		<div class="container">
		<h1 style="font-family: 'Monoton', cursive;">Q&A</h1>
		<table class="type07">
		    <thead>
		    <tr>
		        <th id ="qnath" scope="cols">글 번호</th>
		        <th id ="qnath" scope="cols">제목</th>
		        <th id ="qnath" scope="cols">작성일</th>
		        <th id ="qnath" scope="cols">답변</th>
		    </tr>
		    </thead>
		    <tbody>
			    <c:if test="${sessionScope.myList != null}">
			    	<c:forEach items="${sessionScope.myList}" var="qna">
					    <tr class="content">
					        <th id ="qnath" scope="row">${qna.boardnum}</th>
					        <td><a href="../board/viewBoard?boardnum=${qna.boardnum}">${qna.title}</a></td>
					        <td>${qna.inputdate}</td>
					        <td>아무거나</td>
					    </tr>
				    </c:forEach>
			    </c:if>
		    	<c:if test="${sessionScope.myList == null}">
		    		<tr>
		    			<td colspan="4">문의 내역이 존재하지 않습니다</td>
		    		</tr>
		    	</c:if>
		    </tbody>
		</table>
		</div>
		<div id="navigator">
		
		<c:if test="${navi.startPageGroup > 1}">
			<a href="javascript:paging(1)">첫번째페이지</a>
			<a href="javascript:paging(${navi.startPageGroup-1})">이전</a>
		</c:if>
		<c:forEach var="p" begin="${navi.startPageGroup}"
			end="${navi.endPageGroup}">
			
			<c:if test="${navi.currentPage != p}">
				<a href="javascript:paging(${p})">${p}</a>
			</c:if>
			
			<c:if test="${navi.currentPage == p}">
				${p}
			</c:if>
			
		</c:forEach>
		<c:if test="${navi.endPageGroup < navi.totalPageCount}">
		<a href="javascript:paging(${navi.endPageGroup+1})">다음</a>
		<a href="javascript:paging(${navi.totalPageCount})">마지막페이지</a>
		</c:if>
		
		</div>
			<div id="page_field" class="paging">
			<form id="pageForm" action="qnaList" method="get">
				<input type="hidden" id="page" name="page">
			</form>
		</div>
	</body>
		
</html>