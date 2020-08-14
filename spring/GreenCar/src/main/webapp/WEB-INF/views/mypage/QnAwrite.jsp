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
    <link rel="stylesheet" href="/resources/css/Q&A_write.css" type="text/css">
    <link rel="stylesheet" href="/resources/footer.css" type="text/css"><!--하단footer-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
</head>
<body>

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<jsp:include page="/resources/jsp/menu.jsp" flush="false" />
	
    <!-------------------------------메뉴바END-------------------------------->

    <!--마이 페이지 시작-->
    <div class="wrap">
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

    <!--마이 페이지 끝-->
    <section>
    <form action="/mypage/QnAwrite" method="POST">
    <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
        <div id="inquery_box">
            <div id="inquery_text">문의항목</div>
            <div id="radio_btn">
              <input type="radio" name="oboCategory" value="홈페이지">
              <label>홈페이지</label>
              <input type="radio" name="oboCategory" value="결제">
              <label>결제</label>
              <input type="radio" name="oboCategory" value="기능">
              <label>기능</label>
              <input type="radio" name="oboCategory" value="기타">
              <label>기타</label>
            </div>
        </div>
        <div id="inquery_title">
            <div id="title_text">제목</div>
            <input type="text" id="title_input" name="oboTitle" value="제목을 입력하세요">
        </div>

        <input type="text" id="inquery_content" name="oboContent" value="문의를 작성하세요">

		<div class="oboWriter">
			<input type="text" name="oboWriter" value="${user.userNick}" readonly="readonly">
		</div>
        <div id="btns">
            <button type="submit">작성하기</button>
            <button type="reset">취소하기</button>
        </div>
	</form>
    </section>
    </div>

    

    <!-------------------------------footer시작------------------------------->

    <jsp:include page="/resources/jsp/footer.jsp" flush="false" />
