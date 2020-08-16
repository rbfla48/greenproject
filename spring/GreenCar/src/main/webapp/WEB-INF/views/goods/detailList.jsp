<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>차량 상세 검색</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />"> <!--상단header-->
    <link rel="stylesheet" href="<c:url value="/resources/css/detailList.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/footer.css" />"><!--하단footer-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
    <!-- jQuery -->
	<script src="<c:url value="/webjars/jquery/3.5.1/dist/jquery.min.js" />"></script>
	<script src="/resources/js/goods_btn.js"></script>
	
    <style>
  
    #statusDash input{
    	width: 100px;
    	margin-right: 20px;
    	height: 20px;
    }
    </style>
</head>
<body>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>
    <!-------------------------------메뉴바END-------------------------------->

    <section>
        <div id="car_detail_search">차량 상세검색</div>
        <div id="car_detail_search_box">
            <!--브랜드 시작-->
            <div id="boxs">
                <div id="texts">브랜드 <input type="text" id="brand">  / 브랜드는 꼭 선택해야 합니다. </div>
                <hr>
                <div id="brand_button">
                    <button id="audi" title="1">
                    </button>
                    <button id="benz" title="2">
                    </button>
                    <button id="cadillac" title="3">
                    </button>
                    <button id="chevrolet" title="4">
                    </button>
                    <button id="ferrari" title="5">
                    </button>
                    <button id="ford" title="6">
                    </button>
                    <button id="genesis" title="7">
                    </button>
                    <button id="honda" title="8">
                    </button>
                    <button id="hyundai" title="9">
                    </button>
                    <button id="infiniti" title="10">
                    </button>
                    <button id="jaguar" title="11">
                    </button>
                    <button id="kia" title="12">
                    </button>
                    <button id="lamborghini" title="13">
                    </button>
                    <button id="lexus" title="14">
                    </button>
                    <button id="mini" title="15">
                    </button>
                    <button id="ssangyong" title="16">
                    </button>
                    <button id="teslr" title="17">
                    </button>
                    <button id="toyota" title="18">
                    </button>
                    <button id="volkswagen" title="19">
                    </button>
                    <button id="volvo" title="20">
                    </button>
                </div>
                <hr>
            </div>
            <!--브랜드 끝-->
            
            <!--차종 시작-->
            <div id="boxs">
                <div id="texts">차종 <input type="text" id="size"></div>
                <hr>
                <div id="size_button" class="buttons">
                    <button id="경형" title="경형">경형</button>
                    <button id="소형" title="소형">소형</button>
                    <button id="중형" title="중형">중형</button>
                    <button id="준중형" title="준중형">준중형</button>
                    <button id="준대형" title="준대형">준대형</button>
                    <button id="대형" title="대형">대형</button>
                    <button id="스포츠카" title="대형">스포츠카</button>
                </div>
                <hr>
            </div>
            <!--차종 끝-->

            <!--분류 시작-->
            <div id="boxs">
                <div id="texts">분류 <input type="text" id="type"></div>
                <hr>
                <div id="type_button" class="buttons">
                    <button id="경차" title="경차">경차</button>
                    <button id="세단" title="세단">세단</button>
                    <button id="쿠페" title="쿠페">쿠페</button>
                    <button id="SUV" title="SUV">SUV</button>
                    <button id="해치백" title="해치백">해치백</button>
                    <button id="스포츠카" title="스포츠카">스포츠카</button>
                    <button id="컨버터블" title="컨버터블">컨버터블</button>
                    <button id="픽업밴" title="픽업밴">픽업밴</button>
                    <button id="기타" title="기타">기타</button>
                </div><hr>
            </div>
            <!--분류 끝-->

            <!--가격 시작-->
            <div id="boxs">
                <div id="texts">가격 <input type="text" id="price">(이하의 값을 가진 차량이 검색됩니다.)</div>
                <hr>
                <div id="price_button" class="buttons">
                    <button id="2000만원" title="20000000">2000만원</button>
                    <button id="3000만원" title="30000000">3000만원</button>
                    <button id="5000만원" title="50000000">5000만원</button>
                    <button id="6000만원" title="60000000">6000만원</button>
                    <button id="7000만원" title="70000000">7000만원</button>
                    <button id="8000만원" title="80000000">8000만원</button>
                    <button id="9000만원" title="90000000">9000만원</button>
                    <button id="10000만원" title="100000000">1억원</button>
                    <button id="15000만원" title="150000000">1억5천만원</button>
                    <button id="20000만원" title="200000000">2억만원</button>
                    <button id="30000만원" title="300000000">3억만원</button>
                    <button id="40000만원" title="400000000">4억만원</button>
                    <button id="50000만원" title="500000000">5억만원</button>
                    <button id="60000만원" title="600000000">6억만원</button>
                </div><hr>
            </div>
            <!--가격 끝-->
            
            <!--연비 시작-->
            <div id="boxs">
                <div id="texts">연비<input type="text" id="efficient"></div>
                <hr>
                <div id="efficient_button" class="buttons">
                    <button id="5grade" title="5">5등급</button>
                    <button id="4grade" title="4">4등급</button>
                    <button id="3grade" title="3">3등급</button>
                    <button id="2grade" title="2">2등급</button>
                    <button id="1grade" title="1">1등급</button>
                </div><hr>
            </div>
            <!--연비 끝-->

            <!--유종 시작-->
            <div id="boxs">
                <div id="texts">유종<input type="text" id="fuel"></div>
                <hr>
                <div id="fuel_button" class="buttons">
                    <button id="가솔린" title="가솔린">가솔린</button>
                    <button id="경유" title="경유">경유</button>
                    <button id="디젤" title="디젤">디젤</button>
                    <button id="전기" title="전기">전기</button>
                    <button id="휘발유" title="휘발유">휘발유</button>
                </div>
            </div>
            <!-- 유종 끝-->
        </div>
        <!--검색하기 버튼-->
        <button id="search_button">검색하기</button>
        <!--검색하기 버튼 끝-->
        
        <!-- 검색 후 리스트 -->
        
    <c:forEach items="${detailList}"  var = "list">
    <div id="detail_list" onclick="location.href='${contextPath}/goods/goodsDetailView?goodsNo=${list.goodsNo}';">
        <div id="car_pic">
        	<img src="/resources/image/goodsMain/${list.goodsNo}.png">
        </div>
        <div id="car_content1">
            <h2>차량명 : <c:out value="${list.goodsName}"/></h2><br>
            <h4>차종 : <c:out value="${list.goodsSize}"/></h4>
            <h4>타입 : <c:out value="${list.goodsType}"/></h4>
            
        </div>
        <div id="car_content2">
            <h4>연비 : <c:out value="${list.goodsEfficient}"/></h4>
            <h4>연료 : <c:out value="${list.goodsFuel}"/></h4><br>
            <h1>가격 : ￦<fmt:formatNumber
							value="${(list.goodsPrice)}" type="currency"
							pattern="###,###" /></h1>
        </div>
        </div>
        </c:forEach>


   </section> 
</body>
    <!-------------------------------footer시작------------------------------->
    <!--하단 회사정보영역-->
    <footer id="footer">
        <!--상단회사명-->
        <br>
        <p><b>GREENCAR</b></p>
        <hr>
        <!--하단사업자정보-->
        <p>사업자  김붕붕  |  사업자번호 211-31-64480 | 사업자 주소 : 서울특별시 관악구 청룡중앙길 42-1 | 02 - 1234 - 5678 </p>
        <p>COPYRIGHT © GREEN COMPANY. ALL RIGHTS RESERVED.</p>
        <!--하단영역end-->
    </footer>
<!--메뉴바END-->
</html>
