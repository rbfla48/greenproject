<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>admin_goods_detail</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/admin_goods_detail.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/footer.css" />">
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
</style>

<!-- jQuery -->
<script src="<c:url value="/webjars/jquery/3.5.1/dist/jquery.min.js" />"></script>

<!-- js 경로 고정 -->
<script> 
const contextPath="${contextPath}";
let nameFlag = false;
let priceFlag = false;
</script>

<script type="text/javascript"
	src="<c:url value="/resources/js/admin_goods_detail.js"/>"
	charset="UTF-8"></script>
</head>

<body>
	<div>
		<!--메뉴바-->
		<header>
			<!--화면 상단 로그아웃, 알림 시작-->
			<div id="top">
				<ul>
					<li id="logout"><a href="#">로그아웃</a></li>
					<li id="alarm"><a href="#">알림</a></li>
				</ul>
			</div>
			<!--화면 상단 로그아웃,알림 끝-->

			<hr id="hl">
			<!--top, nav 분리 줄-->
		</header>
		<nav>
			<!--logo 시작-->
			<div id="logo">
				<img
					src="<spring:url value='/resources/image/logo/gclogo_admin.png'/>"
					alt="greencar_admin_logo">
			</div>
			<!--logo 끝-->

			<!-- 네비게이션 바 시작-->
			<div id="middle">
				<ul>
					<li id="admin_goods"><a href="#">상품관리</a></li>
					<li id="vl">|</li>
					<li id="admin_account"><a href="#">정산관리</a></li>
					<li id="vl">|</li>
					<li id="admin_customer"><a href="#">고객관리</a></li>
					<li id="vl">|</li>
					<li id="admin_write"><a href="#">게시글관리</a></li>
				</ul>
			</div>
			<!--네비게이션 바 끝-->
		</nav>
	</div>
	<!-- -----------------------중앙 시작-------------------------------------------------------------------- -->

	<form id="search_box" class="search_box" name="search_box">
		<input type="search" id="search" class="search" name="goodsNo">
		<button type="submit" id="search_button" class="search_button"
			onclick="fn_search()">상품 검색</button>
	</form>
	<!-- 전체 테두리 시작-->
	<form role="form" id="update" class="update" name="update"
		method="post" action="${contextPath}/admin/goodsUpdate">
		<!-- 상품 넘버 & 코드 -->
		<input type="hidden" name="goodsNo" value="${goodsUpdate.goodsNo}" />
		<input type="hidden" name="goodsCode" value="${goodsUpdate.goodsCode}" />
		<input type="hidden" name="brandCode" value="${goodsUpdate.brandCode}" />

		<div id="wrap" class="wrap">

			<!-- 첫째줄 시작-->
			<div id="info_box" class="box_1">

				<!-- 기본 차 사진 시작-->
				<div id="update_pic_1" class="update_pic_1"></div>
				<!-- 기본 차 사진 끝-->

				<!-- 차 설명 시작-->
				<div id="info_detail" class="info_detail">
					<div id="info_title" class="info_title">
						<input type="text" id="goodsName" class="update_title"
							name="goodsName" value="${goodsUpdate.goodsName}" required>
					</div>
					<div id="title_11" class="title_1">
						차종 : <span id="text_11" class="text_1"> <select
							id="goodsSize" class="update_text" name="goodsSize">
								<option>${goodsUpdate.goodsSize}</option>
								<option>대형</option>
								<option>준대형</option>
								<option>중형</option>
								<option>준중형</option>
								<option>소형</option>
								<option>경형</option>
								<option>스포츠카</option>
						</select>
						</span>
					</div>
					<div id="title_12" class="title_1">
						분류 : <span id="text_12" class="text_1"> <select
							id="goodsType" class="update_text" name="goodsType">
								<option>${goodsUpdate.goodsType}</option>
								<option>SUV</option>
								<option>경차</option>
								<option>세단</option>
								<option>스포츠카</option>
								<option>컨버터블</option>
								<option>쿠페</option>
								<option>픽업밴</option>
								<option>해치백</option>
								<option>기타</option>
						</select></span>
					</div>
					<div id="title_13" class="title_1">
						가격 : <span id="text_13" class="text_1"> <input type="text"
							id="goodsPrice" class="update_text" name="goodsPrice"
							value="${goodsUpdate.goodsPrice}" required> ￦
						</span>
					</div>
					<div id="title_14" class="title_1">
						연비 : <span id="text_14" class="text_1"> <select
							id="goodsEfficient" class="update_text" name="goodsEfficient">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
						</select> 등급
						</span>
					</div>
					<div id="title_15" class="title_1">
						유종 : <span id="text_15" class="text_1"> <select
							id="goodsFuel" class="update_text" name="goodsFuel">
								<option>${goodsUpdate.goodsFuel}</option>
								<option>가솔린</option>
								<option>경유</option>
								<option>디젤</option>
								<option>전기</option>
								<option>휘발유</option>
						</select>
						</span>
					</div>
					<div id="title_16" class="title_1">
						코드 : <span id="goodsCode" class="text_1"> <c:out
								value="${goodsDetail.goodsCode}" />
						</span>
					</div>
				</div>
				<!---- 차 설명 끝 -->

			</div>
			<!-- 첫째줄 끝-->

			<!-- 사진 수정 시작 -->

			<span id="message" class="message">* 600x400 이하의 사진을 첨부해주세요.</span> <input
				type="button" id="update_1" class="update_pic_button"
				name="update_1" value="사진 수정하기">
			<!-- 사진 수정 끝-->

			<!-- 큰 차 사진 시작-->
			<div id="update_pic_3" class="update_pic_3">
				<!-- 사진 수정 시작 -->
			</div>
			<span id="message" class="message">* 1000x1000 이하의 사진을 첨부해주세요.</span>
			<input type="button" id="update_3" class="update_pic_button"
				name="update_3" value="사진 수정하기">
			<!-- 사진 수정 끝-->
			<!-- 큰 차 사진 끝-->

		</div>
		<!-- 전체 테두리 끝-->

		<!-- 수정 버튼 시작-->
		<div id="button" class="button">
			<button type="button" id="button_update" class="button_update"
				name="button_update" onclick="fn_update()">수정하기</button>
			<button type="button" id="button_cancel" class="button_cancel"
				name="button_cancel" onclick="fn_cancel()">취소하기</button>
		</div>
		<!-- 수정 버튼 시작-->
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