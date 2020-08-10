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
    <title>공지사항</title>
    <link rel="stylesheet" href="/resources/css/menu.css" /><!--상단header-->
    <link rel="stylesheet" href="/resources/css/admin_notice.css" />
    <link rel="stylesheet" href="/resources/css/footer.css" /><!--하단footer-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
<meta charset="UTF-8">
<title>greencar_admin notice</title>
</head>
<body>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/resources/js/pagingFunction.js" type="text/javascript"></script>
<script src="/resources/js/searchFunction.js" type="text/javascript"></script>
 <div><!--메뉴바-->
      <header>
        <!--화면 상단 마이페이지, 장바구니 시작-->
        <div id="top">
        	<!-- 로그인하지 않았을때 -->
        	<c:if test="${member == null }">
	            <ul>
	                <li id="mypage"><a href="/login/member">로그인</a></li>
	                <li id="cart"><a href="/join/joinForm">회원가입</a></li>
	            </ul>
            </c:if>
            <!-- 로그인 하였을때 -->
            <c:if test="${member != null }">
	            <ul>
	                <li id="mypage"><a href="login/logout">로그아웃</a></li>
	                <li id="cart"><a href="#">마이페이지</a></li>
	            </ul>
            </c:if>
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
                    <li id="notice"> <a href="/notice/noticeList">공지사항</a></li>
                    <li id="vl">|</li>
                    <li id="products"> <a href="/goods/goodsList">상품페이지</a></li>
                    <li id="vl">|</li>
                    <li id="community" > <a href="#">커뮤니티</a></li>
                    <li id="vl">|</li>
                    <li id="newsandissue" > <a href="/news/newsMain?page=1">뉴스&이슈</a></li>
                    <li id="vl">|</li>
                    <li id="user_advice" > <a href="#">고객지원</a></li>
                    
                </ul>
            </div>
            <!--네비게이션 바 끝-->
        </nav>
    <!--메뉴바END-->
    </div>
    <!-------------------------------메뉴바END-------------------------------->
    <div class="wrap">
        <div class="notice_borad_wrap"><!-- 게시판영역 -->
        <h3>공지사항</h3>
        <table class="notice_borad">
            <tr class="tbl_hd">
                <th class="tbl_txt_num">No.</th>
                <th class="tbl_txt_head">제목</th>
                <th class="tbl_txt_user">작성자</t.h>
                <th class="tbl_txt_date">작성일</th>
                <th class="tbl_txt_view">조회수</th>
            </tr>
            
            <c:forEach items="${list }" var="notice">
	            <tr>
	            	<td class="tbl_txt_num"><c:out value="${notice.noticeNo }" /></td>
	            	<td class="tbl_txt_head">
	            	<a href='/notice/get?noticeNo=<c:out value="${notice.noticeNo }"/>'>
	            	<c:out value="${notice.noticeTitle }" /></a>
	            	</td>
	            	<td class="tbl_txt_user"><c:out value="${notice.noticeWriter }" /></td>
	            	<td class="tbl_txt_date"><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.uploadDate }" /></td>
	            	<td class="tbl_txt_view"><c:out value="${notice.noticeView }" /></td>
	            </tr>            
            </c:forEach>
        </table>
     </div>
     
     
        	<!-- 검색기능 -->
        	<div class="notice_search">
	        	<form id="searchForm" action="/notice/noticeList" method="GET">
	        		<select class="notice_search_select" name="type">
	        			<option value=""<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--전체--</option>
	        			<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
	        			<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
	        			<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
	        			<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목or내용</option>
	        		</select>
	        		<input type="text" class="notice_search_text" name="keyword" value="<c:out value="${pageMaker.cri.keyword }"/>"/>
	        		
	        		<!-- 검색후 페이징처리 -->
	        		<input type="hidden" name="pageNum" value="<c:out value="${pageMaker.cri.pageNum }"/>">
	        		<input type="hidden" name="amount" value="<c:out value="${pageMaker.cri.amount }"/>">
	        		<button class="notice_search_btn">검색</button>
	        	</form>
	        	
	        	<!-- 검색이동시 넘겨줄 파라미터 -->
	        	<form id="actionForm" action="/notice/noticeList" method="GET">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
	        		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	        		<input type="hidden" name="type" value="<c:out value="${pageMaker.cri.type }"/>">
	        		<input type="hidden" name="keyword" value="<c:out value="${pageMaker.cri.keyword }"/>">
	        	</form>
	        	
			</div>
			
			
			<!-- 페이징 -->
			<div class="pagenate">
				<div class="page_prev"><!-- 이전페이지이동 -->
					<c:if test="${pageMaker.prev}">
					    <a href="${action}?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount }&type=${pageMaker.cri.type }&keyword=${pageMaker.cri.keyword }">이전으로</a>
					</c:if>
				</div>
				
				<div class="page_num"><!-- 페이지번호 -->
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" step="1" var="num">
					    <li class="paginate_btn" value="${pageMaker.cri.pageNum == num ? 'active':''} ">
					    	<a href="${action}?pageNum=${num }">${num }</a>
					    </li>	  
					</c:forEach>
				</div>
				
				<div class="page_next"><!-- 다음페이지 이동 -->
					<c:if test="${pageMaker.next}"><!-- 다음페이지 이동 -->
					    <a href="${action}?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount }&type=${pageMaker.cri.type }&keyword=${pageMaker.cri.keyword }">다음으로</a>
					</c:if>
				</div>
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