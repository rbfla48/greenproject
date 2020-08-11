<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- spring security post 전송시 403 문제 패치 -->
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>

<title>GreenCar Home</title>
<link rel="stylesheet" href="/resources/css/menu.css" />
<!--상단header-->
<link rel="stylesheet" href="/resources/css/admin_notice_write.css" />
<link rel="stylesheet" href="/resources/css/footer.css" />
<!--하단footer-->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--구글머터리얼-->
</head>
<body>

	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>
	
	<!-------------------------------메뉴바END-------------------------------->
	<div class="wrap">
		<!--전체영역-->
		<div class="notice_write">
			<!--작성창 영역-->
			<h3>공지사항</h3>

			<form role="form"
				action='/admin/notice/modify?noticeNo=<c:out value="${notice.noticeNo }"/>'
				method="GET">

				<div>
					<!--게시글번호-->
					<input type="text" value="<c:out value="${notice.noticeNo }" />"
						name="noticeNo" readonly="readonly">
				</div>
				<div class="notice_write_head">
					<!--제목-->
					<!-- 시간되면 제목옆에 댓글수 카운트 -->
					<input type="text" value="<c:out value="${notice.noticeTitle }" />"
						name="noticeTitle" readonly="readonly">
				</div>
				<div class="notice_write_text">
					<!--본문-->
					<textarea name="noticeText" readonly="readonly"><c:out
							value="${notice.noticeText }" /></textarea>
				</div>
				<div class="notice_writer">
					<!--작성자-->
					<input type="text" value="<c:out value="${notice.noticeWriter }" />" 
						name="noticeWriter" readonly="readonly">
				</div>

				<input type="submit" value="수정하기">
			</form>

			<form role="form" action="/admin/notice/remove"method="GET">
				<input type="hidden" name="noticeNo" value="${notice.noticeNo }">
				<input type="submit" value="삭제하기">
			</form>

			<form role="form" action="/admin/notice/noticeList" method="GET">
				<input type="submit" value="목록으로">
			</form>

			<div id="comment">
				<!-- 댓글영역 -->
				<c:forEach items="${comment }" var="comment">
					<form action="/admin/notice/delComment?rno=<c:out value="${comment.rno }"/>" method="POST">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
						<input type="hidden" value="<c:out value="${notice.noticeWriter }" />">
						<li>
							<p>
								<c:out value="${comment.writer }" />
								<c:out value="${comment.content }" />
								<fmt:formatDate value="${comment.regdate }" pattern="yyyy-MM-dd" />
							</p>
							<button>삭제</button>
						</li>
					</form>

				</c:forEach>
			</div>
			<!-- 댓글영역 END-->


			<!-- 추후 자바스크립트로 수정 -->

			<form action="/admin/notice/regComment?noticeNo=<c:out value="${notice.noticeNo }"/>" method="POST">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<div id="regComment">
					<!-- 댓글작성영역 -->
					<input type="text" name="writer" value="<c:out value="${nick}"/>">
					<textarea name="content"></textarea>
					<button type="submit">댓글등록</button>
				</div>
			</form>
		</div>
	</div>

	<!-------------------------------footer시작------------------------------->
	<!--하단 회사정보영역-->
	<jsp:include page="/resources/jsp/footer.jsp" flush="false" />
	
</body>
</html>