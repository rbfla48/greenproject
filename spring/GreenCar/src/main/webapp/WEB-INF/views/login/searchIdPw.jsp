

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아이디 비밀번호 찾기</title>
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />">
<!--상단header-->
<link rel="stylesheet"
	href="<c:url value="/resources/css/searchIdPw.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/footer.css" />">
<!--하단footer-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--구글머터리얼-->
<script>
    	function searchEmail() {
    		var userNick=document.getElementById("user_nick").value;
    		location.href="/login/searchIdProc?userNick="+ userNick;
    	}
    	
    	function searchPw() {
    		var userEmail=document.getElementById("user_email").value;
    		location.href="/login/searchPwProc?userEmail="+ userEmail;
    	}
    	
    	//window.onload=function() {
    		/* var findEmail = "${findEmail}";
    		if(findEmail != "") {
    			alert(findEmail);
    		} else {
    			alert("해당 닉네임을 가진 이메일이 없습니다.");
    		} */
    		
    	//}
    </script>
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
				<img src="../image/logo/gclogo.png" alt="greencar_logo">
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
					<li id="userAdvice"><a href="#">고객지원</a></li>

				</ul>
			</div>
			<!--네비게이션 바 끝-->
		</nav>
	</div>
	<!-------------------------------메뉴바END-------------------------------->

	<section>
		<div id="id_pw_trans">>> 아이디 | 비밀번호 변경</div>

		<div id="id_pw_box">
			<div id="id_such_box">
				<div id="id_text">ID 찾기</div>
				<div id="email_such">
					<input type="text" id="user_nick" name="user_nick"
						placeholder="닉네임을 입력하세요" value="${userNick}" /> <input
						type="button" value="이메일찾기" id=nick_btn onclick="searchEmail()">
					<script>
	                    var findEmail = "${findEmail}";
	                    var nickname = "${userNick}";
	            		if(findEmail != "" && nickname !="") {
	            			alert(findEmail);
	            		} else if(findEmail == "" && nickname !=""){
	            			alert("해당 닉네임을 가진 이메일이 없습니다.");
	            		} 
	                </script>
				</div>
			</div>
			<div id="pw_such_box">
				<div id="pw_text">PW 찾기</div>
				<div>
					<input type="text" id="user_email" name="user_email"
						placeholder="ex)greencar@gamil.com"
						pattern="[a-zA-Z0-9_+.-]+@([a-zA-Z0-9-]+\.)+[a-zA-Z0-9]{2,4}"
						size="50" maxlength="50"> <input type="button"
						value="이메일을 입력해주세요" id=email_btn onclick="searchPw()">
					<script>
	                    var findPw = "${findPw}";
	                    var email = "${userEmail}";
	            		if(findPw != "" && email !="") {
	            			alert(findPw);
	            		} else if(findPw == "" && email !=""){
	            			alert("해당 이메일로 가입된 회원이 없습니다.이메일 형식이 맞는지 확인해주세요");
	            		} 
	            </script>
				</div>
				<div></div>
			</div>
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