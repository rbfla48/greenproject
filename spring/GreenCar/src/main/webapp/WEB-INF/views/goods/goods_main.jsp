<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Goods_main</title>
    <link rel="stylesheet" href="/resources/css/menu.css" ><!--상단header-->
    <link rel="stylesheet" href="/resources/css/goods_main.css" >
    <link rel="stylesheet" href="/resources/css/footer.css" ><!--하단footer-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!--구글머터리얼-->
</head>
<body>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>

<!-------------------------------메뉴바END-------------------------------->
<div class="goods_page_wrap"><!--상품페이지 전체영역-->

    <div class="select_car_wrap"><!--브랜드/차종선택창 영역-->

        <div class="select_car_brand"><!--브랜드선택창-->
            <table>
                <tr>
                    <th colspan="6">브랜드별로 보기</th>       
                    <th colspan="2">차종별로 보기</th>
                </tr>
                <tr>
                <td onclick="location.href='/goods/listByBrand?brandCode=6'" id="audi"> 
                    <div class="select_car_brand_text">	AUDI
				</div></td>             
                <td onclick="location.href='/goods/listByBrand?brandCode=7'" id="benz">
                    <div class="select_car_brand_text">	BENZ
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=8'"  id="cadillac">
                    <div class="select_car_brand_text">CADILLAC 
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=9'" id="chevrolet">
                    <div class="select_car_brand_text">                   
				CHEVROLET </div></td>                   
                <td onclick="location.href='/goods/listByBrand?brandCode=10'" id="ferrari" >
                    <div class="select_car_brand_text">	FERRARI
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=1'" id="ford">
                    <div class="select_car_brand_text">FORD                    
                    </div></td>
                <td onclick="location.href='/goods/listByType?goodsType='컨버터블''" id="convertible">
                	<div class="select_car_brand_text">컨버터블 
					</div></td>
                <td onclick="location.href='/goods/listByType?goodsType=세단'" id="sedan">
                	<div class="select_car_brand_text">세단
					</div></td>
                </tr>
                <tr>
                <td onclick="location.href='/goods/listByBrand?brandCode=2'" id="genesis">
                    <div class="select_car_brand_text">GENESIS
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=4'" id="hyundai">
                    <div class="select_car_brand_text">HYUNDAI
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=5'" id="infiniti">
                    <div class="select_car_brand_text">INFINITI
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=12'" id="jaguar">
                    <div class="select_car_brand_text">JAGUAR
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=11'" id="kia">
                    <div class="select_car_brand_text">KIA
				</div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=13'" id="lamborghini">
                    <div class="select_car_brand_text">LAMBORGHINI
				</div></td>
				<td onclick="location.href='/goods/listByType?goodsType=SUV'"  id="suv">
				<div class="select_car_brand_text">SUV             
				</div></td>
                <td onclick="location.href='/goods/listByType?goodsType=픽업밴'" id="ben">
                <div class="select_car_brand_text"> 밴 
				</div></td>
                </tr>
                <tr>
                <td onclick="location.href='/goods/listByBrand?brandCode=15'" id="lexus">
                    <div class="select_car_brand_text">LEXUS
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=14'" id="mini">
                    <div class="select_car_brand_text">MINI
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=16'" id="ssangyong">
                    <div class="select_car_brand_text">SSANGYONG
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=17'" id="teslr">
                    <div class="select_car_brand_text">TESLR
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=19'" id="volkswagen">
                    <div class="select_car_brand_text">VOLKSWAGEN
                    </div></td>
                <td onclick="location.href='/goods/listByBrand?brandCode=20'" id="volvo">
                    <div class="select_car_brand_text">VOLVO
                    </div></td>
                     <td onclick="location.href='/goods/listByType?goodsType=쿠페'" id="coup">
                     <div class="select_car_brand_text">쿠페
                	</div></td>
                <td onclick="location.href='/goods/listByType?goodsType=기타'" id="etc">
                <div class="select_car_brand_text">기타
                	</div></td>
                </tr>
            </table>
        </div><!--브랜드선택창 END-->
    
        
    </div><!--브랜드/차종선택창 영역END-->

    <div class="array_goods_option"><!--상품 정렬옵션 영역-->
        <span class="material-icons">list</span><!--구글머터리얼:리스트-->
        <span class="material-icons">border_all</span><!--구글머터리얼:타일-->
        <select><!--정렬기준-->
            <option>가격순</option>
            <option>출시일순</option>
            <option>인기순</option>
            <option>연비순</option>
        </select>
    </div><!--상품 정렬옵션 영역END-->

   <div class="goods_list_wrap" ><!--상품페이지 영역-->
    
		<c:forEach items="${list}" var = "list">    
	        <div class="goods_list" onclick="location.href='${contextPath}/goods/goodsDetailView?goodsNo=${list.goodsNo}';"><!--상품타일1개-->
	            <div class="goods_list_img"><img src="/resources/image/goodsMain/${list.goodsNo}.png"></div><!--상품 이미지-->
	            <div class="goods_list_name"><c:out value="${list.goodsName}"/></div><!--차량이름-->
	            <div class="goods_list_price">가격: ￦<fmt:formatNumber value="${list.goodsPrice}" 
	            		type="currency" pattern="###,###" /></div><!--차량가격-->
	            <div class="goods_list_mileage">연비:<c:out value="${list.goodsEfficient}"/>등급</div><!--연비-->
	            <div class="goods_list_kind">차종:<c:out value="${list.goodsType}"/></div><!--차종-->
	            
	        </div>
        </c:forEach>

        
    </div>
    <!-- 기본 페이징처리 -->
    	<div>
	        <form id="actionForm" action="/goods/goods_main" method="GET">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	        	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	        	<input type="hidden" name="type" value="<c:out value="${pageMaker.cri.type}"/>">
	        	<input type="hidden" name="keyword" value="<c:out value="${pageMaker.cri.keyword}"/>">
	        </form>
	     </div>
	     <c:if test="${pageMaker.prev}"><!-- 이전페이지이동 -->
			    <a href="${action}?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">이전으로</a>
			</c:if>
			
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" step="1" var="num">
			    <li class="paginate_btn" value="${pageMaker.cri.pageNum == num ? 'active':''} ">
			    	<a href="${num}">${num}</a>
			    </li>	  
			</c:forEach>
						
			<c:if test="${pageMaker.next}"><!-- 다음페이지 이동 -->
			    <a href="${action}?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">다음으로</a>
			</c:if>
		</div>
<!--상품페이지 전체영역END-->

<!-- <div class="common_goods">최근 본 상품
    <div class="common_goods_name">최근 본 상품</div>
    <div class="common_goods_index" onclick="location.href='#'">최근상품 1
        <img src="resources/image/other/K3_img.png">
        <div class="common_goods_name">카마로SS</div>
    </div>
    <div class="common_goods_index" onclick="location.href='#'">최근상품 2
        <img src="resources/image/other/K3_img.png">
        <div class="common_goods_name">카마로SS</div>
    </div>
    <div class="common_goods_index" onclick="location.href='#'">최근상품 3
        <img src="resources/image/other/K3_img.png">
        <div class="common_goods_name">카마로SS</div>
    </div>
</div>
 -->
<!-------------------------------footer시작------------------------------->
    <!--하단 회사정보영역-->
	<jsp:include page="/resources/jsp/footer.jsp" flush="false" />

	</body>
</html>
