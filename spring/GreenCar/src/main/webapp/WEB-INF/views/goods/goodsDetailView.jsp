<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<!-- jQuery -->
<script src="<c:url value="/webjars/jquery/3.5.1/dist/jquery.min.js" />"></script>
<!-- js 경로 고정 -->
<script> 
const contextPath="${contextPath}";
let optionFlag = false;
let colorFlag = false;
let option1Cost = ${optionDetail.optionCost};
let option2Cost = ${optionDetail2.optionCost2};
let option3Cost = ${optionDetail3.optionCost3};
</script>

<script type="text/javascript"
	src="<c:url value="/resources/js/goods_detail.js"/>" charset="UTF-8"></script>

</head>

<body>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>
	
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
					가격 : <span id="text_13" class="text_1"> ￦<fmt:formatNumber
							value="${(goodsDetail.goodsPrice)}" type="currency"
							pattern="###,###" /></span>

				</div>
				<div id="title_14" class="title_1">
					연비 : <span id="text_14" class="text_1"> <c:out
							value="${goodsDetail.goodsEfficient}" />등급
					</span>
				</div>
				<div id="title_15" class="title_1">
					유종 : <span id="text_15" class="text_1"> <c:out
							value="${goodsDetail.goodsFuel}" /></span>
				</div>
			</div>
			<!---- 차 설명 끝 -->
		</div>
		<!-- 첫째줄 끝-->

		<!-- 큰 차 사진 시작-->
		<div id="picture_detail" class="picture_2">
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
					<input type="radio" id="color_1" class="color" name="optionColor">
					<label for="color_1" class="color_tag">검정</label>
					<div id="check_1" class="check"></div>
				</div>
				<div>
					<input type="radio" id="color_2" class="color" name="optionColor">
					<label for="color_2" class="color_tag">회색</label>
					<div id="check_2" class="check"></div>
				</div>
				<div>
					<input type="radio" id="color_3" class="color" name="optionColor">
					<label for="color_3" class="color_tag">사랑</label>
					<div id="check_3" class="check"></div>
				</div>
				<!-- 라디오 끝-->
			</div>
			<!-- 색상 선택 끝-->

			<!-- 옵션 전체 박스 시작-->
			<div id="option_select" class="box_3">

				<!-- 옵션 1번 박스 시작-->
				<div id="option_select_1" class="option_select_n">
					<input type="radio" id="optionCheck1" class="optionCheck"
						name="optionCheck">

					<!-- 옵션 1번 박스 제목 시작-->
					<div id="option_1_title" class="option_n_title">
						<label for="optionCheck1" class="option_tag1"
							onclick="fn_option1()"> <c:out
								value="${optionDetail.optionName}" /></label>
					</div>
					<!-- 옵션 1번 박스 제목 끝-->

					<!-- 옵션 1번 박스 내용 시작-->
					<div id="option_1_text" class="option_n_text">
						<div id="title_1_11" class="title_2">
							타이어 : <span id="text_1_11" class="text_2"><c:out
									value="${optionDetail.optionTire}" /></span>
						</div>
						<div id="title_1_12" class="title_2">
							휠 : <span id="text_1_12" class="text_2"><c:out
									value="${optionDetail.optionWheel}" /></span>
						</div>
						<div id="title_1_13" class="title_2">
							네비게이션 : <span id="text_1_13" class="text_2"><c:out
									value="${optionDetail.optionNavi}" /></span>
						</div>
						<div id="title_1_14" class="title_2">
							시트 : <span id="text_1_14" class="text_2"><c:out
									value="${optionDetail.optionSeat}" /></span>
						</div>
						<div id="title_1_15" class="title_2">
							프레임 : <span id="text_1_15" class="text_2"><c:out
									value="${optionDetail.optionFrame}" /></span>
						</div>
						<div id="title_1_16" class="title_2">
							창문 : <span id="text_1_16" class="text_2"><c:out
									value="${optionDetail.optionWindow}" /></span>
						</div>
					</div>
					<!-- 옵션 1번 박스 내용 끝-->

					<!-- 옵션 1번 박스 가격 시작-->
					<div id="option_1_cost" class="option_n_cost">
						￦
						<fmt:formatNumber value="${optionDetail.optionCost}"
							type="currency" pattern="###,###" />
					</div>
					<!-- 옵션 1번 박스 가격 끝-->

				</div>
				<!-- 옵션 1번 박스 끝-->


				<!-- 옵션 2번 박스 시작-->
				<div id="option_select_2" class="option_select_n">
					<input type="radio" id="optionCheck2" class="optionCheck"
						name="optionCheck">
					<!-- 옵션 2번 박스 제목 시작-->
					<div id="option_2_title" class="option_n_title">
						<label for="optionCheck2" class="option_tag2"
							onclick="fn_option2()"> <c:out
								value="${optionDetail2.optionName2}" /></label>
					</div>
					<!-- 옵션 2번 박스 제목 끝-->

					<!-- 옵션 2번 박스 내용 시작-->
					<div id="option_2_text" class="option_n_text">
						<div id="title_2_11" class="title_2">
							타이어 : <span id="text_2_11" class="text_2"><c:out
									value="${optionDetail2.optionTire2}" /></span>
						</div>
						<div id="title_2_12" class="title_2">
							휠 : <span id="text_2_12" class="text_2"><c:out
									value="${optionDetail2.optionWheel2}" /></span>
						</div>
						<div id="title_2_13" class="title_2">
							네비게이션 : <span id="text_2_13" class="text_2"><c:out
									value="${optionDetail2.optionNavi2}" /></span>
						</div>
						<div id="title_2_14" class="title_2">
							시트 : <span id="text_2_14" class="text_2"><c:out
									value="${optionDetail2.optionSeat2}" /></span>
						</div>
						<div id="title_2_15" class="title_2">
							프레임 : <span id="text_2_15" class="text_2"><c:out
									value="${optionDetail2.optionFrame2}" /></span>
						</div>
						<div id="title_2_16" class="title_2">
							창문 : <span id="text_2_16" class="text_2"><c:out
									value="${optionDetail2.optionWindow2}" /></span>
						</div>
					</div>
					<!-- 옵션 2번 박스 내용 끝-->

					<!-- 옵션 2번 박스 가격 시작-->
					<div id="option_2_cost" class="option_n_cost">
						￦
						<fmt:formatNumber value="${(optionDetail2.optionCost2)}"
							type="currency" pattern="###,###" />
					</div>
					<!-- 옵션 2번 박스 가격 끝-->

				</div>
				<!-- 옵션 2번 박스 끝-->

				<!-- 옵션 3번 박스 시작-->
				<div id="option_select_3" class="option_select_n">
					<input type="radio" id="optionCheck3" class="optionCheck"
						name="optionCheck">
					<!-- 옵션 3번 박스 제목 시작-->
					<div id="option_3_title" class="option_n_title">
						<label for="optionCheck3" class="option_tag3"
							onclick="fn_option3()"> <c:out
								value="${optionDetail3.optionName3}" /></label>
					</div>
					<!-- 옵션 3번 박스 제목 끝-->

					<!-- 옵션 3번 박스 내용 시작-->
					<div id="option_3_text" class="option_n_text">
						<div id="title_3_11" class="title_2">
							타이어 : <span id="text_3_11" class="text_2"><c:out
									value="${optionDetail3.optionTire3}" /></span>
						</div>
						<div id="title_3_12" class="title_2">
							휠 : <span id="text_3_12" class="text_2"><c:out
									value="${optionDetail3.optionWheel3}" /></span>
						</div>
						<div id="title_3_13" class="title_2">
							네비게이션 : <span id="text_3_13" class="text_2"><c:out
									value="${optionDetail3.optionNavi3}" /></span>
						</div>
						<div id="title_3_14" class="title_2">
							시트 : <span id="text_3_14" class="text_2"><c:out
									value="${optionDetail3.optionSeat3}" /></span>
						</div>
						<div id="title_3_15" class="title_2">
							프레임 : <span id="text_3_15" class="text_2"><c:out
									value="${optionDetail3.optionFrame3}" /></span>
						</div>
						<div id="title_3_16" class="title_2">
							창문 : <span id="text_3_16" class="text_2"><c:out
									value="${optionDetail3.optionWindow3}" /></span>
						</div>
					</div>
					<!-- 옵션 3번 박스 내용 끝-->

					<!-- 옵션 3번 박스 가격 시작-->
					<div id="option_3_cost" class="option_n_cost">
						￦
						<fmt:formatNumber value="${(optionDetail3.optionCost3)}"
							type="currency" pattern="###,###" />
					</div>
					<!-- 옵션 3번 박스 가격 끝-->

				</div>
				<!-- 옵션 3번 박스 끝-->

			</div>
			<!-- 옵션 전체 박스 끝-->

			<!-- TAX 박스 시작-->
			<div id="tax_box" class="box_4">

				<!-- 기본 가격 시작-->
				<div id="tax_1_title" class="tax_1_title">
					차량 가격 : <span id="tax_text_1" class="tax_text_1">￦<fmt:formatNumber
							value="${(goodsDetail.goodsPrice)}" type="currency"
							pattern="###,###" /></span>
				</div>
				<!-- 기본 가격 시작-->

				<!-- 세금 가격 시작-->
				<div id="tax_2_title" class="tax_1_title">
					세금 가격: <span id="tax_text_2" class="tax_text_1">￦<fmt:formatNumber
							value="${(goodsDetail.goodsPrice)*0.15}" type="currency"
							pattern="###,###" /></span>
				</div>
				<!-- 세금 가격 끝-->

				<!-- 전체 가격 시작-->
				<div id="tax_3_title" class="tax_n_title">
					차량+세금 가격: <span id="tax_text_3" class="tax_text_n">￦<fmt:formatNumber
							value="${(goodsDetail.goodsPrice)*1.15}" type="currency"
							pattern="###,###" /></span>
				</div>
				<!-- 전체 가격 끝-->

			</div>
			<!-- TAX 박스 끝-->

		</div>
		<!-- 옵션 전체 끝-->
	</div>
	<!-- 전체 테두리 끝-->

	<!-- 구매 버튼 시작-->
	<div id="button" class="button_box">
		<button type="button" id="button_buy" class="button_buy"
			name="button_buy" onclick="fn_buy()">구매하기</button>
	</div>
	<!-- 구매 버튼 끝-->

	<!-- ----------------------------중앙 끝 ---------------------------------------------------------------------------------------->

	<jsp:include page="/resources/jsp/footer.jsp" flush="false" />
	
</body>

</html>