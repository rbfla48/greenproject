/**
 * 상품 상세 페이지
 */

/** 구매 확인 */
function fn_buy() {
	console.log("buy : 시작");
	if ($("input:radio[name='optionColor']").is(":checked")==true){
		colorFlag = true;
		console.log("colorFlag : " +colorFlag);
	}
	if ($("input:radio[name='optionCheck']").is(":checked")==true){
		optionFlag = true;
		console.log("optionFlag : " +optionFlag);
	}
	
	if (colorFlag == true && optionFlag == true){
		alert("구매가 완료되었습니다.");
		console.log("구매 완료");
		location.href = "http://localhost";
	} else if (colorFlag != true || optionFlag !=true){
		if (colorFlag != true){
			$("#option_color").focus();
			alert("색상을 선택해 주세요.");
			console.log("색상 선택");
		} else if (optionFlag != true){
			$("#option_select").focus();
			alert("옵션을 선택해 주세요.");
			console.log("옵션 선택");
		}
	}
}
function fn_option1() {
	console.log("option1Cost : " +option1Cost);
	alert("￦ "+option1Cost+" 원이 추가될 예정입니다.");
}
function fn_option2() {
	console.log("option2Cost : " +option2Cost);
	alert("￦ "+option2Cost+" 원이 추가될 예정입니다.");
}
function fn_option3() {
	console.log("option3Cost : " +option3Cost);
	alert("￦ "+option3Cost+" 원이 추가될 예정입니다.");
}
