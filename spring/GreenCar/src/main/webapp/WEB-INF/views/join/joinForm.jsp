<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>join_form</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/join_form.css" />">
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
let emailFlag = false;
let nickFlag = false;
let passFlag = false;
</script>

<script type="text/javascript"
	src="<c:url value="/resources/js/join_form.js"/>" charset="UTF-8"></script>

</head>

<body>
	<header>
		<!--화면 상단 로그인, 회원가입 시작-->
		<div id="top">
			<ul>
				<li id="login"><a href="#">로그인</a></li>
				<li id="join_form"><a href="#">회원가입</a></li>
			</ul>
		</div>
		<!--화면 상단 로그인, 회원가입 끝-->
		<hr id="hl">
		<!--top, nav 분리 줄-->
	</header>

	<nav>
		<!-- 네비게이션 바 시작-->
		<div id="middle">
			<ul>
				<li id="notice"><a href="#">GREEN CAR</a></li>
			</ul>
		</div>
		<!--네비게이션 바 끝-->
	</nav>

	<!-- -----------------------중앙 시작-------------------------------------------------------------------- -->
	<form role="form" id="join" class="join" name="join" method="post"
		action="${contextPath}/join/joinProc">
		<!-- 테두리 시작 -->
		<div id="wrap" class="wrap">
			<!-- 표 시작-->
			<table id="join_form" class="join_form">

				<!-- 이메일 시작-->
				<tr>
					<td class="td1"><span class="required_1">*</span></td>
					<td class="td2">이메일</td>
					<td class="td2"><input type="email" id="userEmail"
						class="member_field" name="userEmail" size="35" maxlength="50"
						pattern="[a-zA-Z0-9_+.-]+@([a-zA-Z0-9-]+\.)+[a-zA-Z0-9]{2,4}"
						required></td>
					<td class="td2"><button id="emailCheck" class="button_1"
							name="emailCheck" value="N" onclick="fn_emailCheck()">중복
							확인하기</button></td>
				</tr>
				<!-- 이메일 끝-->
				<!-- 비밀번호 시작 -->
				<tr>
					<td class="td1"><span class="required_1">*</span></td>
					<td class="td2">비밀번호</td>
					<td class="td2"><input type="password" id="userPassword"
						class="member_field" name="userPassword" size="35" maxlength="20"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,20}" required></td>
					<td class="td2"></td>
				</tr>
				<!-- 비밀번호 끝-->

				<tr>
					<td class="td1"></td>
					<td class="td2"></td>
					<td class="td3"><span class="required_2">*
							영문대소문자/특수문자/숫자 조합하여 8~20자로 입력.</span></td>
					<td class="td2"></td>
				</tr>

				<!-- 재확인 시작 -->
				<tr>
					<td class="td1"><span class="required_1">*</span></td>
					<td class="td2">비밀번호 재확인</td>
					<td class="td2"><input type="password" id="userPasswordRe"
						class="member_field" name="userPasswordRe" maxlength="20"
						size="35" required></td>
					<td class="td2"></td>
				</tr>
				<!-- 재확인 끝-->


				<!-- 닉네임 시작 -->
				<tr>
					<td class="td1"><span class="required_1">*</span></td>
					<td class="td2">닉네임</td>
					<td class="td2"><input type="text" id="userNick"
						class="member_field" name="userNick" maxlength="50" size="35"
						pattern="[가-힣]{2,25}|[a-zA-Z]{2,50}|\s[a-zA-Z]{2,50}" required></td>
					<td class="td2"><button id="nickCheck" class="button_1"
							name="nickCheck" value="N" onclick="fn_nickCheck()">중복
							확인하기</button></td>
				</tr>
				<!-- 닉네임 끝-->

				<tr>
					<td class="td1"></td>
					<td class="td2"></td>
					<td class="td3"><span class="required_2">* 영문/한글 조합하여
							2자 이상 입력.</span></td>
					<td class="td2"></td>
				</tr>

				<!-- 생년월일 시작 -->
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
					<td class="td2"><input type="tel" id="userPhone"
						class="member_field" name="userPhone" maxlength="13" size="35"></td>
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
						pattern="[\w | \W | 가-힣 | / | - | (  |  ) | ,]{2,200}"></td>
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
						size="35" pattern="[\w | \W | 가-힣 | / | - | (  |  ) | ,]{2,200}"></td>
					<td class="td2"></td>
				</tr>
				<!-- 상세주소 끝-->
			</table>
			<!-- 표 끝 -->

			<!-- 약관 박스 시작 -->
			<div id="agree_box" class="argree_box">
				<p>제 1 장 총 칙 제 1 조 (목적) 이 약관은 {GreenCar}(이하 "사이트"라 합니다)에서 제공하는
					인터넷서비스(이하 "서비스"라 합니다)의 이용 조건 및 절차에 관한 기본적인 사항을 규정함을 목적으로 합니다. 제 2 조
					(약관의 효력 및 변경) ① 이 약관은 서비스 화면이나 기타의 방법으로 이용고객에게 공지함으로써 효력을 발생합니다. ②
					사이트는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을
					발생합니다. 제 3 조 (용어의 정의) 이 약관에서 사용하는 용어의 정의는 다음과 같습니다. ① 회원 : 사이트와 서비스
					이용계약을 체결하거나 이용자 아이디(ID)를 부여받은 개인 또는 단체를 말합니다. ② 신청자 : 회원가입을 신청하는 개인
					또는 단체를 말합니다. ③ 아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 사이트가 승인하는 문자와
					숫자의 조합을 말합니다. ④ 비밀번호 : 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고, 회원 자신의 비밀을
					보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다. ⑤ 해지 : 사이트 또는 회원이 서비스 이용계약을 취소하는
					것을 말합니다. 제 2 장 서비스 이용계약 제 4 조 (이용계약의 성립) ① 이용약관 하단의 동의 버튼을 누르면 이
					약관에 동의하는 것으로 간주됩니다. ② 이용계약은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 사이트가
					승낙함으로써 성립합니다. 제 5 조 (이용신청) ① 신청자가 본 서비스를 이용하기 위해서는 사이트 소정의 가입신청
					양식에서 요구하는 이용자 정보를 기록하여 제출해야 합니다. ② 가입신청 양식에 기재하는 모든 이용자 정보는 모두 실제
					데이터인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스의 제한을
					받을 수 있습니다. 제 6 조 (이용신청의 승낙) ① 사이트는 신청자에 대하여 제2항, 제3항의 경우를 예외로 하여
					서비스 이용신청을 승낙합니다. ② 사이트는 다음에 해당하는 경우에 그 신청에 대한 승낙 제한사유가 해소될 때까지 승낙을
					유보할 수 있습니다. 가. 서비스 관련 설비에 여유가 없는 경우 나. 기술상 지장이 있는 경우 다. 기타 사이트가
					필요하다고 인정되는 경우 ③ 사이트는 신청자가 다음에 해당하는 경우에는 승낙을 거부할 수 있습니다. 가. 다른
					개인(사이트)의 명의를 사용하여 신청한 경우 나. 이용자 정보를 허위로 기재하여 신청한 경우 다. 사회의 안녕질서 또는
					미풍양속을 저해할 목적으로 신청한 경우 라. 기타 사이트 소정의 이용신청요건을 충족하지 못하는 경우 제 7 조
					(이용자정보의 변경) 회원은 이용 신청시에 기재했던 회원정보가 변경되었을 경우에는, 온라인으로 수정하여야 하며 변경하지
					않음으로 인하여 발생되는 모든 문제의 책임은 회원에게 있습니다.</p>
			</div>
			<!-- 약관 박스 끝-->

			<!-- 동의 시작-->
			<div id="agree_check" class="agree_check">
				<input type="checkbox" id="agree_1" class="agree" name="agree_1"
					required> <label for="agree_1"><span>약관동의</span></label>
			</div>
			<!-- 동의 끝 -->

		</div>
		<!-- 테두리 끝-->

		<!-- 가입 버튼 시작-->
		<div id="join_form_button" class="button">
			<!-- 가입하기 -->
			<button type="button" id="join_button" class="button_2"
				name="join_button" onclick="fn_submit()">가입하기</button>
			<!--가입하기 끝-->

		</div>
	</form>
	<!-- ----------------------------중앙 끝 ---------------------------------------------------------------------------------------->

	<!--하단 회사정보영역-->
	<footer id="footer">
		<!--상단회사명-->
		<br>
		<p>
			<b>GREENCAR</b>
		</p>
		<hr>
		<!--하단사업자정보-->
		<p>사업자 김붕붕 | 사업자번호 211-31-64480 | 사업자 주소 : 서울특별시 관악구 청룡중앙길 42-1 |
			02 - 1234 - 5678</p>
		<p>COPYRIGHT © GREEN COMPANY. ALL RIGHTS RESERVED.</p>
		<!--하단영역end-->
	</footer>
</body>

</html>