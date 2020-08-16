$(function() {
    	//상태변수 초기화
	    $("#brand").val("");
	    $("#type").val("");
	    $("#size").val("");
	    $("#price").val("");
	    $("#efficient").val("");
	    $("#fuel").val("");
	    
    	//검색하기 버튼 event handler
    	$("#search_button").click(function() {
    		console.log("검색하기");
    		
    		//6가지 상태변수 할당
    		var brand=$("#brand").val();
    		var type=$("#type").val();
    	    var size=$("#size").val();
    	    var price=$("#price").val();
    	    var efficient=$("#efficient").val();
    	    var fuel=$("#fuel").val();
    	    
    	    
    	    console.log("brand : " +$("#brand").val());
    	    console.log("type : " +$("#type").val());
    	    console.log("size : " +$("#size").val());
    	    console.log("price : " +$("#price").val());
    	    console.log("efficient : " +$("#efficient").val());
    	    console.log("fuel : " +$("#fuel").val());
    	    
    	    var lenCarStatus = (type + size + price + efficient + fuel).length;
    	    console.log("lenCarStatus : "+ lenCarStatus);
    	    
    	  	
    	  	if(brand == "") {
    	  		alert("브랜드를 선택해주세요");
    	  	} else if(brand != "" && lenCarStatus == 0) {
    	  		//브랜드는 선택, 나머지 미선택
    	  		location.href = "/goods/detailList?brandCode="+brand;
    	  	} else {
    	  		// price, efficient 인자 초기화
    	  		price = price == "" ? 0: price;
    	  		efficient = efficient == "" ? 0: efficient;
    	  		
    	  		var carStatusParams = "&goodsType="+type
    	  							  + "&goodsSize="+size
    	  							  + "&goodsPrice="+price
    	  							  + "&goodsEfficient="+efficient
    	  							  + "&goodsFuel="+fuel;
    	  		
    	  		location.href = "/goods/detailList?brandCode="+brand+carStatusParams;
    	  	}
    	});
    	
    	//브랜드 버튼 event handler
    	$("#brand_button button").click(function(e) {
    		console.log("버튼 : "+e.target.id);
    		var id=e.target.id;
    		console.log("값 :" +$("#"+id).attr("title"));
    		$("#brand").val($("#"+id).attr("title"));
    	}) 
    	
    	//차종 event handler
    	$("#size_button button").click(function(e) {
    		console.log("버튼 : "+e.target.id);
    		var id=e.target.id;
    		console.log("값 :" +$("#"+id).attr("title"));
    		$("#size").val($("#"+id).attr("title"));
    	}) 
    	
    	//분류 event handler
    	$("#type_button button").click(function(e) {
    		console.log("버튼 : "+e.target.id);
    		var id=e.target.id;
    		console.log("값 :" +$("#"+id).attr("title"));
    		$("#type").val($("#"+id).attr("title"));
    	}) 
    	
    	//가격 event handler
    	$("#price_button button").click(function(e) {
    		console.log("버튼 : "+e.target.id);
    		var id=e.target.id;
    		console.log("값 :" +$("#"+id).attr("title"));
    		$("#price").val($("#"+id).attr("title"));
    	}) 
    	
    	//연비 event handler
    	$("#efficient_button button").click(function(e) {
    		console.log("버튼 : "+e.target.id);
    		var id=e.target.id;
    		console.log("값 :" +$("#"+id).attr("title"));
    		$("#efficient").val($("#"+id).attr("title"));
    	}) 
    	
    	//연료 event handler
    	$("#fuel_button button").click(function(e) {
    		console.log("버튼 : "+e.target.id);
    		var id=e.target.id;
    		console.log("값 :" +$("#"+id).attr("title"));
    		$("#fuel").val($("#"+id).attr("title"));
    	}) 
    	
    });