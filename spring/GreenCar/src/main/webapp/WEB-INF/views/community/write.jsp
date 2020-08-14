<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>등록하기</title>
    <link rel="stylesheet" href="/resources/css/menu.css" /><!--상단header-->
    <link rel="stylesheet" href="/resources/css/admin_notice_write.css" />
    <link rel="stylesheet" href="/resources/css/footer.css" /><!--하단footer-->
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
                    <img src="/resources/image/logo/gclogo_.png" alt="greencar_logo">
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
    <div class="wrap"><!--전체영역-->
        <div class="notice_write"><!--작성창 영역-->
            <h3> 공지사항 등록</h3>
        <form role="form" action="/admin/notice/write" method="POST">
            <div class="notice_write_head"><!--제목작성란-->
                <input type="text" value="제목을 입력하세요" name="commuTitle">
            </div>    
            <div class="notice_write_text"><!--본문작성창-->
                <textarea name="commuText">본문입력</textarea>
            </div>
            <div class="notice_writer"><!--작성자(추후 로그인정보 얻어서 자동전송)-->
                <input type="text" value="작성자" name="commuWriter">
            </div>   
            <input type="submit" value="등록하기">
            <input type="reset" value="초기화">
        </form>
        </div>
    </div>

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
    </body>
</html>