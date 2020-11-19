<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Album example · Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <style>
        html,
        body {
            height: 100%;
            overflow: hidden
        }

        .h-div {
            height: 96%;
            border: 3px #f99 solid
        }

        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        @font-face {
            font-family: 'KOTRA_BOLD-Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .card {
            border-radius: 21px 21px 21px 21px;
        }

        .card {
            transform: scale(1);
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transition: all 0.3s ease-in-out;
            /* 부드러운 모션을 위해 추가*/
        }

        .card:hover {
            transform: scale(1.4);
            -webkit-transform: scale(1.4);
            -moz-transform: scale(1.4);
            -ms-transform: scale(1.4);
            -o-transform: scale(1.4);
        }
        
		#keyboard {
            transform: scale(1);
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transition: all 0.3s ease-in-out;
            /* 부드러운 모션을 위해 추가*/
        }

        #keyboard:hover {
            transform: scale(1.4);
            -webkit-transform: scale(1.4);
            -moz-transform: scale(1.4);
            -ms-transform: scale(1.4);
            -o-transform: scale(1.4);
        }

        .img {
            width: 325px;
            height: 280px;
            overflow: hidden
        }
    </style>
    <!-- Custom styles for this template -->
    <link href="resources/css/album.css" rel="stylesheet">
</head>

<body style="font-family: 'KOTRA_BOLD-Bold'; background-color:#343a40;">
    <header style="height: 30%;" >
		<a href="list.do">
			<div>
				<img id="keyboard" alt="" src="resources/png/keyboard_pic.png" style="width:5%; float:right; background-color:white; padding:1%; border-radius:15px; margin:3%; margin-right:10%">
			</div>
		</a>
        <div class="container text-center" style="height:100%">
            <div style="height: 60%; padding: 5%;">
                <h1 style="color: white;">의사표현</h1>
                <p class="lead text-muted" style="color: whitesmoke;">감정 또는 요청 </p>
            </div>
            <div style="height: 45%;">
                <a href="request.do" class="btn btn-secondary my-2"
                    style="font-size:250%; width: 30%; height: 80%; line-height: 250%; margin-right: 25%;">요청</a>
                <a href="emoticon.do" class="btn btn-primary my-2"
                    style="font-size:250%; width: 30%; height: 80%; line-height: 250%; color: #424242; background-image: linear-gradient(to top, #c1dfc4 0%, #deecdd 100%); border-color:#deecdd;">감정</a>
            </div>
        </div>
    </header>

    <main role="main" style="height: 80%;">
        <div class="album" style="height:100%; padding-top: 4%; background-color:#343a40;">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <button class="card mb-4 shadow-sm smiling" value="행복해요"
                            style="border: 0px; height: 80%; width: 80%;" onclick="location.href='#'">
                            <div style="padding: 15%;">
                                <div>
                                    <img src="resources/img/smiling.svg" alt="" style=" width:100%; height:80%;">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="font-size:20px;">행복해요</p>
                                </div>
                            </div>
                        </button>
                    </div>

                    <div class="col-md-3">
                        <button class="card mb-4 shadow-sm crying" value="슬퍼요"
                            style="border: 0px; height: 80%; width: 80%;" onclick="location.href='#'">
                            <div style="padding: 15%;">
                                <div>
                                    <img src="resources/img/crying.svg" alt="" style=" width:100%; height:80%;">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="font-size:20px;">슬퍼요</p>
                                </div>
                            </div>
                        </button>
                    </div>

                    <div class="col-md-3">
                        <button class="card mb-4 shadow-sm confused" value="짜증나요"
                            style="border: 0px; height: 80%; width: 80%;" onclick="location.href='#'">
                            <div style="padding: 15%;">
                                <div>
                                    <img src="resources/img/confused.svg" alt="" style=" width:100%; height:80%;">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="font-size:20px;">짜증나요</p>
                                </div>
                            </div>
                        </button>
                    </div>

                    <div class="col-md-3">
                        <button class="card mb-4 shadow-sm in_love" value="사랑해요"
                            style="border: 0px; height: 80%; width: 80%;" onclick="location.href='#'">
                            <div style="padding: 15%;">
                                <div>
                                    <img src="resources/img/in-love.svg" alt="" style=" width:100%; height:80%;">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="font-size:20px;">사랑해요</p>
                                </div>
                            </div>
                        </button>
                    </div>

                    <div class="col-md-3">
                        <button class="card mb-4 shadow-sm sleeping" value="졸려요"
                            style="border: 0px; height: 80%; width: 80%;" onclick="location.href='#'">
                            <div style="padding: 15%;">
                                <div>
                                    <img src="resources/img/sleeping.svg" alt="" style=" width:100%; height:80%;">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="font-size:20px;">졸려요</p>
                                </div>
                            </div>
                        </button>
                    </div>


                    <div class="col-md-3">
                        <button class="card mb-4 shadow-sm grinning" value="고마워요"
                            style="border: 0px; height: 80%; width: 80%;" onclick="location.href='#'">
                            <div style="padding: 15%;">
                                <div>
                                    <img src="resources/img/grinning.svg" alt="" style=" width:100%; height:80%;">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="font-size:20px;">고마워요</p>
                                </div>
                            </div>
                        </button>
                    </div>

                    <div class="col-md-3">
                        <button class="card mb-4 shadow-sm laughing" value="멋져요"
                            style="border: 0px; height: 80%; width: 80%;" onclick="location.href='#'">
                            <div style="padding: 15%;">
                                <div>
                                    <img src="resources/img/laughing.svg" alt="" style=" width:100%; height:80%;">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="font-size:20px;">멋져요</p>
                                </div>
                            </div>
                        </button>
                    </div>

                    <div class="col-md-3">
                        <button class="card mb-4 shadow-sm joy" value="즐거워요"
                            style="border: 0px; height: 80%; width: 80%;" onclick="location.href='#'">
                            <div style="padding: 15%;">
                                <div>
                                    <img src="resources/img/joy.svg" alt="" style=" width:100%; height:80%;">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="font-size:20px;">즐거워요</p>
                                </div>
                            </div>
                        </button>
                    </div>

                </div>
            </div>
        </div>
    </main>
</body>

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

    // 이벤트 영역
    const smiling = document.getElementsByClassName("smiling")[0]
    const crying = document.getElementsByClassName("crying")[0]
    const confused = document.getElementsByClassName("confused")[0]
    const in_love = document.getElementsByClassName("in_love")[0]
    const sleeping = document.getElementsByClassName("sleeping")[0]
    const grinning = document.getElementsByClassName("grinning")[0]
    const laughing = document.getElementsByClassName("laughing")[0]
    const joy = document.getElementsByClassName("joy")[0]

    smiling.addEventListener("click", e => {
        speak(smiling.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    crying.addEventListener("click", e => {
        speak(crying.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    confused.addEventListener("click", e => {
        speak(confused.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    in_love.addEventListener("click", e => {
        speak(in_love.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    sleeping.addEventListener("click", e => {
        speak(sleeping.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    grinning.addEventListener("click", e => {
        speak(grinning.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    laughing.addEventListener("click", e => {
        speak(laughing.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    joy.addEventListener("click", e => {
        speak(joy.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })
</script>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="resources\vendor\jquery\jquery.slim.min.js"><\/script>')</script>
<script src="resources\js\bootstrap.bundle.min.js"></script>

</html>
