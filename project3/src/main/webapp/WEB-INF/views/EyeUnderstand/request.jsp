<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v4.1.1">
<title>Album example · Bootstrap</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/album/">

<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">


<style>
html, body {
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

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

@font-face {
	font-family: 'KOTRA_BOLD-Bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.card-text {
	font-size: 18px;
	margin-top:10%;
}

.mb-4 {
	border: 0px;
	height: 80%;
	width: 80%;
}

.mb-4>div {
	margin: 10%;
}

.card-body {
	padding-right: 5%;
	padding-left: 5%;
}

.card {
	border-radius: 21px 21px 21px 21px;
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
	border-radius: 21px 21px 21px 21px;
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

</style>
<!-- Custom styles for this template -->
<link href="resources/css/album.css" rel="stylesheet">
</head>

<body style="font-family: 'KOTRA_BOLD-Bold'; background-color: #343a40;">
	<header style="height: 30%;" >
		<a href="list.do">
			<div>
				<img id="keyboard" alt="" src="resources/png/keyboard_pic.png" style="width:5%; float:right; background-color:white; padding:1%; border-radius:15px; margin:3%; margin-right:10%">
			</div>
		</a>
		<div class="container text-center" style="height: 100%">
			<div style="height: 60%; padding: 5%;">
				<h1 style="color: white;">의사표현</h1>
				<p class="lead text-muted" style="color: whitesmoke;">감정 또는 요청</p>
			</div>
			<div style="height: 45%;">
				<a href="request.do" class="btn btn-primary my-2"
					style="font-size: 250%; width: 30%; height: 80%; line-height: 250%; margin-right: 25%; color: #424242; background-image: linear-gradient(to top, #c1dfc4 0%, #deecdd 100%); border-color: #deecdd;">요청</a>
				<a href="emoticon.do" class="btn btn-secondary my-2"
					style="font-size: 250%; width: 30%; height: 80%; line-height: 250%;">감정</a>
			</div>
		</div>
	</header>

	<main role="main" style="height: 80%;">
	<div class="album"
		style="height: 100%; padding-top: 4%; background-color: #343a40;">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<button class="card mb-4 shadow-sm glasses" value="안경 주세요"
						onclick="location.href='#'">
						<div
							style="padding-top: 15%; padding-left: 15%; padding-right: 15%;">
							<div>
								<svg width="100%" height="80%" viewBox="0 0 16 16"
									class="bi bi-eyeglasses" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
										d="M4 6a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm2.625.547a3 3 0 0 0-5.584.953H.5a.5.5 0 0 0 0 1h.541A3 3 0 0 0 7 8a1 1 0 0 1 2 0 3 3 0 0 0 5.959.5h.541a.5.5 0 0 0 0-1h-.541a3 3 0 0 0-5.584-.953A1.993 1.993 0 0 0 8 6c-.532 0-1.016.208-1.375.547zM14 8a2 2 0 1 0-4 0 2 2 0 0 0 4 0z" />
                                      </svg>
							</div>
							<div class="card-body">
								<p class="card-text">안경</p>
							</div>
						</div>
					</button>
				</div>

				<div class="col-md-3">
					<button class="card mb-4 shadow-sm bathroom" value="화장실 가고 싶어요"
						onclick="location.href='#'">
						<div
							style="padding-top: 15%; padding-left: 15%; padding-right: 15%;">
							<div>
								<img src="resources/img/toilet.svg" alt=""
									style="width: 100%; height: 80%;">
							</div>
							<div class="card-body">
								<p class="card-text">화장실</p>
							</div>
						</div>
					</button>
				</div>

				<div class="col-md-3">
					<button class="card mb-4 shadow-sm bed_up" value="침대 올려주세요"
						onclick="location.href='#'">
						<div>
							<div
								style="padding-top: 15%; padding-left: 15%; padding-right: 15%;">
								<img src="resources/img/bed-up.svg" alt=""
									style="width: 100%; height: 80%;">
							</div>
							<div class="card-body">
								<p class="card-text">침대 올려주세요</p>
							</div>
						</div>
					</button>
				</div>

				<div class="col-md-3">
					<button class="card mb-4 shadow-sm youtube" value="유튜브 틀어주세요"
						onclick="location.href='#'">
						<div>
							<div
								style="padding-top: 15%; padding-left: 15%; padding-right: 15%;">
								<img src="resources/img/youtube.svg" alt=""
									style="width: 100%; height: 80%;">
							</div>
							<div class="card-body" style="margin-bottom: 15%;">
								<p class="card-text" style="font-size: 18px;">유튜브</p>
							</div>
						</div>
					</button>
				</div>

				<div class="col-md-3">
					<button class="card mb-4 shadow-sm phlegm" value="가래 뽑아주세요"
						onclick="location.href='#'">
						<div>
							<div
								style="padding-top: 15%; padding-left: 15%; padding-right: 15%;">
								<img src="resources/img/cough.svg" alt=""
									style="width: 100%; height: 80%;">
							</div>
							<div class="card-body">
								<p class="card-text">가래 뽑아주세요</p>
							</div>
						</div>
					</button>
				</div>


				<div class="col-md-3">
					<button class="card mb-4 shadow-sm breath" value="호흡이 불편해요"
						onclick="location.href='#'">
						<div>
							<div
								style="padding-top: 15%; padding-left: 15%; padding-right: 15%;">
								<img src="resources/img/bad-breath2.svg" alt=""
									style="width: 100%; height: 80%;">
							</div>
							<div class="card-body">
								<p class="card-text">호흡이 불편해요</p>
							</div>
						</div>
					</button>
				</div>

				<div class="col-md-3">
					<button class="card mb-4 shadow-sm bed_down" value="침대 내려주세요"
						onclick="location.href='#'">
						<div>
							<div
								style="padding-top: 15%; padding-left: 15%; padding-right: 15%;">
								<img src="resources/img/bed.svg" alt=""
									style="width: 100%; height: 80%;">
							</div>
							<div class="card-body">
								<p class="card-text">침대 내려주세요</p>
							</div>
						</div>
					</button>
				</div>

				<div class="col-md-3">
					<button class="card mb-4 shadow-sm position" value="자세 불편해요"
						onclick="location.href='#'">
						<div>
							<div
								style="padding-top: 10%; padding-left: 15%; padding-right: 15%;">
								<img src="resources/img/patient2.svg" alt=""
									style="width: 100%; height: 80%;">
							</div>
							<div class="card-body" style="margin-bottom: 15%;">
								<p class="card-text">자세 불편해요</p>
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
    const glasses = document.getElementsByClassName("glasses")[0]
    const bathroom = document.getElementsByClassName("bathroom")[0]
    const bed_up = document.getElementsByClassName("bed_up")[0]
    const youtube = document.getElementsByClassName("youtube")[0]
    const phlegm = document.getElementsByClassName("phlegm")[0]
    const breath = document.getElementsByClassName("breath")[0]
    const bed_down = document.getElementsByClassName("bed_down")[0]
    const position = document.getElementsByClassName("position")[0]

    glasses.addEventListener("click", e => {
        speak(glasses.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    bathroom.addEventListener("click", e => {
        speak(bathroom.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    bed_up.addEventListener("click", e => {
        speak(bed_up.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    youtube.addEventListener("click", e => {
        speak(youtube.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    phlegm.addEventListener("click", e => {
        speak(phlegm.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    breath.addEventListener("click", e => {
        speak(breath.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    bed_down.addEventListener("click", e => {
        speak(bed_down.value, {
            rate: 0.8,
            pitch: 1.2,
            lang: "ko-KR"
        })
    })

    position.addEventListener("click", e => {
        speak(position.value, {
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