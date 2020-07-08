<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${userId eq null}">
        <a href="https://kauth.kakao.com/oauth/authorize
            ?client_id=b5f85af25d1bdf961d4f2016bafe3c6e
            &redirect_uri=http://localhost:8000/login
            &response_type=code">
            <img src="./img/kakao_account_login_btn_large_narrow_ov.png">
        </a>
    </c:if>
    <c:if test="${userId ne null}">
    </c:if>
</body>
</html>