<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GreenCar Home</title>
<link rel="stylesheet" href="/resources/css/menu.css" type="text/css">
<!--상단header-->
<link rel="stylesheet" href="/resources/css/main.css" type="text/css">
<link rel="stylesheet" href="/resources/css/footer.css" type="text/css">
<!--하단footer-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--구글머터리얼-->
</head>
<body>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="/resources/js/main_detailsuch.js" type="text/javascript"></script>


	<jsp:include page="/resources/jsp/menu.jsp" flush="false" />

	<!------------------------------------------------------------------------------------------------------------------------------>

	<div class="select_car_size">
		<!--차종선택-->
		<div class="size_option">
			<a href="#">대 형</a>
		</div>
		<div class="size_option">
			<a href="#">준대형</a>
		</div>
		<div class="size_option">
			<a href="#">중 형</a>
		</div>
		<div class="size_option">
			<a href="#">준중형</a>
		</div>
		<div class="size_option">
			<a href="#">소 형</a>
		</div>
		<div class="size_option">
			<a href="#">경 차</a>
		</div>
	</div>
	<!--차종선택END-->
	<div class="wrap">
		<!--메인페이지-->

		<div class="slide_ad">
			<!--슬라이드광고-->
			<img src="../image/other/ad_img_camaro.jpg" href="#"
				class="slide_ad_img">
		</div>
		<!--슬라이드광고END-->

		<div class="select_car_brand">
			<!--브랜드선택창-->
			<table>
				<tr>
					<td><img src="/resources/image/logo/audi.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">AUDI</div></td>
					<td><img src="/resources/image/logo/benz.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">BENZ</div></td>
					<td><img src="/resources/image/logo/cadillac.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">CADILLAC</div></td>
					<td><img src="/resources/image/logo/chevrolet.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">CHEVROLET</div></td>
					<td><img src="/resources/image/logo/ferrari.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">FERRARI</div></td>
					<td><img src="/resources/image/logo/ford.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">FORD</div></td>
					<td><img src="/resources/image/logo/genesis.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">GENESIS</div></td>
					<td><img src="/resources/image/logo/honda.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">HONDA</div></td>
					<td><img src="/resources/image/logo/hyundai.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">HYUNDAI</div></td>
					<td><img src="/resources/image/logo/infiniti.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">INFINITI</div></td>
				</tr>
				<tr>
					<td><img src="/resources/image/logo/jaguar.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">JAGUAR</div></td>
					<td><img src="/resources/image/logo/kia.PNG"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">KIA</div></td>
					<td><img src="/resources/image/logo/Lamborghini.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">LAMBORGHINI</div></td>
					<td><img src="/resources/image/logo/lexus.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">LEXUS</div></td>
					<td><img src="/resources/image/logo/mini.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">MINI</div></td>
					<td><img src="/resources/image/logo/ssangyong.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">SSANGYONG</div></td>
					<td><img src="/resources/image/logo/teslr.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">TESLR</div></td>
					<td><img src="/resources/image/logo/toyota.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">TOYOTA</div></td>
					<td><img src="/resources/image/logo/volkswagen.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">VOLKSWAGEN</div></td>
					<td><img src="/resources/image/logo/volvo.png"
						class="select_car_brand_img" alt="brand_logo">
						<div class="select_car_brand_text">VOLVO</div></td>
				</tr>
			</table>
		</div>
		<!--브랜드선택창 END-->

		<!--추천검색 버튼-->
		<button class="detail_such_btn" id="detail_btn">
			추천검색<span class="material-icons">keyboard_arrow_down</span>
		</button>


		<!--상세검색 창(클릭시 아래로 덮으며 구현)-->
		<div id="panel">
			<!--상세검색 패널창-->
			<div class="panel_wrap">
				<!--패널창 내부영역-->
				<div class="panel_option">
					<!--패널창 옵션선택영역-->
					<table>
						<tr>
							<td>선호브랜드</td>
							<td><select class="panel_option_one">
									<!--선호브랜드-->
									<option>BMW</option>
							</select></td>
						</tr>
						<tr>
							<td>가격대</td>
							<td><select class="panel_option_two">
									<!--가격대(최소가격)-->
									<option>1000</option>
							</select> ~ <select class="panel_option_two">
									<!--가격대(최대가격)-->
									<option>4000</option>
							</select></td>
						</tr>
						<tr>
							<td>선호차종</td>
							<td><select class="panel_option_one">
									<!--선호차종-->
									<option>대형</option>
							</select></td>
						</tr>
						<tr>
							<td>연비</td>
							<td><select class="panel_option_two">
									<!--연비(최소연비)-->
									<option>1등급</option>
							</select> ~ <select class="panel_option_two">
									<!--연비(최대연비)-->
									<option>5등급</option>
							</select></td>
						</tr>
						<tr>
							<td>연료</td>
							<td><select class="panel_option_one">
									<!--연료-->
									<option>휘발유</option>
							</select></td>
						</tr>
					</table>
				</div>
				<!--패널창 옵션선택영역END-->

				<div class="panel_result_wrap">
					<!--상세검색 결과창 영역-->
					<span class="material-icons">keyboard_arrow_left</span>
					<div class="panel_result">
						<!--결과창 내부영역-->
						<h2>KIA_K5</h2>
						<!--상세검색 차량명칭-->
						<hr>
						<h5>KIA 2020 K5</h5>
						<div class="panel_result_text">
							<!--상세검색 차량제원-->
							<br>
							<table>
								<tr>
									<td>출시가</td>
									<td><h5>2,293~3,063만원</h5></td>
								</tr>
								<tr>
									<td>차종</td>
									<td><h5>중형차</h5></td>
								</tr>
								<tr>
									<td>연비</td>
									<td><h5>9.8~13.8 km</h5></td>
								</tr>
								<tr>
									<td>연료</td>
									<td><h5>가솔린</h5></td>
								</tr>
							</table>
						</div>
						<div class="panel_result_img">
							<img src="../image/other/K3_img.png">
							<!--상세검색결과이미지-->
						</div>
					</div>
					<!--결과창 내부영역END-->
					<span class="material-icons">keyboard_arrow_right</span>
				</div>
				<!--상세검색결과창 영역ENd-->

				<input type="button" value="검색" name="rcmd_btn"> <input
					type="button" value="상세하게 검색" name="detail_btn">
			</div>
			<!--상세검색 패널내부영역END-->
		</div>
		<!--상세검색 패널창 END-->


		<!--상세검색하단 line-->
		<hr style="width: 1450px; border: 0.1px solid #333;">

		<div class="recommend_car_head">
			<!--추천모델 제목-->
			추천모델
		</div>
		<!--추천모델제목END-->

		<div class="recommend_car">
			<!--추천모델 영역-->

			<!--1번째 표-->
			<table class="recommend_car_table">
				<!--td영역 maxData 5개 제한으로 이미지,차량정보 가져와야함(array/for)-->
				<tr>
					<td colspan="2"><h3 class="recommend_car_table_head">수입차
							추천모델</h3></td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
			</table>

			<!--2번째 표-->
			<table class="recommend_car_table">
				<!--td영역 maxData 5개 제한으로 이미지,차량정보 가져와야함(array/for)-->
				<tr>
					<td colspan="2"><h3 class="recommend_car_table_head">수입차
							추천모델</h3></td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
			</table>

			<!--3번째 표-->
			<table class="recommend_car_table">
				<!--td영역 maxData 5개 제한으로 이미지,차량정보 가져와야함(array/for)-->
				<tr>
					<td colspan="2"><h3 class="recommend_car_table_head">수입차
							추천모델</h3></td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
				<tr>
					<td><img src="../image/other/K3_img.png" alt="car_img">
					</td>
					<td>
						<h4>E-calss</h4>
						<h3>4,000~9,990 만원</h3>
						<p>2010출시 | 복합연비 10 ~ 16km/l</p>
					</td>
				</tr>
			</table>
		</div>
		<!--추천모델영역END-->

		<div class="news_kind">
			<!--포스트 선택메뉴-->
			<div>
				<a href=#>테크</a>
			</div>
			<hr>
			<div>
				<a href=#>디자인</a>
			</div>
			<hr>
			<div>
				<a href=#>법률</a>
			</div>
			<hr>
			<div>
				<a href=#>경제</a>
			</div>
			<hr>
			<div>
				<a href=#>라이프</a>
			</div>
		</div>
		<!--포스트 선택메뉴END-->

		<div class="news_wrap">
			<!--포스트 전체영역-->
			<div class="news_main">
				<!--메인포스트 영역-->
				<img src="../image/other/morning_img.jpg">
				<!--메인포스트이미지-->
				<h3>기아자동차 모닝출시</h3>
				<p class="news_main_text">2004년 2월 18일에 비스토의 후속 차종으로 출시되었다. 출시
					당시에는 대한민국의 경차 기준을 초과하여 소형차로 분류되었으나, 2008년 이후로 시행이 보류된 대한민국의 경차 기준
					개정안을 감안하여 그대로 출시되었다. 대만에서는 차명이 유로스타였다. 대한민국에서는 현대자동차의 1.0ℓ 입실론 가솔린
					엔진이 장착되었다. 2005년 5월 3일에 선보인 2005년형은 라디에이터 그릴과 엠블럼 등이 바뀌고 2인승 밴이
					추가되었다. 2008년 1월 1일부터 대한민국의 경차 기준 개정안이 시행되면서 경차로 편입되었다. 2004년 2월
					18일에 비스토의 후속 차종으로 출시되었다. 출시 당시에는 대한민국의 경차 기준을 초과하여 소형차로 분류되었으나,
					2008년 이후로 시행이 보류된 대한민국의 경차 기준 개정안을 감안하여 그대로 출시되었다. 대만에서는 차명이
					유로스타였다. 대한민국에서는 현대자동차의 1.0ℓ 입실론 가솔린 엔진이 장착되었다. 2005년 5월 3일에 선보인
					2005년형은 라디에이터 그릴과 엠블럼 등이 바뀌고 2인승 밴이 추가되었다. 2008년 1월 1일부터 대한민국의 경차
					기준 개정안이 시행되면서 경차로 편입되었다.</p>
			</div>
			<!--메인포스트영역END-->

			<div class="news_sub_wrap">
				<!--우측 서브포스트 전체영역-->

				<div class="news_sub">
					<!--서브포스트 1개 영역-->
					<img src="../image/other/morning_img.jpg">
					<!--서브포스트이미지-->
					<div class="news_sub_textwrap">
						<!--서브포스트 텍스트영역(제목,본문)-->
						<h3>기아자동차 모닝출시</h3>
						<p class="news_sub_text">2004년 2월 18일에 비스토의 후속 차종으로 출시되었다. 출시
							당시에는 대한민국의 경차 기준을 초과하여 소형차로 분류되었으나, 2008년 이후로 시행이 보류된 대한민국의 경차 기준
							개정안을 감안하여 그대로 출시되었다. 대만에서는 차명이 유로스타였다. 대한민국에서는 현대자동차의 1.0ℓ 입실론
							가솔린 엔진이 장착되었다. 2005년 5월 3일에 선보인 2005년형은 라디에이터 그릴과 엠블럼 등이 바뀌고 2인승
							밴이 추가되었다. 2008년 1월 1일부터 대한민국의 경차 기준 개정안이 시행되면서 경차로 편입되었다. 2004년
							2월 18일에 비스토의 후속 차종으로 출시되었다. 출시 당시에는 대한민국의 경차 기준을 초과하여 소형차로
							분류되었으나, 2008년 이후로 시행이 보류된 대한민국의 경차 기준 개정안을 감안하여 그대로 출시되었다. 대만에서는
							차명이 유로스타였다. 대한민국에서는 현대자동차의 1.0ℓ 입실론 가솔린 엔진이 장착되었다. 2005년 5월 3일에
							선보인 2005년형은 라디에이터 그릴과 엠블럼 등이 바뀌고 2인승 밴이 추가되었다. 2008년 1월 1일부터
							대한민국의 경차 기준 개정안이 시행되면서 경차로 편입되었다.</p>
					</div>
				</div>
				<!--서브포스트 1개 영역END-->

				<div class="news_sub">
					<!--서브포스트 1개 영역-->
					<img src="../image/other/morning_img.jpg">
					<!--서브포스트이미지-->
					<div class="news_sub_textwrap">
						<!--서브포스트 텍스트영역(제목,본문)-->
						<h3>기아자동차 모닝출시</h3>
						<p class="news_sub_text">2004년 2월 18일에 비스토의 후속 차종으로 출시되었다. 출시
							당시에는 대한민국의 경차 기준을 초과하여 소형차로 분류되었으나, 2008년 이후로 시행이 보류된 대한민국의 경차 기준
							개정안을 감안하여 그대로 출시되었다. 대만에서는 차명이 유로스타였다. 대한민국에서는 현대자동차의 1.0ℓ 입실론
							가솔린 엔진이 장착되었다. 2005년 5월 3일에 선보인 2005년형은 라디에이터 그릴과 엠블럼 등이 바뀌고 2인승
							밴이 추가되었다. 2008년 1월 1일부터 대한민국의 경차 기준 개정안이 시행되면서 경차로 편입되었다. 2004년
							2월 18일에 비스토의 후속 차종으로 출시되었다. 출시 당시에는 대한민국의 경차 기준을 초과하여 소형차로
							분류되었으나, 2008년 이후로 시행이 보류된 대한민국의 경차 기준 개정안을 감안하여 그대로 출시되었다. 대만에서는
							차명이 유로스타였다. 대한민국에서는 현대자동차의 1.0ℓ 입실론 가솔린 엔진이 장착되었다. 2005년 5월 3일에
							선보인 2005년형은 라디에이터 그릴과 엠블럼 등이 바뀌고 2인승 밴이 추가되었다. 2008년 1월 1일부터
							대한민국의 경차 기준 개정안이 시행되면서 경차로 편입되었다.</p>
					</div>
				</div>

				<div class="news_sub">
					<!--서브포스트 1개 영역-->
					<img src="../image/other/morning_img.jpg">
					<!--서브포스트이미지-->
					<div class="news_sub_textwrap">
						<!--서브포스트 텍스트영역(제목,본문)-->
						<h3>기아자동차 모닝출시</h3>
						<p class="news_sub_text">2004년 2월 18일에 비스토의 후속 차종으로 출시되었다. 출시
							당시에는 대한민국의 경차 기준을 초과하여 소형차로 분류되었으나, 2008년 이후로 시행이 보류된 대한민국의 경차 기준
							개정안을 감안하여 그대로 출시되었다. 대만에서는 차명이 유로스타였다. 대한민국에서는 현대자동차의 1.0ℓ 입실론
							가솔린 엔진이 장착되었다. 2005년 5월 3일에 선보인 2005년형은 라디에이터 그릴과 엠블럼 등이 바뀌고 2인승
							밴이 추가되었다. 2008년 1월 1일부터 대한민국의 경차 기준 개정안이 시행되면서 경차로 편입되었다. 2004년
							2월 18일에 비스토의 후속 차종으로 출시되었다. 출시 당시에는 대한민국의 경차 기준을 초과하여 소형차로
							분류되었으나, 2008년 이후로 시행이 보류된 대한민국의 경차 기준 개정안을 감안하여 그대로 출시되었다. 대만에서는
							차명이 유로스타였다. 대한민국에서는 현대자동차의 1.0ℓ 입실론 가솔린 엔진이 장착되었다. 2005년 5월 3일에
							선보인 2005년형은 라디에이터 그릴과 엠블럼 등이 바뀌고 2인승 밴이 추가되었다. 2008년 1월 1일부터
							대한민국의 경차 기준 개정안이 시행되면서 경차로 편입되었다.</p>
					</div>
				</div>

			</div>
			<!--우측 서브포스트 전체영역END-->
		</div>
		<!--포스트전체영역END-->

	</div>
	<!--메인페이지END-->

	<!-- <div class="common_goods">최근 본 상품
        <div class="common_goods_name">최근 본 상품</div>
        <div class="common_goods_index" onclick="location.href='#'">최근상품 1
            <img src="../image/other/ad_img_camaro.jpg">
            <div class="common_goods_name">카마로SS</div>
        </div>
        <div class="common_goods_index" onclick="location.href='#'">최근상품 2
            <img src="../image/other/ad_img_camaro.jpg">
            <div class="common_goods_name">카마로SS</div>
        </div>
        <div class="common_goods_index" onclick="location.href='#'">최근상품 3
            <img src="../image/other/ad_img_camaro.jpg">
            <div class="common_goods_name">카마로SS</div>
        </div>
    </div> -->

	<!------------------------------------------------------------------------------------------------------------------------------>

	<jsp:include page="/resources/jsp/footer.jsp" flush="false" />
	
</body>
</html>