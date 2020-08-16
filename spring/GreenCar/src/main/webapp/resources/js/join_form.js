/**
 

* 
* 회원 가입 폼
 */
/**spring-security 403에러방지*/
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
    
/** 주소 검색 */
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

/** 이메일 중복 확인 */
function fn_emailCheck() { 
	console.log("emailCheck : 시작");
	var pattern1 = /^[a-z0-9]{3,}@[a-z]{3,10}.[a-z]{2,5}$/;
	$.ajax({
		url : contextPath+"/join/emailCheck",
		type : "post",
		dataType : "json",
		data : {"userEmail" : $("#userEmail").val()},
		success : function(data){
			if ($("#userEmail").val() == ''){
				$("#userEmail").focus();
				alert("이메일을 입력해 주세요.");
				console.log("이메일 없음");
			} else if (pattern1.test($("#userEmail").val())== false){
				$("#userEmail").focus();
				alert("옳바르지 않은 이메일 형식 입니다.");
				console.log("이메일 이상함");
			} else if ($("#userEmail").val() != '' && pattern1.test($("#userEmail").val())== true){
				if(data == 1){
					$("#userEmail").focus();
					alert("중복된 이메일 입니다.");
					console.log("이메일 중복");
				} else if (data == 0) {
					$("#emailCheck").attr("value","y");
					alert("사용가능한 이메일 입니다.");
					emailFlag = true;
					console.log("emailFlag :" +emailFlag);
				} 
			}
			console.log("emailCheck : 끝");
		}
	});
}
/** 닉네임 중복 확인 */
function fn_nickCheck() { 
	console.log("nickCheck : 시작");
	var pattern3 = /^[A-Za-z0-9가-힣]{2,10}$/;
	$.ajax({
		url : contextPath+"/join/nickCheck",
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
/** 전체 확인 */
function fn_submit(){
	console.log("submit : 시작");
	var pattern2 = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,20}$/;
	var pattern4 = /^[0-9]{10,11}$/;
	var pattern5 = /^[\w | \W | 가-힣  | / | - |  (  |  ) | , | ]{5,100}$/;
	var pw = $("#userPw").val();
	var re = $("#userPwRe").val();
	var ph = $("#userPh").val();
	var add1 = $("#userAddress").val();
	var add2 = $("#userAddressDetail").val();
	/** 조건 */
	console.log("emailFlag: " +emailFlag);
	if (pattern2.test(pw) == true && pw == re){
		pwFlag = true;
	} console.log("pwFlag: "+pwFlag);
	console.log("nickFlag: " +nickFlag);
	if (pattern4.test(ph) == true || ph == ''){
		phFlag = true;
	} console.log("phFlag: "+phFlag);
	if (pattern5.test(add1) == true || add1 =='' ){
		address1Flag = true;
	} console.log("add1Flag: "+address1Flag);
	if (pattern5.test(add2) == true || add2 == ''){
		address2Flag = true;
	} console.log("add2Flag: "+address2Flag);
	if ($("#agree_1").is(":checked")){
		agreeFlag = true;
	} console.log("agreeFlag:" +agreeFlag);
	
	/** 비정상 */
	if (emailFlag == false || pwFlag == false || nickFlag == false || phFlag == false || address1Flag == false || address2Flag == false || agreeFlag == false){
		if (emailFlag == false){
			$("#userEmail").focus();
			alert("이메일 중복 확인을 해주세요.");
			console.log("이메일 중복 확인 요망");
		}
		if (pwFlag == false){
			if (pw == ''){
				$("#userPw").focus();
				alert("비밀번호를 입력해 주세요.");
				console.log("비밀번호 없음");
			} else if (re == ''){
				$("#userPwRe").focus();
				alert("재확인 비밀번호를 입력해 주세요.");
				console.log("비밀번호 없음");
			} else if (pw.length <8){
				$("#userPw").focus();
				alert("비밀번호가 너무 짧습니다.");
				console.log("비밀번호 짧음");
			} else if (pw.length >20){
				$("#userPw").focus();
				alert("비밀번호가 너무 깁니다.");
				console.log("비밀번호 김");
			} else if (pattern2.test(pw) == false){
				$("#userPw").focus();
				alert("옳바르지 않은 비밀번호 형식입니다.");
				console.log("비밀번호 이상함");
			} else if (pw != re){
				$("#userPwRe").focus();
				alert("비밀번호가 다릅니다.");
				console.log("비밀번호 다름");
			}
		}
		if (nickFlag == false){
			$("#userNick").focus();
			alert("닉네임 중복 확인을 해주세요.");
			console.log("닉네임 중복 확인 요망");
		}
		if (phFlag == false){
			if (ph.length <10){
				$("#userPh").focus();
				alert("연락처가 너무 짧습니다.");
				console.log("연락처 짧음");
			} else if (ph.length >11){
				$("#userPh").focus();
				alert("연락처가 너무 깁니다.");
				console.log("연락처 김");
			} else if (pattern4.test(ph) == false){
				$("#userPh").focus();
				alert("옳바르지 않은 연락처 형식 입니다.");
				console.log("연락처 이상함");
			}
		}
		if (address1Flag == false){
			if (add1.length <5){
				$("#userAddress").focus();
				alert("기본주소가 너무 짧습니다.");
				console.log("기본 주소 짧음");
			} else if (add1.length >100){
				$("#userAddress").focus();
				alert("기본주소가 너무 깁니다.");
				console.log("기본 주소 김");
			} else if (pattern5.test(add1) == false){
				$("#userAddress").focus();
				alert("옳바르지 않은 기본주소입니다.");
				console.log("기본 주소 이상함");
			}
		}
		if (address2Flag == false){
			if (add2.length <2){
				$("#userAddressDetail").focus();
				alert("상세주소가 너무 짧습니다.");
				console.log("상세 주소 짧음");
			} else if (add2.length >100){
				$("#userAddressDetail").focus();
				alert("상세주소가 너무 깁니다.");
				console.log("상세 주소 김");
			} else if (pattern5.test(add2) == false){
				$("#userAddressDetail").focus();
				alert("옳바르지 않은 상세주소입니다.");
				console.log("상세 주소 이상함");
			}
		}
		if (agreeFlag == false){
			$("agree_1").focus();
			alert("약관에 동의 해주세요.");
			console.log("약관 미동의");
		}
	} else if (emailFlag == true && pwFlag == true && nickFlag == true && phFlag == true && address1Flag == true && address2Flag == true && agreeFlag == true){
		alert("회원가입이 완료 되었습니다.");
		console.log("회원가입 완료");
		document.join.submit();
	}	
}


