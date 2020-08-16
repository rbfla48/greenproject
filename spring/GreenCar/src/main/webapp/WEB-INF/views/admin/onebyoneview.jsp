<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />">
<!--상단header-->
<link rel="stylesheet"
	href="<c:url value="/resources/css/onebyoneview.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/footer.css" />">
<!--하단footer-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--구글머터리얼-->
<meta charset="UTF-8">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>1:1 문의글 상세보기</title>
<script>


	const contextPath = "${contextPath}";
	let oboNo = "${param.oboNo}";

	$(function() {

		$("#answer_submit").click(function() {
			console.log("전송");
			$.ajax({
				url : contextPath + "/admin/onebyoneview",
				type : "POST",
				data : {
					oboNo : oboNo,
					answerBox : $("#answer_box").val()
				},
				success : function(result) {
					console.log("result : "+result[0]);
					console.log("1: "+result[1].oboAnswer);
					console.log("2: "+result[1].oboNo);
					alert(result[0]);
					$("#answer_box").val(result[1].oboAnswer);
				},
				error : function(xhr, status) {
					console.log(xhr + " : " + status); // 에러 코드
				}
			}); // ajax
		});
	});
</script>
</head>

<body>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>
	<!-------------------------------메뉴바END-------------------------------->

	<section>
		<div id="question_title">${onebyoneview.oboCategory}
			${onebyoneview.oboTitle}
			<div id="question_writer">작성자 : ${onebyoneview.oboWriter}</div>
		</div>

		<div id="question_content">${onebyoneview.oboContent}</div>
		<hr>
		<input type="text" id="answer_box" name="answer_box"
			placeholder="내용을 입력해주세요" value="${onebyoneview.oboAnswer}">
		<hr>
		<div id="sub">
			<p>답변을 수정하려면 기존 답변을 지우고 다시 입력하세요</p>
			<button id="answer_submit">답변하기</button>
		</div>

	</section>

	<!-------------------------------footer시작------------------------------->
	<!--하단 회사정보영역-->
	<footer id="footer">
		<!--상단회사명-->
		<br>
		<p>
			<b>GREENCAR</b>
		</p>
		<hr>
		<!--하단사업자정보-->
		<p>사업자 김붕붕 | 사업자번호 211-31-64480 | 사업자 주소 : 서울특별시 관악구 청룡중앙길 42-1 |
			02 - 1234 - 5678</p>
		<p>COPYRIGHT © GREEN COMPANY. ALL RIGHTS RESERVED.</p>
		<!--하단영역end-->
	</footer>

</body>
</html>