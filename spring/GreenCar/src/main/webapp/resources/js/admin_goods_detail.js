/**
 * 관리자 상품 페이지 폼
 */
/** 수정하기 */
function fn_update(){
	console.log("update : 시작");
	var pattern1 = /^[ A-Za-z0-9가-힣]{2,20}$/;
	var pattern2 = /^[0-9]{7,9}$/;
	var name = $("#goodsName").val();
	var price = $("#goodsPrice").val();
	/** 조건 */	
	if (pattern1.test(name)){
		nameFlag = true;
	} console.log("nameFlag: "+nameFlag);
	if (pattern2.test(price)){
		priceFlag = true;
	} console.log("priceFlag: "+priceFlag);
	
	/** 비정상 */	
	if (nameFlag == false || priceFlag == false){
		if (nameFlag == false){
			if (name == ''){
				$("#goodsName").focus();
				alert("상품명을 입력해 주세요.");
				console.log("상품명 미입력");
			} else if (name.length <2){
				$("#goodsName").focus();
				alert("상품명이 너무 짧습니다.");
				console.log("상품명 짧음");
			} else if (name.length >=20){
				$("#goodsName").focus();
				alert("상품명이 너무 깁니다.");
				console.log("상품명 김");
			} else if (pattern1.test(name) == false){
				$("#goodsName").focus();
				alert("옳바르지 않은 상품 명입니다.");
				console.log("상품명 이상함");
			}
		} else if (priceFlag == false){
			if (price == ''){
				$("#goodsPrice").focus();
				alert("상품금액을 입력해 주세요.");
				console.log("상품금액 미입력");
			} else if (price.length <7){
				$("#goodsPrice").focus();
				alert("상품금액이 너무 적습니다.");
				console.log("상품금액 작음");
			} else if (price.length >=10){
				$("#goodsPrice").focus();
				alert("상품금액이 너무 큽니다.");
				console.log("상품금액 큼");
			} else if (pattern2.test(price) == false){
				$("#goodsPrice").focus();
				alert("상품금액이 옳바르지 않습니다.");
				console.log("상품금액 이상함");
			}
		}
	/** 정상 */		
	} else if (nameFlag == true && priceFlag == true){
		alert("수정이 완료 되었습니다.");
		console.log("수정 완료");
		document.update.submit();
	}
}	

/** 취소하기 */
function fn_cancel(){
	location.href = contextPath;
}
/** 검색하기 */
function fn_search(){
	this.Keyword = document.querySelector('input[name = "goodsNo"]');	
}


$(function() {
    $("#update_1").on('change', function(){
        readURL1(this);
    });
    $("#update_2").on('change', function(){
        readURL2(this);
    });
});
function readURL1(input) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();
       reader.onload = function (e) {
          $('#preImg1').attr('src', e.target.result);
       }
       reader.readAsDataURL(input.files[0]);
    }
}
function readURL2(input) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();
       reader.onload = function (e) {
          $('#preImg2').attr('src', e.target.result);
       }
       reader.readAsDataURL(input.files[0]);
    }
}