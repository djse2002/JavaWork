
// 메뉴바
$(document).ready(function(){
	$("nav#top_menu").mouseenter(function(){
		$("#menubar").fadeIn("slow");
	});

	$("#menubar").mouseenter(function(){
		$("#menubar").css("display", "block");
	});
	
	$("#menubar").mouseleave(function(){
		$("#menubar").fadeOut("slow");
	});
});

// 메인이미지
$(document).ready(function(){
		
	$("#m1").mouseenter(function(){
		$("#m1").animate({"opacity" : "1"}, 500);
	});

	$("#m1").mouseleave(function(){
		$("#m1").animate({"opacity" : "0.7"}, 500);
	});

	$("#m2").mouseenter(function(){
		$("#m2").animate({"opacity" : "1"}, 500);
	});

	$("#m2").mouseleave(function(){
		$("#m2").animate({"opacity" : "0.7"}, 500);
	});

	$("#m3").mouseenter(function(){
		$("#m3").animate({"opacity" : "1"}, 500);
	});

	$("#m3").mouseleave(function(){
		$("#m3").animate({"opacity" : "0.7"}, 500);
	});

	$("#m4").mouseenter(function(){
		$("#m4").animate({"opacity" : "1"}, 500);
	});

	$("#m4").mouseleave(function(){
		$("#m4").animate({"opacity" : "0.7"}, 500);
	});

	$("#m5").mouseenter(function(){
		$("#m5").animate({"opacity" : "1"}, 250);
	});

	$("#m5").mouseleave(function(){
		$("#m5").animate({"opacity" : "0.7"}, 250);
	});

});

	// 섹션 이미지 4개
$(document).ready(function(){

	// 뉴스룸
	$("#newsroom").on({
		mouseenter : function(){
			$("#newsroom").animate({"opacity":"0.5"}, 250);
		}
		, mouseleave : function(){
			$("#newsroom").animate({"opacity":"1"}, 250);
		}
	});

	// 갤러리
	$("#gallery").on({
		mouseenter : function(){
			$("#gallery").animate({"opacity":"0.5"}, 250);
		}
		, mouseleave : function(){
			$("#gallery").animate({"opacity":"1"}, 250);
		}
	});

	// 기업윤리
	$("#businessEthics").on({
		mouseenter : function(){
			$("#businessEthics").animate({"opacity":"0.5"}, 250);
		}
		, mouseleave : function(){
			$("#businessEthics").animate({"opacity":"1"}, 250);
		}
	});

	// 인사철학
	$("#philosophy").on({
		mouseenter : function(){
			$("#philosophy").animate({"opacity":"0.5"}, 250);
		}
		, mouseleave : function(){
			$("#philosophy").animate({"opacity":"1"}, 250);
		}
	});

});


// 공연정보
//http://openAPI.seoul.go.kr:8088/(인증키)/xml/SJWPerform/1/5

$(document).ready(function(){
	
	var api_key = "6f54765764776b7238304661644c6b";
	
	// XML
	var url = "http://openapi.seoul.go.kr:8088/" + api_key + "/xml/SJWPerform/1/5";
		
	$.ajax({
		url : url,
		type : "GET",
		cache : false,
		success : function(data, status){
			if(status == "success") parseXML(data);
		}
	});
	
});

$(document).ready(function(){
	$("#sectionBar img").css("display", "none");
});


function parseXML(xmlDOM) {
    var div = "";
	
    var i = 1;
	$(xmlDOM).find("row").each(function(index){
		div += "<div class=\"\"><p>"
		+ $(this).find().text() + "</p><span>"
		+ $(this).find().text() + " - "
		+ $(this).find().text() + "</span></div>";
	});
	$("#performance_info").html(div);
}

// JSON
// function parseJSON(jsonObj) {
// 	var div = "";

// 	var row = jsonObj.SJWPerform.row;
// 	var i;
// 	for (i = 1; i <= row.length; i++) {
// 		div += "<div id=\"performance\"><div id=\"content\">"
// 		+ row[i].TITLE + "\n" + row[i].START_DATE + " - "
// 		+ row[i].END_DATE + "</div></div>";
// 	}
// 	$("#performance_info").html(div);
// }