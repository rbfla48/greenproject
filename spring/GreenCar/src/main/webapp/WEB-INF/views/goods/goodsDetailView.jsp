<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>goods_detail</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/goods_detail.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/footer.css" />">

<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
</style>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body>
	<div>
		<!--메뉴바-->
		<header>
			<!--화면 상단 마이페이지, 장바구니 시작-->
			<div id="top">
				<ul>
					<li id="mypage"><a href="#">마이페이지</a></li>
					<li id="cart"><a href="#">장바구니</a></li>
				</ul>
			</div>
			<!--화면 상단 마이페이지, 장바구니 끝-->
			<hr id="hl">
			<!--top, nav 분리 줄-->
		</header>
		<nav>
			<!--logo 시작-->
			<div id="logo">
				<img src="<spring:url value='/resources/image/logo/gclogo_.png'/>"
					alt="greencar_logo">
			</div>
			<!--logo 끝-->
			<!-- 네비게이션 바 시작-->
			<div id="middle">
				<ul>
					<li id="notice"><a href="#">공지사항</a></li>
					<li id="vl">|</li>
					<li id="goodss"><a href="#">상품페이지</a></li>
					<li id="vl">|</li>
					<li id="community"><a href="#">커뮤니티</a></li>
					<li id="vl">|</li>
					<li id="newsandissue"><a href="#">뉴스&이슈</a></li>
					<li id="vl">|</li>
					<li id="user_advice"><a href="#">고객지원</a></li>
				</ul>
			</div>
			<!--네비게이션 바 끝-->
		</nav>
	</div>
	<!--메뉴바END-->
	<!-- -----------------------중앙 시작-------------------------------------------------------------------- -->

	<!-- 전체 테두리 시작-->
	<div id="wrap" class="wrap">

		<!-- 첫째줄 시작-->
		<div id="info_box" class="box_1">

			<!-- 기본 차 사진 시작-->
			<div id="picture_main" class="picture_1">
				<img
					src="<spring:url value='/resources/image/goodsMain/${goodsDetail.goodsNo}.png'/>" />
			</div>
			<!-- 기본 차 사진 끝-->

			<!-- 차 설명 시작-->
			<div id="info_detail" class="info_detail">
				<div id="info_title" class="info_title">
					<c:out value="${goodsDetail.goodsName}" />
				</div>
				<div id="title_11" class="title_1">
					차종 : <span id="text_11" class="text_1"> <c:out
							value="${goodsDetail.goodsSize}" /></span>
				</div>
				<div id="title_12" class="title_1">
					분류 : <span id="text_12" class="text_1"> <c:out
							value="${goodsDetail.goodsType}" /></span>
				</div>
				<div id="title_13" class="title_1">
					가격 : <span id="text_13" class="text_1"> <c:out
							value="${goodsDetail.goodsPrice}" /></span>
				</div>
				<div id="title_14" class="title_1">
					연비 : <span id="text_14" class="text_1"> <c:out
							value="${goodsDetail.goodsEfficient}" /></span>
				</div>
				<div id="title_15" class="title_1">
					유종 : <span id="text_15" class="text_1"> <c:out
							value="${goodsDetail.goodsFuel}" /></span>
				</div>
				<div id="title_16" class="title_1">
					코드 : <span id="text_16" class="text_1"> <c:out
							value="${goodsDetail.goodsCode}" /></span>
				</div>
			</div>
			<!---- 차 설명 끝 -->
		</div>
		<!-- 첫째줄 끝-->

		<!-- 큰 차 사진 시작-->
		<div id="picture_detail" class="picture_3">
			<img
				src="<spring:url value='/resources/image/goodsIn/${goodsDetail.goodsNo}.jpg'/>" />
		</div>
		<!-- 큰 차 사진 시작-->

		<!-- 옵션 전체 시작-->
		<div id="option_box" class="box_2">
			<!-- 옵션 제목 시작-->
			<div id="option_title" class="option_title">
				<span class="material-icons"> double_arrow </span> 옵션 선택
			</div>
			<!-- 옵션 제목 끝 -->

			<!-- 색상 선택 시작-->
			<div id="option_color" class="option_color">
				색상 선택
				<!-- 라디오 시작-->
				<div>
					<input type="radio" id="color_1" class="color" name="option_color">
					<label for="color_1" class="color_tag">검정</label>
					<div id="check_1" class="check" name="check_1"></div>
				</div>
				<div>
					<input type="radio" id="color_2" class="color" name="option_color">
					<label for="color_2" class="color_tag">회색</label>
					<div id="check_2" class="check" name="check_2"></div>
				</div>
				<div>
					<input type="radio" id="color_3" class="color" name="option_color">
					<label for="color_3" class="color_tag">사랑</label>
					<div id="check_3" class="check" name="check_3"></div>
				</div>
				<!-- 라디오 끝-->
			</div>
			<!-- 색상 선택 끝-->

			<!-- 옵션 전체 박스 시작-->
			<div id="option_select" class="box_3" name="option_select">
			
				<!-- 옵션 1번 박스 시작-->
				<div id="option_select_1" class="option_select_n"
					name="option_select_1">

					<!-- 옵션 1번 박스 제목 시작-->
					<div id="option_1_title" class="option_n_title"
						name="option_1_title"><c:out
							value="${optionDetail.optionName}" /></div>
					<!-- 옵션 1번 박스 제목 끝-->

					<!-- 옵션 1번 박스 내용 시작-->
					<div id="option_1_text" class="option_n_text" name="option_1_text">
						<div id="title_1_11" class="title_2" name="title_1_11">
							타이어 : <span id="text_1_11" class="text_2" name="text_1_11"><c:out
							value="${optionDetail.optionTire}" /></span>
						</div>
						<div id="title_1_12" class="title_2" name="title_1_12">
							휠 : <span id="text_1_12" class="text_2" name="text_1_12"><c:out
							value="${optionDetail.optionWheel}" /></span>
						</div>
						<div id="title_1_13" class="title_2" name="title_1_13">
							네비게이션 : <span id="text_1_13" class="text_2" name="text_1_13"><c:out
							value="${optionDetail.optionNavi}" /></span>
						</div>
						<div id="title_1_14" class="title_2" name="title_1_14">
							시트 : <span id="text_1_14" class="text_2" name="text_1_14"><c:out
							value="${optionDetail.optionSeat}" /></span>
						</div>
						<div id="title_1_15" class="title_2" name="title_1_15">
							프레임 : <span id="text_1_15" class="text_2" name="text_1_15"><c:out
							value="${optionDetail.optionFrame}" /></span>
						</div>
						<div id="title_1_16" class="title_2" name="title_1_16">
							창문 : <span id="text_1_16" class="text_2" name="text_1_16"><c:out
							value="${optionDetail.optionWindow}" /></span>
						</div>
					</div>
					<!-- 옵션 1번 박스 내용 끝-->

					<!-- 옵션 1번 박스 가격 시작-->
					<div id="option_1_cost" class="option_n_cost" name="option_1_cost">
						$<c:out
							value="${optionDetail.optionCost}" /></div>
					<!-- 옵션 1번 박스 가격 끝-->
				</div>
				<!-- 옵션 1번 박스 끝-->


				<!-- 옵션 2번 박스 시작-->
				<div id="option_select_2" class="option_select_n"
					name="option_select_1">

					<!-- 옵션 2번 박스 제목 시작-->
					<div id="option_2_title" class="option_n_title"
						name="option_2_title"><c:out
							value="${optionDetail2.optionName2}" /></div>
					<!-- 옵션 2번 박스 제목 끝-->

					<!-- 옵션 2번 박스 내용 시작-->
					<div id="option_2_text" class="option_n_text" name="option_2_text">
						<div id="title_2_11" class="title_2" name="title_2_11">
							타이어 : <span id="text_2_11" class="text_2" name="text_2_11"><c:out
							value="${optionDetail2.optionName2}" /></span>
						</div>
						<div id="title_2_12" class="title_2" name="title_2_12">
							휠 : <span id="text_2_12" class="text_2" name="text_2_12"><c:out
							value="${optionDetail2.optionName2}" /></span>
						</div>
						<div id="title_2_13" class="title_2" name="title_2_13">
							네비게이션 : <span id="text_2_13" class="text_2" name="text_2_13"><c:out
							value="${optionDetail2.optionName2}" /></span>
						</div>
						<div id="title_2_14" class="title_2" name="title_2_14">
							시트 : <span id="text_2_14" class="text_2" name="text_2_14"><c:out
							value="${optionDetail2.optionName2}" /></span>
						</div>
						<div id="title_2_15" class="title_2" name="title_2_15">
							프레임 : <span id="text_2_15" class="text_2" name="text_2_15"><c:out
							value="${optionDetail2.optionName2}" /></span>
						</div>
						<div id="title_2_16" class="title_2" name="title_2_16">
							창문 : <span id="text_2_16" class="text_2" name="text_2_16"><c:out
							value="${optionDetail2.optionName2}" /></span>
						</div>
					</div>
					<!-- 옵션 2번 박스 내용 끝-->

					<!-- 옵션 2번 박스 가격 시작-->
					<div id="option_2_cost" class="option_n_cost" name="option_2_cost">
						$<c:out
							value="${optionDetail2.optionName2}" /></div>
					<!-- 옵션 2번 박스 가격 끝-->

				</div>
				<!-- 옵션 2번 박스 끝-->

				<!-- 옵션 3번 박스 시작-->
				<div id="option_select_3" class="option_select_n"
					name="option_select_1">

					<!-- 옵션 3번 박스 제목 시작-->
					<div id="option_3_title" class="option_n_title"
						name="option_3_title"><c:out
							value="${optionDetail3.optionName3}" /></div>
					<!-- 옵션 3번 박스 제목 끝-->

					<!-- 옵션 3번 박스 내용 시작-->
					<div id="option_3_text" class="option_n_text" name="option_3_text">
						<div id="title_3_11" class="title_2" name="title_3_11">
							타이어 : <span id="text_3_11" class="text_2" name="text_3_11"><c:out
							value="${optionDetail3.optionName3}" /></span>
						</div>
						<div id="title_3_12" class="title_2" name="title_3_12">
							휠 : <span id="text_3_12" class="text_2" name="text_3_12"><c:out
							value="${optionDetail3.optionName3}" /></span>
						</div>
						<div id="title_3_13" class="title_2" name="title_3_13">
							네비게이션 : <span id="text_3_13" class="text_2" name="text_3_13"><c:out
							value="${optionDetail3.optionName3}" /></span>
						</div>
						<div id="title_3_14" class="title_2" name="title_3_14">
							시트 : <span id="text_3_14" class="text_2" name="text_3_14"><c:out
							value="${optionDetail3.optionName3}" /></span>
						</div>
						<div id="title_3_15" class="title_2" name="title_3_15">
							프레임 : <span id="text_3_15" class="text_2" name="text_3_15"><c:out
							value="${optionDetail3.optionName3}" /></span>
						</div>
						<div id="title_3_16" class="title_2" name="title_3_16">
							창문 : <span id="text_3_16" class="text_2" name="text_3_16"><c:out
							value="${optionDetail3.optionName3}" /></span>
						</div>
					</div>
					<!-- 옵션 3번 박스 내용 끝-->

					<!-- 옵션 3번 박스 가격 시작-->
					<div id="option_3_cost" class="option_n_cost" name="option_3_cost">
						$<c:out
							value="${optionDetail3.optionName3}" /></div>
					<!-- 옵션 3번 박스 가격 끝-->

				</div>
				<!-- 옵션 3번 박스 끝-->

			</div>
			<!-- 옵션 전체 박스 끝-->

			<!-- TAX 박스 시작-->
			<div id="tax_box" class="box_4" name="tax_box">

				<!-- 기본 가격 시작-->
				<div id="tax_1_title" class="tax_1_title" name="tax_1_title">
					기본 가격 : <span id="tax_text_1" class="tax_text_1" name="tax_text_1">$123,123,123</span>
				</div>
				<!-- 기본 가격 시작-->

				<!-- 세금 가격 시작-->
				<div id="tax_2_title" class="tax_1_title" name="tax_2_title">
					세금 가격: <span id="tax_text_2" class="tax_text_1" name="tax_text_2">$123,456</span>
				</div>
				<!-- 세금 가격 끝-->

				<!-- 전체 가격 시작-->
				<div id="tax_3_title" class="tax_n_title" name="tax_3_title">
					기본+세금 가격: <span id="tax_text_3" class="tax_text_n"
						name="tax_text_3">$123,456,123,123</span>
				</div>
				<!-- 전체 가격 끝-->

			</div>
			<!-- TAX 박스 끝-->

		</div>
		<!-- 옵션 전체 끝-->
	</div>
	<!-- 전체 테두리 끝-->

	<!-- 구매 버튼 시작-->
	<div id="button" class="button" name="button">
		<input type="button" id="button_buy" class="button_buy"
			name="button_buy" value="구매하기"> <input type="button"
			id="button_keep" class="button_keep" name="button_keep"
			value="장바구니에 담기">
	</div>
	<!-- 구매 버튼 끝-->

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