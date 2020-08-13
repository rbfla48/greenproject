function fn_nickCheck() { 
	console.log("nickCheck : 시작");
	var pattern3 = /^[A-Za-z0-9가-힣]{2,10}$/;
	$.ajax({
		url : contextPath+"/mypage/nickCheck",
		type : "post",
		dataType : "json",
		data : {"userNick" : $("#userNick").val()},
		success : function(data){
			if($("#userNick").val() == ''){
				$("#userNick").focus();
				alert("닉네임을 입력해 주세요.");
				console.log("닉네임 없음");
			} else if ($("#userNick").val().length<2){
				$("#userNick").focus();
				alert("닉네임이 너무 짧습니다.");
				console.log("닉네임 짧음");
			} else if ($("#userNick").val().length>10){
				$("#userNick").focus();
				alert("닉네임이 너무 깁니다.");
				console.log("닉네임 김");
			} else if (pattern3.test($("#userNick").val())==false){
				$("#userNick").focus();
				alert("옳바르지 않은 닉네임 형식입니다.");
				console.log("닉네임 이상함");
			} else if ($("#userNick").val() != '' && pattern3.test($("#userNick").val()) == true){
				if(data == 1){
					$("#userNick").focus();
					alert("중복된 닉네임 입니다.");
					console.log("닉네임 중복");
				} else if (data == 0) {
					$("#nickCheck").attr("value","y");
					alert("사용가능한 닉네임 입니다.");
					nickFlag = true;
					console.log("nickFlag :" +nickFlag);
				}
			}
			console.log("nickCheck : 끝");
		}
	});
}

function searchPost() {
	  new daum.Postcode({
	      oncomplete: function(data) {
	          var fullAddr = ''; // 최종 주소 변수
	          var extraAddr = ''; // 조합형 주소 변수
	 
	          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	              fullAddr = data.roadAddress;
	          } else { // 사용자가 지번 주소를 선택했을 경우(J)
	              fullAddr = data.jibunAddress;
	          }
	          // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	          if(data.userSelectedType === 'R'){
	              //법정동명이 있을 경우 추가한다.
	              if(data.bname !== ''){
	                  extraAddr += data.bname;
	              }
	              // 건물명이 있을 경우 추가한다.
	              if(data.buildingName !== ''){
	                  extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	              }
	              // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	              fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	          }
	          document.getElementById('userAddress').value = fullAddr;
	      } 
	  }).open();
	};

// spring  security post 전송시 403 에러 대처 패치
$(document).ready(function(){

	   

    // spring  security post 전송시 403 에러 대처 패치

    var token = $("meta[name='_csrf']").attr("content");

    var header = $("meta[name='_csrf_header']").attr("content");

   

    $(function() {

        $(document).ajaxSend(function(e, xhr, options) {

            xhr.setRequestHeader(header, token);

        });

    });
});