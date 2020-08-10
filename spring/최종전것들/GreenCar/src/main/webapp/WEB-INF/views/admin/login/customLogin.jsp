<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <link rel="stylesheet" href="/resources/css/login.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
</head>
<body>
	
	
    <div id="wrap"><!--페이지영역-->
        
        <header id="header">
            <img src="/resources/image/logo/gclogo.png">
        </header>
        <section id="section_background"><!--배경-->
            
            <div id="section_loginbox"><!--로그인영역 시작-->
            
            	<!-- 기본값 /login 사용(지정경로아님), 전송방식은 반드시 POST사용-->
                <form method="POST" action="/login">
                
                <div id="login_top"><!--상단 로그인텍스트-->
                    <span class="material-icons">double_arrow</span>LOGIN
                </div>
                
                <div><!--id,pw입력영역-->
                    <input type="text" name="username" id="id_box">                 
                    <input type="password" name="password" id="pw_box">
                    <h5 class="msg"><c:out value="${error }"/></h5>
                    <h5 class="msg"><c:out value="${logout }"/></h5>
                </div>
                
                <div id="login_mid"><!--아이디,비밀번호찾기 영역-->
                    <a href="such_idpw">아이디|비밀번호 찾기</a>
                    <a href="join"><span>회원가입</span></a>
                </div>
                <div id="login_bottom">
                    <div>
                        <input type="checkbox" name="save_id" id="save_id">아이디저장
                    </div>
                    <div>
                    <button>로그인</button>
                    <!-- <a href="main"><img src="/resources/image/btn_icon/login_btn.png"></a> -->
                    </div>
                </div>
                	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
    			</form>
    			</div><!--로그인영역 END-->
        </section>
    </div>
        <!--하단영역-->
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
</body>
</html>