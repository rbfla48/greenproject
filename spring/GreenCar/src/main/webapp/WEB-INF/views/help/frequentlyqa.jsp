<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GreenCar Home</title>
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />">
<!--상단header-->
<link rel="stylesheet"
	href="<c:url value="/resources/css/frequentlyqa.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/footer.css" />">
<!--하단footer-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--구글머터리얼-->

<script>
    window.onload = function() {
    	//질문 답변 초기화 -> 클릭 전 질문내용과 답변 보이지 않게.
    	var content_answers = document.querySelectorAll("[id^=content_answer]");
    	
    	for (var content_answer of content_answers) {
    		//console.log("id : "+content_answer.id);
    		document.getElementById(content_answer.id).style.display = "none";
    	}
    	
    	
	    var isOpens = [false, false, false]; // 
	    var drops = document.querySelectorAll("[id^=drop]");
	    console.log("drops : " +drops);
	    //var conansid = "#content_answer";
	    
	    for (var drop_btn of drops) {
	    	
	    	drop_btn.onclick = function(e) {
	    		console.log("id = " + e.currentTarget.id);
	    		var idx=e.currentTarget.id.substring(4);
	    		var conansid = "#content_answer"+idx;
	    		console.log(conansid)
	    		
	    		if(isOpens[idx-1]==false) {
		    		document.querySelector(conansid).style.display = "block";
		    		drop_btn.innerText = "△";
		    		isOpens[idx-1]=true;
		    		console.log("flag : " + isOpens);
		    	} else {
		    		document.querySelector(conansid).style.display = "none";
		    		drop_btn.innerText = "▽";
		    		isOpens[idx-1]=false;
		    		console.log("flag : " + isOpens);
		    	}//
		    			    	
		    	// 전체 질문 박스들 상태 변경 반영
		    	for(var i=0; i<3; i++) {
		    		
					var conansid = "#content_answer"+(i+1);
					
					// 다른 질문 박스 설정
					otherId = "#drop"+(i+1); 
					otherBtn = document.querySelector(otherId);
					
					if(isOpens[i]==false) {
			    		//document.querySelector(conansid).style.display = "block";
			    		otherBtn.innerText = "▽";
			    		//isOpens[i]=true;
			    		console.log("flag : " + isOpens);
			    	} else {
			    		//document.querySelector(conansid).style.display = "none";
			    		otherBtn.innerText = "△";
			    		//isOpens[i]=false;
			    		console.log("flag : " + isOpens);
			    	} // else
			    	
		    	} // 내부 for  	
		    	
	    	} // drop_btn.onclick : event
	    	
	    } // 외곽 for
	    
	    /* drop.addEventListener("click", function() {
	    	if(isOpen==false) {
	    		document.querySelector("#content_answer").style.display = "block";
	    		drop.innerText = "△";
	    		isOpen=true;
	    	} else {
	    		document.querySelector("#content_answer").style.display = "none";
	    		drop.innerText = "▽";
	    		isOpen=false;
	    	}
	    } );*/
    
    } // onload
    </script>

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
				<img src="/resources/image/gclogo.png" alt="greencar_logo">
			</div>
			<!--logo 끝-->

			<!-- 네비게이션 바 시작-->
			<div id="middle">
				<ul>

					<li id="notice"><a href="#">공지사항</a></li>
					<li id="vl">|</li>
					<li id="products"><a href="#">상품페이지</a></li>
					<li id="vl">|</li>
					<li id="community"><a href="#">커뮤니티</a></li>
					<li id="vl">|</li>
					<li id="newsandissue"><a href="#">뉴스&이슈</a></li>
					<li id="vl">|</li>
					<li id="userAdvice"><a href="#">고객지원</a></li>

				</ul>
			</div>
			<!--네비게이션 바 끝-->
		</nav>
	</div>
	<!-------------------------------메뉴바END-------------------------------->

	<!--마이 페이지 시작-->

	<aside class="mypage">
		<ul>마이페이지
		</ul>
		<ul>회원정보 수정
		</ul>
		<ul>
			1:1 문의내역
			<span id="new"> new</span>
		</ul>
		<ul>
			내가쓴 글 보기
			<span id="howMuch"> 5</span>
		</ul>
		<ul>회원탈퇴
		</ul>


	</aside>
	<!--마이 페이지 끝-->

	<section>
		<!--네모 상자-->
		<div id="top_button_box">
			<button id="function"
				onclick="location.href='/help/frequentlyqaByCate?freCategory=[기능]'">기능</button>
			<button id="homepage"
				onclick="location.href='/help/frequentlyqaByCate?freCategory=[홈페이지]'">홈페이지</button>
			<button id="payment"
				onclick="location.href='/help/frequentlyqaByCate?freCategory=[결제]'">결제</button>
			<button id="others"
				onclick="location.href='/help/frequentlyqaByCate?freCategory=[기타]'">기타</button>
		</div>
		<!-- -------------------------------------- -->

		<div id="frequently_box">
			<div id="frequently_text">자주묻는 질문</div>
			<div id="question">
				<c:forEach items="${list}" var="frequentlyqa" varStatus="vs">
					<p>
						<c:out value="${frequentlyqa.freCategory}"></c:out>
						<c:out value="${frequentlyqa.freTitle}"></c:out>
						<span id="drop${vs.count}">▽</span>
					<hr>
					</p>
					<div id="content_answer${vs.count}">
						<p>
							질문내용 >
							<c:out value="${frequentlyqa.freContent}"></c:out>
						</p>
						<hr>
						<p>
							답변 :
							<c:out value="${frequentlyqa.freAnswer}"></c:out>
						</p>
						<hr>
					</div>
				</c:forEach>
			</div>
		</div>

		<div id="person_question">
			<a href="#">1:1문의로 이동</a>
		</div>

		<div id="brand_center_box">
			<div id="brand_center_text">브랜드 고객센터 이동</div>
			<hr>
			<div id="brand_center_button">
				<button id="audi" href="#" />
				아우디 고객센터
				</button>
				<button id="benz" href="#">벤츠 고객센터</button>
				<button id="cadillac" href="#">캐딜락 고객센터</button>
				<button id="chevrolet" href="#">쉐보레 고객센터</button>
				<button id="ferrari" href="#">페라리 고객센터</button>
				<button id="ford" href="#">포드 고객센터</button>
				<button id="genesis" href="#">제네시스 고객센터</button>
				<button id="honda" href="#">혼다 고객센터</button>
			</div>

		</div>

	</section>


</body>

<!-------------------------------footer시작------------------------------->
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
<!--메뉴바END-->