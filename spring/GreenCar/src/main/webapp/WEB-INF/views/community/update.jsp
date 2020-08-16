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
    <title>수정하기</title>
    <link rel="stylesheet" href="/resources/css/menu.css" /><!--상단header-->
    <link rel="stylesheet" href="/resources/css/admin_notice_write.css" />
    <link rel="stylesheet" href="/resources/css/footer.css" /><!--하단footer-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
</head>
<body>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>

    <!-------------------------------메뉴바END-------------------------------->
    <div class="wrap"><!--전체영역-->
        <div class="notice_write"><!--작성창 영역-->
            <h3> 게시글 수정</h3>
        <form role="form" action="/community/update" method="POST">
        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
        	<div><!--게시글번호-->
                <input type="text" value="<c:out value="${commu.commuNo}" />" name="commuNo" readonly="readonly">
            </div> 
            <div class="notice_write_head"><!--제목-->
                <input type="text" value="<c:out value="${commu.commuTitle}" />"name="commuTitle">
            </div>    
            <div class="notice_write_text"><!--본문-->
                <textarea name="commuText">
                	<c:out value="${commu.commuText}" />
                </textarea>
            </div>
            <div class="notice_writer"><!--작성자(추후 로그인정보 얻어서 자동전송)-->
                <input type="text" value="<c:out value="${commu.commuWriter}" />" name="commuWriter">
            </div> 

        		<input type="submit" value="수정등록">
        		
			</form>
            
            <form role="form" action="/community/community_main" method="GET">
        		<input type="submit" value="목록으로">
        	</form>
        
        </div>
    </div>

    <!-------------------------------footer시작------------------------------->
    
    <jsp:include page="/resources/jsp/footer.jsp" flush="false" />
    
    </body>
</html>