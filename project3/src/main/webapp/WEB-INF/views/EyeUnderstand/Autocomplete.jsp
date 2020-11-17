<%@page import="EyeUnderstand.model.FavoriteVO"%>
<%@page import="java.util.List"%>
<%@page import="EyeUnderstand.model.MemberVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v4.1.1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- 메타태그를 이용하여 IE의 문서모드를 고정 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--  모바일 환경에서 제대로 작동 할수 있게 해줌 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet" href="resources/css/css2.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/album/">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script src="https://unpkg.com/hangul-js" type="text/javascript"></script>
<script src="resources/js/script2.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
html, body {
	height: 100%;
	width: 100%;
	overflow: hidden;
}

#main {
	display: grid;
	grid-template-columns: 3fr 1fr;
}

#main #contents {
	min-height: 500px;
	background-color: #00ffff;
	margin-right: 10px;
}

#main #sidebar {
	min-height: 500px;
	background-color: #00bfff;
}

#footer {
	margin-top: 10px;
	background-color: #00bfff;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( max-width :600px) { /*가로 너비가 600px 이하일 때 아래 스타일 적용*/
	#main {
		display: block;
	}
	#main #contents {
		margin-bottom: 10px;
		margin-right: 0px;
	}
	#main #sidebar {
		min-height: 0;
	}
	table {
		width: 100%;
	}
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
	
	@font-face {
		font-family: 'KOTRA_BOLD-Bold';
		src:
			url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff')
			format('woff');
		font-weight: normal;
		font-style: normal;
	}
	
	 .test {
            transform: scale(1);
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transition: all 0.3s ease-in-out;
            /* 부드러운 모션을 위해 추가*/
        }

        .test:hover {
            transform: scale(1.4);
            -webkit-transform: scale(1.4);
            -moz-transform: scale(1.4);
            -ms-transform: scale(1.4);
            -o-transform: scale(1.4);
        }
        
        .button {
            transform: scale(1);
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transition: all 0.3s ease-in-out;
            /* 부드러운 모션을 위해 추가*/
        }

        .button:hover {
            transform: scale(1.4);
            -webkit-transform: scale(1.4);
            -moz-transform: scale(1.4);
            -ms-transform: scale(1.4);
            -o-transform: scale(1.4);
        }
}
</style>
</head>
<body style="font-family: 'KOTRA_BOLD-Bold';">

	<%
  MemberVO vo = (MemberVO) session.getAttribute("vo");
  FavoriteVO f_vo = (FavoriteVO) session.getAttribute("f_vo");
%>

	<!-- 키보드 -->
<div>
	<div id="top_top" style="width: 100%; height: 40%;">
		<div style="width: 100%; height: 100%; border: soild; 1 px; margin-left: 20%; margin-top: 3%;">
			<form action="${path}/favorite_insert.do" " method="post">
				<input type="hidden" id="eng_text" readonly> <input
					style="border-radius: 25px; width: 59%; height: 100px; margin-right: 3%;"
					class="keyboardInput searchInput" id="test" type="text"
					name="favoriteword" value="" required> <a
					href="favorite_insert.do">
					<button id="btnclick" type="submit" style="border-radius: 25px;">
						<img alt="" src="resources/png/speaker.png"
							style="width: 100px; height: 100px;">
					</button>
				</a>
			</form>
		</div>
		<div id="top_bottom" style="width: 100%; height: 60%; margin-top: 40px;">
			<div class="container" style="width: 100%; height: 100%;">
				<table id="favorite"
					style="margin: 1%; text-align: center; padding: 0.2%; margin:30px;">
					<%List<FavoriteVO> wordlist = (List<FavoriteVO>)request.getAttribute("wordlist");
			      			for(int i=0; i<wordlist.size(); i++){%>
					<td><button class="button" style="height: 200px; width: 200px; margin-right:10px; border-radius:25px; font-size:20px; font-family: 'KOTRA_BOLD-Bold'; font-weight:800;"
						 id="<%=i+1%>" value="<%=wordlist.get(i).getFAVORITEWORD()%>"><%=wordlist.get(i).getFAVORITEWORD()%></button></td>
					<%}%>
				</table>
				<% String temp = " ";%>
			</div>
		</div>
	</div>
