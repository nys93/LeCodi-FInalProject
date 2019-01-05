<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>상세보기</title>
		<script src="<c:url value='/resources/js/jquery-3.2.1.js' />"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$('#writeBtn').on('click', writeReply);
				readReply();				
			});
			
			function writeReply(){
				var reply = $('#reply').val();
				if(reply.length == 0){
					alert('입력해주세요');
					return;
				}
				var boardnum = $('#boardnum').val();
				
				$.ajax({
					url: 'writeReply'
					, type: 'post'
					, data: {
						reply: reply
						, boardnum: boardnum
					}
					, success: function(){
						$('#reply').val('');
						readReply();
					}
					, error: function(err){
						console.log(err);
					}
				});
			}
			
			function readReply(){
				var boardnum = $('#boardnum').val();
				$.ajax({
					url: 'readReply'
					, type: 'get'
					, dataType: 'json'
					, data: {
						boardnum: boardnum
					}
					, success: function(data){
						var str ='<table>';
				         for (let com of data) { 
				            str += '<td id="userid' + com.replynum + '">' + com.userid + '</td>' 
				            	+ '<td id="context' + com.replynum + '">' + com.context + '</td>';
				            str += '<td><input type ="button" class="delBtn" value="삭제" num="' + com.replynum + '">';
				            str += '<input type ="button" class="updBtn1" value="수정" num="' + com.replynum + '"></td></tr>';
				         }
				         str += '</table>';
				         
				         $('#listDiv').html(str);
				         
				       	 $('.delBtn').on('click', deleteComment);
				         $('.updBtn1').on('click', updateComment);
					}
					, error: function(err){
					}
				});
			}	
			function deleteComment(){
				var num = $(this).attr('replynum');
				      
				$.ajax({
					url: 'deleteReply'
					,type: 'get'
					,data: {
						replynum: num
					}
					,success: function(){
						alert('삭제성공');
						readReply();
					}
					,error: function(err){
						console.log(err);
					}
				});
			}
			
			function updateComment(){
				var num = $(this).attr('replynum');
				var name = $('#userid'+num).text();
				var text = $('#context'+num).text();
				var str= '<input type="text" id= "name1'+replynum+'" value="'+userid+'">';
				var str2 ='<input type="text" id ="text1'+replynum+'" value="'+context+'">';
			    
				$('#name'+num).html(str);
				$('#text'+num).html(str2);
			      
				$(this).attr('class','updBtn2'); 
			      
				$('.updBtn2').off('click');
				$('.updBtn2').on('click', update);
			}
			
			function update(){
				var replynum = $(this).attr('replynum');
				var userid = $('#name1'+replynum).val();
				var context = $('#text1'+replynum).val();
				      
				$.ajax({
					url: 'update'
					, type: 'post'
					, data: {
						replynum: replynum
						, userid: userid
						, context: context
					}
					, success: function(){
						alert('수정성공');
						readReply();
					}
					, error: function(err){
						console.log(err);
					}
				         
				});
			}
		</script>
	</head>
	<body>
		<h3>글 상세보기</h3>
		<table style=" border-collapse: collapse;">
			<tr>
				<td>제목</td>
				<td>${board.title}</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>${board.inputdate}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${board.context}</td>
			</tr>
		</table>
		<br><br>
		<div id="formDiv">
			<input type="text" id="userid" name="userid" value="${sessionScope.loginId}" readonly="readonly">
			<input type="text" id="reply" name="reply" placeholder="내용">
			<input type="hidden" id="boardnum" value="${board.boardnum}">
			<input type="button" id="writeBtn" value="등록">
		</div>
		<br><br>
		<div id="listDiv"></div>
	</body>
</html>