<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>처리 결과</title>
<script>
	alert("${msg}");	
</script>
</head>
<body>
    <!-- 이동 페이지 추가 -->
	<c:if test="${not empty move_page}">
	    <script>
		    location.href="${pageContext.request.contextPath}${move_page}";  
	    </script>
	</c:if>
</body>
</html>