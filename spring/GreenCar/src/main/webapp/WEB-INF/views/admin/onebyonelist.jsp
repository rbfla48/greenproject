<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />">
<!--상단header-->
<link rel="stylesheet"
	href="<c:url value="/resources/css/onebyonelist.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/footer.css" />">
<!--하단footer-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--구글머터리얼-->
<meta charset="UTF-8">
<title>1:1 문의글 목록</title>
<script>
		
		function moveBoard() {
			var cate = document.getElementById("category").value;
			var page = "${pageMaker.cri.page}";
			var perPageNum = 10;
			
			console.log("카테고리 : " + cate);
			
			if(cate=="선택하세요") {
				alert("카테고리를 선택하세요");
			}
			else if(cate=="전체") {
				location.href='/admin/onebyonelist';
			} else if(cate=="답변대기중") {
				console.log("1");
				location.href='/admin/listPageNoAnswer?page=' + page + '&perPageNum=' +perPageNum;
			}
			else {
				var page="${pageMaker.cri.page}";
				location.href='/admin/onebyoneByCate?oboCategory=' + cate + '&page='+page;	
			}
		}
	</script>
</head>
<body>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>
	<!-------------------------------메뉴바END-------------------------------->
	<section>
		<div id="customer_question_box">
			<div id="customer_question">
				<h3>고객문의</h3>
				<h4>( 답변하지 않은 문의 / 전체 문의 ) ( ${onebyoneNewSize} /
					${onebyoneAllSize} )</h4>
				<select id="category" onchange="moveBoard()">
					<option value="선택하세요">선택하세요</option>
					<option value="전체">전체</option>
					<option value="[결제]">결제</option>
					<option value="[기능]">기능</option>
					<option value="[커뮤니티]">커뮤니티</option>
					<option value="[기타]">기타</option>
					<option value="답변대기중">답변대기중</option>
				</select>
			</div>
			<table>
				<tr id="tb_top">
					<td id="tb_no">번호</td>
					<td id="tb_category">카테고리</td>
					<td id="tb_title">제목</td>
					<td id="tb_writer">작성자</td>
					<td id="tb_date">작성일</td>
				</tr>

				<c:forEach items="${onebyonelist}" var="list">
					<tr>
						<td><c:out value="${list.oboNo}" /></td>
						<td><c:out value="${list.oboCategory}" /></td>
						<td><a href="/admin/onebyoneview?oboNo=${list.oboNo}"><c:out
									value="${list.oboTitle}"></c:out></a></td>
						<td><c:out value="${list.oboWriter}" /></td>
						<td><fmt:formatDate value="${list.oboDate}"
								pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!--게시판 끝-->

		<!--페이징 버튼 시작-->
		<div id="paging">
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="idx">
				<a class="paging_button"
					href="onebyonelist${pageMaker.makeQuery(idx)}">${idx}</a>
			</c:forEach>
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