<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
<link rel="stylesheet" href="/resources/css/menu.css" />
<!--상단header-->
<link rel="stylesheet" href="/resources/css/admin_notice.css" />
<link rel="stylesheet" href="/resources/css/footer.css" />
<!--하단footer-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--구글머터리얼-->
<meta charset="UTF-8">
<title>greencar_admin notice</title>
</head>
<body>

	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="/resources/js/pagingFunction.js" type="text/javascript"></script>
	<script src="/resources/js/searchFunction.js" type="text/javascript"></script>
	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false" />

	<!-------------------------------메뉴바END-------------------------------->
	<div class="wrap">
		<div class="notice_borad_wrap">
			<h3>공지사항</h3>

			<table class="notice_borad">
				<tr class="tbl_hd">
					<th class="tbl_txt_num">No.</th>
					<th class="tbl_txt_head">제목</th>
					<th class="tbl_txt_user">작성자</th>
					<th class="tbl_txt_date">작성일</th>
					<th class="tbl_txt_view">조회수</th>
				</tr>

				<c:forEach items="${list}" var="notice">
					<tr>
						<td><c:out value="${notice.noticeNo}" /></td>
						<td><a
							href='/notice/get?noticeNo=<c:out value="${notice.noticeNo}"/>'>
								<c:out value="${notice.noticeTitle}" />
						</a></td>
						<td><c:out value="${notice.noticeWriter}" /></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${notice.uploadDate}" /></td>
						<td><c:out value="${notice.noticeView}" /></td>
					</tr>
				</c:forEach>
			</table>


			<div class="notice_search">
				<!-- 검색기능 -->
				<form id="searchForm" action="/notice/noticeList" method="GET">
					<select name="type" class="notice_search_select">
						<option value=""
							<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--전체--</option>
						<option value="T"
							<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
						<option value="C"
							<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
						<option value="W"
							<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
						<option value="TC"
							<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목or내용</option>
					</select> <input type="text" name="keyword" class="notice_search_text"
						value="<c:out value="${pageMaker.cri.keyword }"/>" />

					<!-- 검색후 페이징처리 -->
					<input type="hidden" name="pageNum"
						value="<c:out value="${pageMaker.cri.pageNum }"/>"> <input
						type="hidden" name="amount"
						value="<c:out value="${pageMaker.cri.amount }"/>">
					<button class="notice_search_btn">검색</button>

				</form>
			</div>
			<!-- 검색기능END -->



			<div class="pagenate">
				<!-- 페이징 -->
				<div>
					<c:if test="${pageMaker.prev}">
						<!-- 이전페이지이동 -->
						<a
							href="${action}?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount }&type=${pageMaker.cri.type }&keyword=${pageMaker.cri.keyword }">이전으로</a>
					</c:if>
				</div>
				<div>
					<c:forEach begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}" step="1" var="num">
						<li class="paginate_btn"
							value="${pageMaker.cri.pageNum == num ? 'active':''} "><a
							href="${action}?pageNum=${num }">${num }</a></li>
					</c:forEach>
				</div>
				<div>
					<c:if test="${pageMaker.next}">
						<!-- 다음페이지 이동 -->
						<a
							href="${action}?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount }&type=${pageMaker.cri.type }&keyword=${pageMaker.cri.keyword }">다음으로</a>
					</c:if>
				</div>
			</div>
			<!-- 페이징END -->

		</div>


		<!-- 검색이후 검색결과를 삭제, 등록, 수정 , 조회 후에도 그대로 유지하려면 URI에 searchType, keyword를 달고 다녀야한다-->
		<form id="actionForm" action="/notice/noticeList" method="GET">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="type"
				value="<c:out value="${pageMaker.cri.type }"/>"> <input
				type="hidden" name="keyword"
				value="<c:out value="${pageMaker.cri.keyword }"/>">
		</form>

	</div>
	<!-------------------------------footer시작------------------------------->

	<jsp:include page="/resources/jsp/footer.jsp" flush="false" />
	
</body>
</html>