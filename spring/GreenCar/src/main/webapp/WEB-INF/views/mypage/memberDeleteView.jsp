<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mypage_withdrawal </title>
    <link rel="stylesheet" href="/resources/css/menu.css" type="text/css"><!--상단header-->
    <link rel="stylesheet" href="/resources/css/mypage_withdrawal.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/footer.css" type="text/css"><!--하단footer-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
</head>
<body>

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<jsp:include page="/resources/jsp/menu.jsp" flush="false" />
	
    <!-------------------------------메뉴바END-------------------------------->
  
  <script type="text/javascript">
		$(document).ready(function(){
		
			$("#submit").on("click", function(){
				if($("#userPw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPw").focus();
					return false;
				}	
			});
		})
	</script>	
<!--마이 페이지 시작-->
    
<div class="wrap"><!--마이페이지 전체영역-->
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

    <div class="section_wrap"><!--탈퇴처리영역-->

        <div class="section_img_wrap"><!--GC로고이미지영역-->
            <img src="/resources/image/logo/gclogo.png">
        </div>
		<h2><sec:authentication property="principal.username"/></h2>
        <div class="input_password"><!--비밀번호입력텍스트-->
            <b>탈퇴하려면 비밀번호를 입력하세요.</b>
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
        	<div class="out_password"><!--비밀번호 입력-->
        		<input class="form-control" type="password" id="userPw" name="userPw" />
        	</div>
        </div>
        <form action="/member/memberDelete" method="post">
        
        <div class="btn_wrap">
        	<button class="btn_success" type="submit" id="submit">탈퇴하기</button>
        </div><!--탈퇴버튼영역-->
        </form>  
        <div>
			<c:if test="${msg == false}">
				비밀번호가 맞지 않습니다.
			</c:if>
	</div>
    </div><!--탈퇴처리영역END-->
    </div><!--마이페이지 전체영역 END-->
    <!--마이 페이지 끝-->
    
    <!-------------------------------footer시작------------------------------->

   <jsp:include page="/resources/jsp/footer.jsp" flush="false" />
