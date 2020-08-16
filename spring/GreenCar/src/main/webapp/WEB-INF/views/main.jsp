<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GreenCar Home</title>
    <link rel="stylesheet" href="/resources/css/menu.css" type="text/css"><!--상단header-->
    <link rel="stylesheet" href="/resources/css/main.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/footer.css" type="text/css"><!--하단footer-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
</head>
<body>
    <!-- <script src="/resources/js/main_detailsuch.js"></script> -->
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

   	<script src="/resources/js/main_post_btn.js"></script>
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/> 
    
<!------------------------------------------------------------------------------------------------------------------------------>
    
<div class="select_car_size"><!--차종선택-->
    <div class="size_option" onclick="location.href='/goods/listByType?goodsType=컨버터블'">
    <a href="#">컨버터블</a></div>
    <div class="size_option" onclick="location.href='/goods/listByType?goodsType=세단'">
    <a href="#">세 단</a></div>
    <div class="size_option" onclick="location.href='/goods/listByType?goodsType=SUV'">
    <a href="#">SUV</a></div>
    <div class="size_option" onclick="location.href='/goods/listByType?goodsType=픽업밴'">
    <a href="#">픽업밴</a></div>
    <div class="size_option" onclick="location.href='/goods/listByType?goodsType=쿠페'">
    <a href="#">쿠 페</a></div>
    <div class="size_option" onclick="location.href='/goods/listByType?goodsType=기타'">
    <a href="#">기 타</a></div>
