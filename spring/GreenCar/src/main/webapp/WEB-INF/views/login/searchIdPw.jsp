

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
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>
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
	
	<jsp:include page="/resources/jsp/footer.jsp" flush="false" />
	
</html>