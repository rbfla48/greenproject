<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GreenCar Home</title>
    <link rel="stylesheet" href="/resources/menu.css" type="text/css"><!--상단header-->
    <link rel="stylesheet" href="/resources/Q&A_write.css" type="text/css">
    <link rel="stylesheet" href="/resources/footer.css" type="text/css"><!--하단footer-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
</head>
<body>

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<jsp:include page="/resources/jsp/menu.jsp" flush="false" />
	
    <!-------------------------------메뉴바END-------------------------------->

    <!--마이 페이지 시작-->
    
    <aside class="mypage_category">
				<ul>
					마이페이지
				</ul>
				<ul>
					<a href="/mypage/memberUpdateView">회원정보 수정</a>
				</ul>
				<ul>
					<a href="/mypage/QnAList">1:1 문의내역</a>
					<span id="new">new</span>
				</ul>
				<ul>
					<a href="/mypage/mypageMywrite">내가쓴 글 보기</a>
					<span id="how_much"></span>
				</ul>
				<ul>
					<a href="/mypage/memberDeleteView">회원탈퇴</a>
				</ul>
	</aside> 

    <section>
		<div id="customer_question_box">

			<table>
				<tr id="tb_top">
					<td id="tb_no">번호</td>
					<td id="tb_category">카테고리</td>
					<td id="tb_title">제목</td>
					<td id="tb_writer">작성자</td>
					<td id="tb_date">작성일</td>
				</tr>
				<c:forEach items="${onebyonelist}" var="list">
					<c:if test="${list.oboWriter eq user.userNick}">
						<tr>
							<td><c:out value="${list.oboNo}" /></td>
							<td><c:out value="${list.oboCategory}" /></td>
							<td><a href="/admin/onebyoneview?oboNo=${list.oboNo}"><c:out
										value="${list.oboTitle}"></c:out></a></td>
							<td><c:out value="${list.oboWriter}" /></td>
							<td><fmt:formatDate value="${list.oboDate}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
		<form action="/mypage/QnAwrite"></form>
		<button>문의작성</button>
		<!--게시판 끝-->
	</section>

    

    <!-------------------------------footer시작------------------------------->

    <jsp:include page="/resources/jsp/footer.jsp" flush="false" />
