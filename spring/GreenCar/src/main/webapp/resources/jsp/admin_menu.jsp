<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/menu.css" />
</head>
<body>
	<div>
		<!--메뉴바-->
		<header>
			<!--화면 상단 로그인정보 표시-->
			<div id="top">
				<!-- 로그인정보 없을때 -->
				<sec:authorize access="isAnonymous()">
					<ul>
						<li id="login"><a href="/login/customLogin">로그인</a></li>
					</ul>
				</sec:authorize>
				<!-- 로그인정보 있을때 -->
				<sec:authorize access="isAuthenticated()">
					<ul>
						<li id="logout"><a href="/login/logout">로그아웃</a></li>
					</ul>
				</sec:authorize>
			</div><!--화면 상단 로그인정보 END-->
			

			<hr id="hl">
			<!--top, nav 분리 줄-->
		</header>
		<nav>
			<!--logo 시작-->
			<div id="logo">
				<img
					src="<spring:url value='/resources/image/logo/gclogo_admin.png'/>"
					alt="greencar_admin_logo">
			</div>
			<!--logo 끝-->

			<!-- 네비게이션 바 시작-->
			<div id="middle">
				<ul>
					<li><a href="/admin/updateView">상품관리</a></li>
					<li id="vl">|</li>
					<li><a href="/admin/notice/noticeList">공지관리</a></li>
					<li id="vl">|</li>
					<li><a href="/admin/onebyonelist">문의관리</a></li>
				</ul>
			</div>
			<!--네비게이션 바 끝-->
		</nav>
		<!--메뉴바END-->
	</div>
</body>
</html>