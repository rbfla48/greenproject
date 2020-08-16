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
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<jsp:include page="/resources/jsp/menu.jsp" flush="false"/>
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
			<div id="brand_center_text">브랜드 홈페이지 이동</div>
			<hr>
			<div id="brand_center_button">
				<button id="audi" onclick='location.href="https://www.audi.co.kr/kr/web/ko/company/customerinfo.html"'>아우디</button>
				<button id="benz" onclick='location.href="https://www.mercedes-benz.co.kr/passengercars.html?group=all&subgroup=see-all&view=BODYTYPE"'>벤츠 </button>
				<button id="cadillac" onclick="https://www.cadillac.co.kr/index.php">캐딜락</button>
				<button id="chevrolet" onclick="https://www.chevrolet.co.kr/index.jsp">쉐보레</button>
				<button id="ferrari" onclick="https://seoul.ferraridealers.com/ko_kr/">페라리</button>
				<button id="ford" onclick="https://www.ford.co.kr/">포드</button>
				<button id="genesis" onclick="https://www.genesis.com/kr/ko/genesis.html">제네시스</button>
				<button id="honda" onclick="https://www.hondakorea.co.kr/">혼다</button>
			</div>

		</div>

	</section>


</body>

<!-------------------------------footer시작------------------------------->
<jsp:include page="/resources/jsp/footer.jsp" flush="false" />
