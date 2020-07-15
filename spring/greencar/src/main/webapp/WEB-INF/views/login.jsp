<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GREENCAR_LOGIN</title>
    <link rel="stylesheet" href="/css/login.css" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
    <div id="wrap"><!--전체페이지영역-->
        <header id="header"><!-- 상단 로고영역 -->
            <img src="../image/logo/gclogo.png">
        </header><!-- 상단 로고영역 END-->
        
        <section id="section_background"><!--로그인페이지 영역-->
            
            <div id="section_loginbox"><!-- 로그인컨텐츠영역 -->
                
                <div id="login_top"><!--상단 LOGIN텍스트-->
                    <span class="material-icons">double_arrow</span>LOGIN
                </div>
                
                <form name="login" method="post" action=""><!-- id,pw 인자전송 -->
	                <div><!--id,pw입력영역-->
	                    <input type="text" name="id" id="id_box">
	                    <input type="password" name="pw" id="pw_box">
	                </div><!--id,pw입력영역END-->
                </form>
                
                <div id="login_mid"><!--아이디,비밀번호찾기 영역-->
                    <a href="such_idpw">아이디|비밀번호 찾기</a>
                    <a href="join"><span>회원가입</span></a>
                </div><!--아이디,비밀번호찾기 영역END-->
                
             </div><!-- 로그인컨텐츠영역END -->
             
                <div id="login_bottom">
                    <div>
                        <input type="checkbox" name="save_id" id="save_id">아이디저장
                    </div>
                    <div>
                        <a href="main"><img src="../image/btn_icon/login_btn.png"></a>
                    </div>
                </div>
        </section><!--로그인페이지 영역END-->
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
    </div>
</body>
</html>