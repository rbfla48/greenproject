/**
 * 관리자 상품 페이지 폼
 */
/** 수정하기 */
function fn_update(){
	console.log("update : 시작");
	let nameFlag = false;
	let priceFlag = false;
	
	/** 상품명 */
	if ($("#goodsName").val() == ''){
		console.log("상품명 미입력");
		alert("상품명 입력해주세요.");
		$("#goodsName").focus();
		console.log("nameFlag : " +nameFlag);
	} else if ($("#goodsName").val() != ''){
		nameFlag = true;
		console.log("nameFlag : " +nameFlag);
	}
	/** 상품 가격 */
	if ($("#goodsPrice").val() == ''){
		console.log("상품가격 미입력");
		alert("상품가격 입력해주세요.");
		$("#goodsPrice").focus();
		console.log("priceFlag : " +priceFlag);
	} else if ($("#goodsPrice").val() != ''){
		priceFlag = true;
		console.log("priceFlag : " +priceFlag);
	}
	
	/** 상품 전체 */
	if (nameFlag == true && priceFlag == true){
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

