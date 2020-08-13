<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!--  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>>
<<c:set var="contextPath" value="${pageContext.request.contextPath}" /> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GreenCar Home</title>
<link rel="stylesheet" href="/resources/css/menu.css">
<!--상단header-->
<link rel="stylesheet" href="/resources/css/mypage_mywrite.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<!--하단footer-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--구글머터리얼-->
</head>
<body>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<jsp:include page="/resources/jsp/menu.jsp" flush="false" />
	
	<script src="/resources/js/memberUpdate.js" type="text/javascript"></script>

	<!-------------------------------메뉴바END-------------------------------->
	
	</script>
	<section>
		<!--마이 페이지 시작-->
		<div class="wrap">
			<!--마이페이지 전체영역-->
			<aside class="mypage_category">
				<ul>마이페이지
				</ul>
				<ul>
					<button id="function" onclick="location.href='/mypage/memberUpdateView?='">회원정보 수정</button>
				</ul>
				<ul>
					1:1 문의내역
					<span id="new"> new</span>
				</ul>
				<ul>
					내가쓴 글 보기
					<span id="how_much"> 5</span>
				</ul>
				<ul>회원탈퇴
				</ul>
			</aside>


			<!--메인-->
			<div class="mypage_wrap"><!-- 마이페이지 메인화면 -->
				<div><!-- 웰컴이미지&회원정보 -->
					<sec:authentication property="username"/><!-- 회원정보(이메일) -->
				</div>
			</div>
	</section>

	<!-------------------------------footer시작------------------------------->
	<!--하단 회사정보영역-->
	<jsp:include page="/resources/jsp/footer.jsp" flush="false" />
	<!--메뉴바END-->