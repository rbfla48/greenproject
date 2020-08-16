<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">

<!-- spring security post 전송시 403 문제 패치 -->
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>

<title>join_form</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/memberUpdateView.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/footer.css" />">

<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
</style>
<!-- 다음 지도 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- jQuery -->
<script src="<c:url value="/webjars/jquery/3.5.1/dist/jquery.min.js" />"></script>
<!-- js 경로 고정 -->
<script> 
const contextPath="${contextPath}";
let nickFlag = false;
</script>

<script type="text/javascript" src="<c:url value="/resources/js/join_form.js"/>" charset="UTF-8"></script>

</head>

<body>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

	<jsp:include page="/resources/jsp/menu.jsp" flush="false" />
	
<!--마이페이지  시작-->	
	<script type="text/javascript">
		$(document).ready(function(){
		
			$("#submit").on("click", function(){
				if($("#userPw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPw").focus();
					return false;
				}	
			});
		})
	</script>	
<!--마이 페이지 박스 부분-->
    
<div class="wrap"><!--마이페이지 전체영역-->
    <aside class="mypage_category">
				<ul>
					마이페이지
				</ul>
				<ul>
					<a href="/mypage/memberUpdateView">회원정보 수정</a>
				</ul>
				<ul>
					<a href="/mypage/QnAList">1:1 문의내역</a>
					<span id="new">new</span>
				</ul>
				<ul>
					<a href="/mypage/mypageMywrite">내가쓴 글 보기</a>
					<span id="how_much"></span>
				</ul>
				<ul>
					<a href="/mypage/memberDeleteView">회원탈퇴</a>
				</ul>
	</aside>
	

	<!-- -----------------------중앙 시작-------------------------------------------------------------------- -->
	<form role="form" id="memberUpadte" class="join" name="memberUpadte" method="POST"
		action="/mypage/memberUpdate">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		
		<!-- 테두리 시작 -->
		<div id="updatewrap" class="updatewrap">
			<!-- 표 시작-->
			<h2>회원정보 수정</h2>
			<table id="join_form" class="join_form">

				<!-- 이메일 시작-->
				<tr>
					<td class="td1"><span class="required_1"></span></td>
					<td class="td2">이메일</td>
					<td class="td2"><input type="email" id="userEmail"
						class="member_field" name="userEmail" size="35" maxlength="50" value="${user.userEmail}"
						 readonly="readonly"></td>
					<td class="td2"></td>
				</tr>
				<!-- 이메일 끝-->
				<!-- 비밀번호 시작 (비활성화)-->
				<tr>
					<td class="td1"><span class="required_1">*</span></td>
					<td class="td2">비밀번호</td>
					<td class="td2">
					<input type="password" value="${user.userPw}" class="member_field" readonly="readonly"></td>
					<td class="td2"></td>
				</tr>
				<!-- 비밀번호 끝-->

				<tr>
					<td class="td1"></td>
					<td class="td2"></td>
					<td class="td3"><span class="required_2"></span></td>
					<td class="td2"></td>
				</tr>

				<!-- 재확인 시작(비활성화) -->
				<tr>
					<td class="td1"><span class="required_1"></span></td>
					<td class="td2">비밀번호 재확인</td>
					<td class="td2">
					<input type="password" value="${user.userPw}" class="member_field" readonly="readonly">
					</td>
					<td class="td2"></td>
				</tr>
				<!-- 재확인 끝-->


				<!-- 닉네임 시작 -->
				<!-- 요청한 양식에 맟추라는 메세지 반복=> 중복점검 삭제 -->
				<tr>
					<td class="td1"><span class="required_1">*</span></td>
					<td class="td2">닉네임</td>
					<td class="td2"><input type="text" id="userNick"
						class="member_field" name="userNick" maxlength="50" size="35"></td>
					</td>
				</tr>
				<!-- 닉네임 끝-->

				<tr>
					<td class="td1"></td>
					<td class="td2"></td>
					<td class="td3"><span class="required_2">* 영문/한글 조합하여
							2자 이상 입력.</span></td>
					<td class="td2"></td>
				</tr>

				<!-- 생년월일 시작 (비활성화)-->
				<tr>
					<td class="td1"></td>
					<td class="td2">생년월일</td>
					<td class="td2"><select id="userBirthYY" class="member_birth"
						name="userBirthYY">
							<%for(int i=2020; i>=1900; i--){ %>
							<option value="<%=i +"년" %>"><%=i + "년" %></option>
							<%} %>
					</select> <select id="userBirthMM" class="member_birth" name="userBirthMM">
							<%for(int i=1; i<=12; i++){ %>
							<option value="<%=i +"월" %>"><%=i +"월" %></option>
							<%} %>
					</select> <select id="userBirthDD" class="member_birth" name="userBirthDD">
							<%for(int i=1; i<=31; i++){ %>
							<option value="<%=i+"일" %>"><%=i+"일" %></option>
							<%} %>
					</select></td>
					<td class="td2"></td>
				</tr>
				<!-- 생년월일 끝-->

				<!-- 연락처 시작 -->
				<tr>
					<td class="td1"></td>
					<td class="td2">연락처</td>
					<td class="td2"><input type="text" id="userPh"
						class="member_field" name="userPh" maxlength="13" size="35" 
						readonly="readonly" value="0${user.userPh}"></td>
					<td class="td2"></td>
				</tr>
				<!-- 연락처 끝-->

				<tr>
					<td class="td1"></td>
					<td class="td2"></td>
					<td class="td3"><span class="required_2">* - * 제외하고 입력.</span></td>
					<td class="td2"></td>
				</tr>

				<!-- 기본주소 시작 -->
				<tr>
					<td class="td1"></td>
					<td class="td2">기본주소</td>
					<td class="td2"><input type="text" id="userAddress"
						class="member_field" name="userAddress" maxlength="200" size="35"
						pattern="[\w | \W | 가-힣 | / | - | (  |  ) | ,]{2,200}" 
						value="${user.userAddress}"></td>
					<td class="td2"><input type="button" id="address_button"
						class="button_1" name="address_button" value="주소 검색하기"
						onclick="searchPost()"></td>
				</tr>
				<!-- 기본 주소 끝-->

				<!-- 상세주소 시작 -->
				<tr>
					<td class="td1"></td>
					<td class="td2">상세주소</td>
					<td class="td2"><input type="text" id="userAddressDetail"
						class="member_field" name="userAddressDetail" maxlength="100"
						size="35" pattern="[\w | \W | 가-힣 | / | - | (  |  ) | ,]{2,200}"
						value="${user.userAddressDetail}"></td>
					<td class="td2"></td>
				</tr>
				<!-- 상세주소 끝-->
			</table>
			<!-- 표 끝 -->

		

		</div>
		<!-- 테두리 끝-->

		<!-- 정보수정 버튼 시작-->
		<div id="join_form_button" class="button">
			<!-- 수정하기 -->
			<button type="submit" id="join_button" class="button_2" name="join_button">수정하기</button>
			<!--수정하기 끝-->
		</div>
		<!-- POST방식전송 토큰추가(403Error방지) -->
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	</form>
	</div>
	<!-- ----------------------------중앙 끝 ---------------------------------------------------------------------------------------->

	<jsp:include page="/resources/jsp/footer.jsp" flush="false" />
	
</body>

</html>