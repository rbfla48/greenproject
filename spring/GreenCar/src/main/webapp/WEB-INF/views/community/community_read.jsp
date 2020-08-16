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
    <title>커뮤페이지</title>
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
            <h3> 커뮤니티 </h3>
            
            <form role="form" action='/community/update?commuNo=<c:out value="${commu.commuNo}"/>' method="GET">
            
        	<div><!--게시글번호-->
                <input type="text" value="<c:out value="${commu.commuNo}" />" name="commuNo" readonly="readonly">
            </div> 
            <div class="notice_write_head"><!--제목-->
            	<!-- 시간되면 제목옆에 댓글수 카운트 -->
                <input type="text" value="<c:out value="${commu.commuTitle}" />"name="commuTitle" readonly="readonly">
            </div>    
            <div class="notice_write_text"><!--본문-->
                <textarea name="commuText" readonly="readonly"><c:out value="${commu.commuText}" /></textarea>
            </div>
            
            <div class="notice_writer"><!--작성자(추후 로그인정보 얻어서 자동전송)-->
                <input type="text" value="<c:out value="${commu.commuWriter }" />" name="commuWriter" readonly="readonly">
            </div> 
        		<input type="submit" value="수정하기">
        	</form>
            
            
            
            <form role="form" action='/community/delete?commuNo=<c:out value="${commu.commuNo }"/>' method="POST">
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
        		<input type="submit" value="삭제하기">
        	</form>
            
            <form role="form" action="/community/community_main" method="GET">
        		<input type="submit" value="목록으로">
        	</form>
            
            <div id="comment"><!-- 댓글영역 -->
            	<c:forEach items="${comment}" var="comment">           	
		          <form action="/community/delComment?commNo=<c:out value="${comment.commNo}"/>" method="POST">
		          <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		            		<input type="hidden" value="${comment.commuNo}">
	            		<li>
	            		<p>
		            		<c:out value="${comment.commWriter}"/>
		            		<c:out value="${comment.commText}"/>
		            		<fmt:formatDate value="${comment.commDate}" pattern="yyyy-MM-dd" />
	            		</p>
		            			<button>삭제</button>
	            		</li>
		            		</form>            		
				</c:forEach>
			</div><!-- 댓글영역 END-->
			


        	
        	<form action="/community/reply?commuNo=<c:out value="${commu.commuNo}"/>" method="POST">
        		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<div id="regComment"><!-- 댓글작성영역 -->
					<input type="text" name="commWriter" value="테스트유저">
					<textarea name="commText"></textarea>
					<button type="submit">댓글등록</button>
				</div>	
			</form>
        </div>
    </div>

    <!-------------------------------footer시작------------------------------->
    <jsp:include page="/resources/jsp/footer.jsp" flush="false" />
    </body>
</html>