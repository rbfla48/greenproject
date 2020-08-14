<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>tiles layout header</title>
</head>
<body>

	<ul class="navbar-nav">
		
		<li class="nav-item active">
			<a class="nav-link" href="${rootPath}/">Home</a>
		</li>
		
		<li class="nav-item ml-2">
			<!-- <a class="nav-link" href="link1.do">Link</a> -->
			
				<!-- 로그아웃 상태 -->
				<c:if test="${empty pageContext.request.userPrincipal.name}">
					<a class="nav-link" href="${rootPath}/login">로그인</a>
				</c:if>
				
				<!-- 로그인 상태 -->
				<c:if test="${not empty pageContext.request.userPrincipal.name}">
					&nbsp;
					<span style="color:white">${pageContext.request.userPrincipal.name}님 로그인 중입니다</span>
					&nbsp;					
					<input type="button" class="btn btn-sm btn-light mt-2" 
						   value="로그아웃" 
						   onclick="location.href='${rootPath}/logoutProc'" />	
				</c:if>
				
		</li>
		
		<li class="nav-item ml-3">
			<!-- 관리자 로그인일 경우 -->
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a class="nav-link" href="${rootPath}/admin/members_all_view.do">전체 회원 목록</a>
			</sec:authorize> 
		</li>
		
		<li class="nav-item ml-3">
			<!-- 회원 로그인일 경우 -->
			<sec:authorize access="hasRole('ROLE_USER')">
				<a class="nav-link"
					href="${rootPath}/member/member_view.do?memberId=${pageContext.request.userPrincipal.name}">
					회원정보 보기
				</a>
			</sec:authorize> 
		</li>
		
		<li class="nav-item ml-3">
			<!-- 회원 로그인일 경우 -->
			<sec:authorize access="hasRole('ROLE_USER')">
			<%-- <sec:authorize access="isAuthenticated()"> --%>
				<a class="nav-link"
					href="${rootPath}/member/member_update.do?memberId=${pageContext.request.userPrincipal.name}">
					회원정보 수정
				</a>
			</sec:authorize> 
		</li>
		
		<li class="nav-item ml-3">
			<!-- 회원 로그인일 경우 -->
			<sec:authorize access="isAuthenticated()">
				<a class="nav-link"
					href="${rootPath}/member/member_delete.do?memberId=${pageContext.request.userPrincipal.name}">
					회원 탈퇴
				</a>
			</sec:authorize> 
		</li>
		
		
	</ul>

</body>
</html>