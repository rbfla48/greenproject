<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
    <div><!--메뉴바-->
        <header>
            <!--화면 상단 마이페이지, 장바구니 시작-->
            <div id="top">
                <ul>
                    <li id="mypage"><a href="#">마이페이지</a></li>
                    <li id="cart"><a href="#">장바구니</a></li>
                </ul>
            </div>
            <!--화면 상단 마이페이지, 장바구니 끝-->

            <hr id="hl"> <!--top, nav 분리 줄-->
        </header>
            <nav>
                <!--logo 시작-->
                <div id="logo">
                    <img src="../image/logo/gclogo_.png" alt="greencar_logo">
                </div>
                <!--logo 끝-->

                <!-- 네비게이션 바 시작-->
                <div id="middle">
                    <ul>
                        
                        <li id="notice"> <a href="#">공지사항</a></li>
                        <li id="vl">|</li>
                        <li id="products"> <a href="#">상품페이지</a></li>
                        <li id="vl">|</li>
                        <li id="community" > <a href="#">커뮤니티</a></li>
                        <li id="vl">|</li>
                        <li id="newsandissue" > <a href="#">뉴스&이슈</a></li>
                        <li id="vl">|</li>
                        <li id="user_advice" > <a href="#">고객지원</a></li>
                        
                    </ul>
                </div>
                <!--네비게이션 바 끝-->
            </nav>
    </div>
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
        <ul>마이페이지</ul>
        <ul>회원정보 수정</ul>
        <ul>1:1 문의내역<span id="new"> new</span></ul>
        <ul>내가쓴 글 보기<span id="how_much"> 5</span></ul>
        <ul>회원탈퇴</ul>     
    </aside>  

    <div class="section_wrap"><!--탈퇴처리영역-->

        <div class="section_img_wrap"><!--GC로고이미지영역-->
            <img src="/resources/image/logo/gclogo_.png">
        </div>

        <div class="input_password"><!--비밀번호입력텍스트-->
            <b>탈퇴하려면 비밀번호를 입력하세요.</b>
        </div>
        <form action="/member/memberDelete" method="post">
        	<div class="out_password"><!--비밀번호 입력-->
        		<input class="form-control" type="password" id="userPw" name="userPw" />
        	</div>

        <div class="btn_wrap">
        	<button class="btn btn-success" type="submit" id="submit">탈퇴하기</button>
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
    <!--하단 회사정보영역-->
    <footer id="footer">
        <!--상단회사명-->
        <br>
        <p><b>GREENCAR</b></p>
        <hr>
        <!--하단사업자정보-->
        <p>사업자  김붕붕  |  사업자번호 211-31-64480 | 사업자 주소 : 서울특별시 관악구 청룡중앙길 42-1 | 02 - 1234 - 5678 </p>
        <p>COPYRIGHT © GREEN COMPANY. ALL RIGHTS RESERVED.</p>
        <!--하단영역end-->
    </footer>
<!--메뉴바END-->