</div>
</body>
<script>
/*  function trigger(){
	    document.getElementById("test").click();
	} */
	
	$("#test").trigger("click");
	$("#test").get(0).click();

		$(function auto() { //화면 다 뜨면 시작
	 <%String[] arr = (String[]) request.getAttribute("testlist");%>
               var searchSource = [];
            <%for (int i = 0; i < arr.length; i++) {%>
            
               searchSource.push("<%=arr[i]%>");
     <%}%>
         console.log(searchSource);
      
      $(".searchInput").autocomplete({//오토 컴플릿트 시작
            source : searchSource, // source 는 자동 완성 대상
            select : function(event, ui) { //아이템 선택시
               console.log(ui.item);
            },
            focus : function(event, ui) { //포커스 가면
               return false;//한글 에러 잡기용도로 사용됨
            },
            matchContains : false,
            minLength : 1,// 최소 글자수
            autoFocus : false, //첫번째 항목 자동 포커스 기본값 false
            classes : { //잘 모르겠음
               "ui-autocomplete" : "highlight"
            },
            delay : 100, //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
            //            disabled: true, //자동완성 기능 끄기
            position : {
               my : "right top",
               at : "right bottom"
            }, //잘 모르겠음
            close : function(event) { //자동완성창 닫아질때 호출
                console.log(event);
             }
         });
      });
		
		$(function() {
		    var e = $.Event('keypress');
		    e.which = 40; // Enter
		    $('#test').trigger(e);
		});
		
		//자동으로 방향키입력 키보드안쓰고 마우스만 사용해야 먹음.
		/* $(".card mb-4 shadow-sm").text(""); */
		
</script>

<script>
        const text = document.getElementById("test")
        const btnclick = document.getElementById("btnclick")
        btnclick.addEventListener("click", e => {
            speak(text.value, {
                rate: 0.6,
                pitch: 1.2,
                lang: "ko-KR"
            })
        })
</script>
<script>
	$('.button').click(function(){
	    var temp = $(this).attr("value")
	    		const button = document.getElementById("1")
				button.addEventListener("click", e => {
					speak(temp, {
						rate: 0.8,
					    pitch: 1.2,
					    lang: "ko-KR"
					    })
					})
		});
	
	$('.button').click(function(){
	    var temp = $(this).attr("value")
	    		const button = document.getElementById("2")
				button.addEventListener("click", e => {
					speak(temp, {
						rate: 0.8,
					    pitch: 1.2,
					    lang: "ko-KR"
					    })
					})
		});
	
	$('.button').click(function(){
	    var temp = $(this).attr("value")
	    		const button = document.getElementById("3")
				button.addEventListener("click", e => {
					speak(temp, {
						rate: 0.8,
					    pitch: 1.2,
					    lang: "ko-KR"
					    })
					})
		});
	
	$('.button').click(function(){
	    var temp = $(this).attr("value")
	    		const button = document.getElementById("4")
				button.addEventListener("click", e => {
					speak(temp, {
						rate: 0.8,
					    pitch: 1.2,
					    lang: "ko-KR"
					    })
					})
		});
	
	$('.button').click(function(){
	    var temp = $(this).attr("value")
	    		const button = document.getElementById("5")
				button.addEventListener("click", e => {
					speak(temp, {
						rate: 0.8,
					    pitch: 1.2,
					    lang: "ko-KR"
					    })
					})
		});
		


</script>

<script>
    function speak(text, opt_prop) {
        if (typeof SpeechSynthesisUtterance === "undefined" || typeof window.speechSynthesis === "undefined") {
            alert("이 브라우저는 음성 합성을 지원하지 않습니다.")
            return
        }
        console.log(opt_prop)

        window.speechSynthesis.cancel() // 현재 읽고있다면 초기화

        const prop = opt_prop || {}

        const speechMsg = new SpeechSynthesisUtterance()
        speechMsg.rate = prop.rate || 1 // 속도: 0.1 ~ 10      
        speechMsg.pitch = prop.pitch || 1 // 음높이: 0 ~ 2
        speechMsg.lang = prop.lang || "ko-KR"
        speechMsg.text = text

        // SpeechSynthesisUtterance에 저장된 내용을 바탕으로 음성합성 실행
        window.speechSynthesis.speak(speechMsg)
    }
</script>

</html>