</div><!--차종선택END-->
    <div class="wrap"><!--메인페이지-->
        
        <div class="slide_ad"><!--슬라이드광고-->
                <img src="../image/other/ad_img_camaro.jpg" href="#" class="slide_ad_img">
        </div><!--슬라이드광고END-->

        <div class="select_car_brand"><!--브랜드선택창-->
                <table>
                    <tr>
                    <td onclick="location.href='/goods/listByBrand?brandCode=6'">
                    	<img src="../image/logo/audi.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">AUDI</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=7'">
                    	<img src="../image/logo/benz.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">BENZ</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=8'">
                    	<img src="../image/logo/cadillac.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">CADILLAC</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=9'">
                    	<img src="../image/logo/chevrolet.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">CHEVROLET</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=10'">
                    	<img src="../image/logo/ferrari.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">FERRARI</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=1'">
                    	<img src="../image/logo/ford.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">FORD</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=2'">
                    	<img src="../image/logo/genesis.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">GENESIS</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=3'">
                    	<img src="../image/logo/honda.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">HONDA</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=4'">
                    	<img src="../image/logo/hyundai.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">HYUNDAI</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=5'">
                    	<img src="../image/logo/infiniti.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">INFINITI</div></td>
                    </tr>
                    <tr>
                    <td onclick="location.href='/goods/listByBrand?brandCode=12'">
                    	<img src="../image/logo/jaguar.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">JAGUAR</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=11'">
                    	<img src="../image/logo/kia.PNG" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">KIA</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=13'">
                    	<img src="../image/logo/Lamborghini.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">LAMBORGHINI</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=15'">
                    	<img src="../image/logo/lexus.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">LEXUS</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=14'">
                    	<img src="../image/logo/mini.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">MINI</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=16'">
                    	<img src="../image/logo/ssangyong.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">SSANGYONG</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=17'">
                    	<img src="../image/logo/teslr.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">TESLR</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=18'">
                    	<img src="../image/logo/toyota.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">TOYOTA</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=19'">
                    	<img src="../image/logo/volkswagen.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">VOLKSWAGEN</div></td>
                    <td onclick="location.href='/goods/listByBrand?brandCode=20'">
                    	<img src="../image/logo/volvo.png" class="select_car_brand_img" alt="brand_logo">
                        <div class="select_car_brand_text">VOLVO</div></td>
                    </tr>
                </table>
            </div><!--브랜드선택창 END-->

            <!--추천검색 버튼-->
            <!-- <button class="detail_such_btn" id="detail_btn">
                추천검색<span class="material-icons">keyboard_arrow_down</span>
            </button>
            

            상세검색 창(클릭시 아래로 덮으며 구현)
            <div id="panel">상세검색 패널창
                <div class="panel_wrap">패널창 내부영역
                    <div class="panel_option">패널창 옵션선택영역
                        <table>
                            <tr>
                                <td>선호브랜드</td>
                                <td>
                                    <select class="panel_option_one">선호브랜드
                                        <option>BMW</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>가격대</td>
                                <td>
                                    <select class="panel_option_two">가격대(최소가격)
                                        <option>1000</option>
                                    </select>
                                    ~
                                    <select class="panel_option_two">가격대(최대가격)
                                        <option>4000</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>선호차종</td>
                                <td>
                                    <select class="panel_option_one">선호차종
                                        <option>대형</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>연비</td>
                                <td>
                                    <select class="panel_option_two">연비(최소연비)
                                        <option>10Km/L</option>
                                    </select>
                                    ~
                                    <select class="panel_option_two">연비(최대연비)
                                        <option>20Km/L</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>연료</td>
                                <td>
                                    <select class="panel_option_one">연료
                                        <option>휘발유</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </div>패널창 옵션선택영역END
                    
                    <div class="panel_result_wrap">상세검색 결과창 영역
                        <span class="material-icons">keyboard_arrow_left</span>
                        <div class="panel_result">결과창 내부영역
                            <h2>KIA_K5</h2>상세검색 차량명칭
                            <hr>
                            <h5>KIA 2020 K5</h5>
                            <div class="panel_result_text">상세검색 차량제원
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
                                <img src="../image/other/K3_img.png">상세검색결과이미지
                            </div>
                        </div>결과창 내부영역END
                        <span class="material-icons">keyboard_arrow_right</span>
                    </div>상세검색결과창 영역ENd

                    <input type="button" value="검색" name="rcmd_btn">
                    <input type="button" value="상세하게 검색" name="detail_btn">
                </div>상세검색 패널내부영역END
            </div> --><!--상세검색 패널창 END-->


            
            <hr style="width: 1450px; border: 0.1px solid #333;"><!--상세검색하단 line-->

            <div class="recommend_car_head">추천모델</div><!--추천모델제목-->

            <div class="recommend_car"><!--추천모델 영역-->
            
            <c:forEach begin="1" end="3" step="1">
                <table class="recommend_car_table">
                    <tr>
                        <td colspan="2"><h3 class="recommend_car_table_head">수입차 추천모델</h3></td>
                    </tr>
					<c:forEach items="${list}" var="list" begin="1" end="5" step="1">
                    <tr>
                        <td>
                            <img src="../image/goodsMain/${list.goodsNo}.png">
                        </td>
                        <td>
                            <h4><c:out value="${list.goodsName}"/></h4>
                            <h3>가격 : <c:out value="${list.goodsPrice}"/></h3>
                            <p>연비등급 : <c:out value="${list.goodsEfficient}"/>등급</p>
                        </td>
                    </tr>
					</c:forEach>
                </table>
			</c:forEach>
            </div><!--추천모델영역END-->



            <div class="news_kind"><!--포스트 선택메뉴-->
                    <div onclick="location.href='/news/newsMain?newsCate=1'">
                    	<button type="button" class="tab_menu_btn on">라이프</button>
                    </div><hr>
                    
                    <div onclick="location.href='/news/newsMain?newsCate=2'">
                    <button type="button" class="tab_menu_btn">디자인</button>
                    </div><hr>
                    
                    <div onclick="location.href='/news/newsMain?newsCate=3'">
                    <button type="button" class="tab_menu_btn">테크</button>
                    </div><hr>
                    
                    <div onclick="location.href='/news/newsMain?newsCate=4'">
                    <button type="button" class="tab_menu_btn">경제</button>
                    </div>
                    
            </div><!--포스트 선택메뉴END-->
			<c:forEach items="${news}" var="news" begin="1" end="4" step="1">
            <div class="news_wrap"><!--포스트 전체영역-->
            
                <div onclick="location.href='${contextPath}/news/newsDetailView?newsNo=${news.newsNo}';" 
                	class="news_main"><!--메인포스트 영역-->
                    <img src="<spring:url value='/resources/image/post/${news.newsNo}.jpg'/>"><!--메인포스트이미지-->
                    <h3><c:out value="${news.newsTitle}" /></h3>
                    <p class="news_main_text"><c:out value="${news.newsText}" /></p>
                </div><!--메인포스트영역END-->

                <div class="news_sub_wrap"><!--우측 서브포스트 전체영역-->

                    <div onclick="location.href='${contextPath}/news/newsDetailView?newsNo=${news.newsNo+1}';" 
                    	class="news_sub"><!--서브포스트 1개 영역-->
                        <img src="<spring:url value='/resources/image/post/${news.newsNo+1}.jpg'/>"><!--서브포스트이미지-->
                            <div class="news_sub_textwrap"><!--서브포스트 텍스트영역(제목,본문)-->
                            <h3><c:out value="${news.newsTitle}" /></h3>
                            <p class="news_sub_text"><c:out value="${news.newsText}" /></p>
                            </div>
                    </div><!--서브포스트 1개 영역END-->

                    <div onclick="location.href='${contextPath}/news/newsDetailView?newsNo=${news.newsNo+2}';" 
                    	class="news_sub"><!--서브포스트 1개 영역-->
                        <img src="<spring:url value='/resources/image/post/${news.newsNo+2}.jpg'/>"><!--서브포스트이미지-->
                            <div class="news_sub_textwrap"><!--서브포스트 텍스트영역(제목,본문)-->
                            <h3><c:out value="${news.newsTitle}" /></h3>
                            <p class="news_sub_text"><c:out value="${news.newsText}" /></p>
                            </div>
                    </div>

                    <div onclick="location.href='${contextPath}/news/newsDetailView?newsNo=${news.newsNo+3}';"
                    	class="news_sub"><!--서브포스트 1개 영역-->
                        <img src="<spring:url value='/resources/image/post/${news.newsNo+3}.jpg'/>"><!--서브포스트이미지-->
                            <div class="news_sub_textwrap"><!--서브포스트 텍스트영역(제목,본문)-->
                            <h3><c:out value="${news.newsTitle}" /></h3>
                            <p class="news_sub_text"><c:out value="${news.newsText}" /></p>
                            </div>
                    </div>
				
                </div><!--우측 서브포스트 전체영역END-->
            </div><!--포스트전체영역END-->
            </c:forEach>
            
    </div><!--메인페이지END-->
    
<!------------------------------------------------------------------------------------------------------------------------------>

   <jsp:include page="/resources/jsp/footer.jsp" flush="false" />
   
</body>
</html>