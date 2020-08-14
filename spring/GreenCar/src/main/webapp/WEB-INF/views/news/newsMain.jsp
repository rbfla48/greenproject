<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>news_main</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/news_main.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/footer.css" />">
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
</style>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body>
	<div>
		<!--메뉴바-->
		<header>
			<!--화면 상단 마이페이지, 장바구니 시작-->
			<div id="top">
				<ul>
					<li id="mypage"><a href="#">마이페이지</a></li>
					<li id="cart"><a href="#">장바구니</a></li>
				</ul>
			</div>
			<!--화면 상단 마이페이지, 장바구니 끝-->

			<hr id="hl">
			<!--top, nav 분리 줄-->
		</header>
		<nav>
			<!--logo 시작-->
			<div id="logo">
				<img src="<spring:url value='/resources/image/logo/gclogo.png'/>"
					alt="greencar_logo">
			</div>
			<!--logo 끝-->

			<!-- 네비게이션 바 시작-->
			<div id="middle">
				<ul>

					<li id="notice"><a href="#">공지사항</a></li>
					<li id="vl">|</li>
					<li id="products"><a href="#">상품페이지</a></li>
					<li id="vl">|</li>
					<li id="community"><a href="#">커뮤니티</a></li>
					<li id="vl">|</li>
					<li id="newsandissue"><a href="#">뉴스&이슈</a></li>
					<li id="vl">|</li>
					<li id="user_advice"><a href="#">고객지원</a></li>

				</ul>
			</div>
			<!--네비게이션 바 끝-->
		</nav>
	</div>
	<!--메뉴바END-->
	<!-- -----------------------중앙 시작-------------------------------------------------------------------- -->

	<!-- 전체 테두리 시작-->
	<div id="wrap" class="wrap">
		<!-- 타이틀 (1) 시작-->
		<div id="title_1" class="title_1">
			<a href="${contextPath}/news/newsMain"> 뉴스 & 이슈</a>
		</div>
		<!-- 타이틀 (1) 끝-->

		<!-- 타이틀 (2) 시작-->
		<div id="title_2" class="title_2">
			<div id="category_title" class="category_title">
				<a> 카테고리</a>
			</div>
			<div id="category_1" class="category_field">
				<span class="material-icons"> keyboard_arrow_right </span><a
					href="${contextPath}/news/newsMain?newsCate=1"> 라이프</a>
			</div>
			<div id="category_2" class="category_field">
				<span class="material-icons"> keyboard_arrow_right </span><a
					href="${contextPath}/news/newsMain?newsCate=2"> 디자인</a>
			</div>
			<div id="category_3" class="category_field">
				<span class="material-icons"> keyboard_arrow_right </span><a
					href="${contextPath}/news/newsMain?newsCate=3"> 테크</a>
			</div>
			<div id="category_4" class="category_field">
				<span class="material-icons"> keyboard_arrow_right </span><a
					href="${contextPath}/news/newsMain?newsCate=4"> 경제</a>
			</div>
		</div>
		<!-- 타이틀 (2) 끝-->

		<!-- 포스트 전체 시작-->
		<div id="news_main" class="news_main">
			<div id="news_sub" class="news_sub">
				<!-- 포스트 반복 시작-->
				<c:forEach items="${newsMain}" var="news" varStatus="vs">
					<div id="news_1" class="news_box"
						onclick="location.href='${contextPath}/news/newsDetailView?newsNo=${news.newsNo}';">
						<!--  사진 시작 -->
						<img
							src="<spring:url value='/resources/image/post/${news.newsNo}.jpg'/>" />
						<!--  사진 끝 -->

						<!--  제목 시작 -->
						<h3 id="news_title_1" class="title">
							<c:out value="${news.newsTitle}" />
						</h3>
						<!--  제목 끝 -->

						<!--  내용 시작 -->
						<p id="news_text_1" class="text">
							<c:out value="${news.newsText}" />
						</p>
						<!--  내용 끝 -->
					</div>
				</c:forEach>
				<!-- 포스트 반복 끝-->
			</div>
			<!-- 페이징 시작 -->
			<div id="paging" class="paging">
				<c:forEach begin="${newsPageMaker.startPage}"
					end="${newsPageMaker.endPage}" var="idx">
					<a class="pagging_button"
						href="newsMain${newsPageMaker.makeQuery(idx)}">${idx}</a>
				</c:forEach>
			</div>
			<!-- 페이징 끝 -->

		</div>
		<!--포스트 전체 끝 -->

	</div>
	<!-- 전체 테두리 끝-->

	<!-- ----------------------------중앙 끝 ---------------------------------------------------------------------------------------->

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