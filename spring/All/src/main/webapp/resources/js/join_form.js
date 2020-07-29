/**
 * 회원 가입 폼
 */

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
	$.ajax({
		url : contextPath+"/join/emailCheck",
		type : "post",
		dataType : "json",
		data : {"userEmail" : $("#userEmail").val()},
		success : function(data){
			if ($("#userEmail").val().length > 8){
				if(data == 1){
					alert("중복된 이메일 입니다.");
					emailFlag = false;
				} else if (data == 0) {
					$("#emailCheck").attr("value","y");
					alert("사용가능한 이메일 입니다.");
					emailFlag = true;
				} 
				console.log("emailFlag : " +emailFlag);
			} else if ($("#userEmail").val() == '') {
				alert("이메일을 입력해 주세요.");
			} else {
				alert("이메일이 너무 짧습니다.");
			}
		}
	});
	console.log("emailCheck : 끝");
}

/** 닉네임 중복 확인 */
function fn_nickCheck() { 
	console.log("nickCheck : 시작");
	$.ajax({
		url : contextPath+"/join/nickCheck",
		type : "post",
		dataType : "json",
		data : {"userNick" : $("#userNick").val()},
		success : function(data){
			if ($("#userNick").val().length > 1){
				if(data == 1){
					alert("중복된 닉네임 입니다.");
					nickFlag = false;
				} else if (data == 0) {
					$("#nickCheck").attr("value","y");
					alert("사용가능한 닉네임 입니다.");
					nickFlag = true;
				}
				console.log("nickFlag : " +nickFlag);
			} else if ($("#userNick").val() == '') {
				alert("닉네임을 입력해 주세요.");
			} else {
				alert("닉네임이 너무 짧습니다.");
			}
		}
	});
	console.log("nickCheck : 끝");
}

/** 전체 확인 */
function fn_submit(){
	console.log("submit : 시작");
	var pw1 = $("#userPassword").val();
	var pw2 = $("#userPasswordRe").val();	
	
	if (pw1 != '' && pw2 != ''){
		if (pw1.length >7 && pw2.length >7){
			if (pw1 == pw2) {
				passFlag = true;
			}
		}
	}
	if (emailFlag == false || passFlag == false || nickFlag == false){
		console.log(" 3중 불일치 ");
		if (emailFlag == false) {
			alert("이메일 중복 확인을 해주세요.");
			console.log("이메일 중복 확인 요망");
			$("#userEmail").focus();
		} else if (passFlag == false) {
			alert("비밀번호가 다릅니다.");
			console.log("비밀번호 다름");
			$("#userPasswordRe").val('');
			$("#userPasswordRe").focus();
		}else if (nickFlag == false){
			alert("닉네임 중복 확인을 해주세요");
			console.log("닉네임 중복 확인 요망");
			$("#userNick").focus();
		}
	} else if (emailFlag == true && passFlag == true && nickFlag == true){
		alert("회원 가입 되었습니다.");
		console.log("전송 완료");
		document.join.submit();
	}
}

