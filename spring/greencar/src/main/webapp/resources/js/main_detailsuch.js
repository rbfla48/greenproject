window.onload  = function() {

    //panel_status 문자열로 접힘/펼쳐짐상태 정의
    var panel_status = "folded";//기본상태:접힘

    var detail_btn = document.getElementById("detail_btn");

    var panel = document.getElementById("panel");
    //패널 기본값
    panel.style.width = "100%";
    panel.style.height = "0";
    panel.style.overflow = "hidden";
    //트랜지션 속성 설정
    panel.style.transitionProperty = "height";
    panel.style.transitionDelay = ".1s";
    panel.style.transitionDuration = ".5s";

    //버튼클릭시 
    detail_btn.onclick = function(e) {
    
        if (panel_status == "folded") {
            panel.style.height = "500px";   
            panel_status = "spread";

        }else if(panel_status == "spread") {
            panel.style.height = "0";   
            panel_status = "folded";
        }
    };

}