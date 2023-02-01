<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>

<meta charset="UTF-8">

<link rel="apple-touch-icon" type="image/png"
	href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">

<link rel="mask-icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
	color="#111">


<title>引っ越し手続き画面</title>
<style>]

</style>

<style>
.awdadw {
	color: #364e96; /*文字色*/
	padding: 0.5em 0; /*上下の余白*/
	border-top: solid 3px #364e96; /*上線*/
	border-bottom: solid 3px #364e96; /*下線*/
}

ul {
	border: solid 2px skyblue;
	border-radius: 5px;
	padding: 0.5em 1em 0.5em 2.3em;
	position: relative;
}

ul li {
	line-height: 1.5;
	padding: 0.5em 0;
	list-style-type: none !important;
}

ul li:before {
	font-family: "Font Awesome 5 Free";
	content: "\f138"; /*アイコンの種類*/
	position: absolute;
	left: 1em; /*左端からのアイコンまでの距離*/
	color: skyblue; /*アイコン色*/
}

.heading12 {
	position: relative;
	font-size: 26px;
}

.heading12::before {
	content: attr(data-number);
	display: inline-block;
	margin-right: 20px;
	color: #498ee0;
	font-size: 30px;
	border-bottom: 1px solid #498ee0;
}

.under {
	border-bottom: solid 3px #87CEFA;
}

h2 {
	position: relative;
	padding: 1.5rem;
	text-align: center;
}

h2:before {
	position: absolute;
	bottom: -10px;
	left: calc(50% - 30px);
	width: 60px;
	height: 5px;
	content: '';
	border-radius: 3px;
	background: #000;
}

.todo-list {
	background: #FFF;
	font-size: 20px;
	max-width: 15em;
	margin: auto;
	padding: 0.5em 1em;
	box-shadow: 0 5px 30px rgba(0, 0, 0, 0.2);
}

.todo {
	display: block;
	position: relative;
	padding: 1em 1em 1em 16%;
	margin: 0 auto;
	cursor: pointer;
	border-bottom: solid 1px #ddd;
}

.todo:last-child {
	border-bottom: none;
}

.todo__state {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
}

.todo__text {
	color: #135156;
	transition: all 0.4s linear 0.4s;
}

.todo__icon {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	width: 100%;
	height: auto;
	margin: auto;
	fill: none;
	stroke: #27FDC7;
	stroke-width: 2;
	stroke-linejoin: round;
	stroke-linecap: round;
}

.todo__line, .todo__box, .todo__check {
	transition: stroke-dashoffset 0.8s cubic-bezier(0.9, 0, 0.5, 1);
}

.todo__circle {
	stroke: #27FDC7;
	stroke-dasharray: 1 6;
	stroke-width: 0;
	transform-origin: 13.5px 12.5px;
	transform: scale(0.4) rotate(0deg);
	-webkit-animation: none 0.8s linear;
	animation: none 0.8s linear;
}

@
-webkit-keyframes explode { 30% {
	stroke-width: 3;
	stroke-opacity: 1;
	transform: scale(0.8) rotate(40deg);
}

100%
{
stroke-width




:





0;
stroke-opacity




:





0;
transform




:





scale




(1
.1




)
rotate




(60
deg


);
}
}
@
keyframes explode { 30% {
	stroke-width: 3;
	stroke-opacity: 1;
	transform: scale(0.8) rotate(40deg);
}

100%
{
stroke-width




:





0;
stroke-opacity




:





0;
transform




:





scale




(1
.1




)
rotate




(60
deg


);
}
}
.todo__box {
	stroke-dasharray: 56.1053, 56.1053;
	stroke-dashoffset: 0;
	transition-delay: 0.16s;
}

.todo__check {
	stroke: #27FDC7;
	stroke-dasharray: 9.8995, 9.8995;
	stroke-dashoffset: 9.8995;
	transition-duration: 0.32s;
}

.todo__line {
	stroke-dasharray: 168, 1684;
	stroke-dashoffset: 168;
}

.todo__circle {
	-webkit-animation-delay: 0.56s;
	animation-delay: 0.56s;
	-webkit-animation-duration: 0.56s;
	animation-duration: 0.56s;
}

.todo__state:checked ~ .todo__text {
	transition-delay: 0s;
	color: #5EBEC1;
	opacity: 0.6;
}

.todo__state:checked ~ .todo__icon .todo__box {
	stroke-dashoffset: 56.1053;
	transition-delay: 0s;
}

.todo__state:checked ~ .todo__icon .todo__line {
	stroke-dashoffset: -8;
}

.todo__state:checked ~ .todo__icon .todo__check {
	stroke-dashoffset: 0;
	transition-delay: 0.48s;
}

.todo__state:checked ~ .todo__icon .todo__circle {
	-webkit-animation-name: explode;
	animation-name: explode;
}

.line {
	border-bottom: 1px solid black;
	padding-bottom: 20px;
	width: 100%;
	left: 15px;
	position: relative;
}

.stepText1 {
	text-align: left;
	left: -15px;
}

.stepText2 {
	text-align: center;
}

.stepText3 {
	text-align: right;
	right: -15px;
}

.step {
	width: 20px;
	height: 20px;
	border: 1px solid black;
	background: white;
	border-radius: 100px;
	margin-top: 30px;
	transition: 0.4s;
}

.step1 {
	margin-top: -10px;
	float: left;
}

.step2 {
	margin: 0 auto;
	margin-top: -10px;
}

.step3 {
	float: right;
	margin-top: -10px;
}

.active {
	background: black;
}

/* not important */
body {
	font-weight: bold;
}

.autoCenter {
	margin: 50px auto;
	width: 345px;
	box-sizing: border-box;
}

#prev, #next {
	background: #333;
	color: white;
	padding: 10px 0;
	display: inline-block;
	width: 150px;
	text-align: center;
	margin: 10px;
	cursor: pointer;
	transition: 0.3s;
}

#prev:hover, #next:hover {
	background: #1d1d1d;
}
</style>

<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }

  if (document.location.search.match(/type=embed/gi)) {
	    window.parent.postMessage("resize", "*");
	  }
</script>

<style>
.shaw {
	display: block;
	position: absolute;
	position: fixed;
	z-index: 9999;
	bottom: 5px;
	right: 5px;
	font-size: 10px;
	color: #c03b27;
	text-decoration: none;
	padding: 10px;
	border-radius: 50%;
	opacity: 0.4;
	transform-origin: 100% 100%;
	transition: all 300ms ease-in-out;
}

.shaw>* {
	transition: inherit;
}

.shaw:hover {
	opacity: 1;
	background: rgba(255, 255, 255, 0.9);
}

.shaw__icon, .shaw__title {
	display: inline-block;
	vertical-align: middle;
}

.shaw__icon {
	width: 24px;
	height: 24px;
	position: relative;
	z-index: 1;
}

.shaw__title {
	white-space: nowrap;
	opacity: 0;
	padding-right: 10px;
	transform: translateX(100%);
}

.shaw:hover .shaw__title {
	transform: scale(1);
	opacity: 1;
}

.shaw:hover .shaw__icon {
	transform: scale(1.4);
}
</style>


</head>

<body translate="no">
	<link rel="stylesheet"
		href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

	<div class="container">
		<h1 class="text-center">引っ越し手続き</h1>
		<div class="row line">
			<div class="col-xs-4 stepText1">Step 1</div>
			<div class="col-xs-4 stepText2">Step 2</div>
			<div class="col-xs-4 stepText3">Step 3</div>
		</div>
		<div class="row">
			<div class="col-xs-4">
				<div class="step step1 active"></div>
			</div>
			<div class="col-xs-4">
				<div class="step step2"></div>
			</div>
			<div class="col-xs-4">
				<div class="step step3"></div>
			</div>
		</div>

		<div class="wrap_blogContent01">
			<h1 class="heading12" data-number="01">引っ越し業者の手配</h1>



			<h2 class="h3_blog_basic01 page-h4">2月～4月は引っ越しの激戦区！</h2>





			<div class="p_blog_basic01 text page-txt">
				<h3>
					2～4月は業者への依頼が殺到するため手配が遅れるほど、<span class="under">かかる費用が上がります。</span><br><br>
					特に土日や、3月末から4月初めにかけての時期は、かなり早い段階で予約が埋まってしまうでしょう<br>
					より良い条件の業者と巡り合うためには 、<span class="under">早めの手配が必要です</span>。
				</h3>
				<span class="under"></span>
			</div>
			<hr>
			<h2 class="h3_blog_basic01 page-h4">引っ越し業者を手配する</h2>
			<div class="p_blog_basic01 text page-txt">
				<h3>
					<a href="https://www.hato.or.jp/">ハトのマークの引越センター</a>&nbsp;&nbsp; <a
						href="https://www.0003.co.jp/">アーク引越センター</a>&nbsp;&nbsp; <a
						href="https://www.2626.co.jp/">アリさんマークの引越社</a>&nbsp;&nbsp; <a
						href="https://www.008008.jp/moving/single/">クロネコヤマト</a> <a
						href="https://www.google.com/search?q=%E5%BC
				%95%E3%81%A3%E8%B6%8A%E3%81%97%E6%A5%AD%E8%80%85
				%E6%89%8B%E9%85%8D&rlz=1C1GCEU_jaJP1027JP1027&sx
				srf=ALiCzsYVvRxNhcBG5cgbBA961U9Z6Cm8yQ%3A16698729
				16344&ei=FD2IY5DVFPej1e8Pttaa-A4&ved=0ahUKEwiQr_6
				v2df7AhX3UfUHHTarBu8Q4dUDCBA&uact=5&oq=%E5%BC%95%
				E3%81%A3%E8%B6%8A%E3%81%97%E6%A5%AD%E8%80%85%E6%89
				%8B%E9%85%8D&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIECCMQJz
				IECCMQJzoHCCMQ6gIQJzoNCAAQjwEQ6gIQtAIYAToHCAAQBBCA
				BDoNCAAQBBCABBCxAxCxAzoGCAAQBBADOg0IABAEEIAEELEDEIM
				BOgoIABAEEIAEELEDOgQIABBDOgcIABCxAxBDOgkIABAEEIAEEC
				U6DAgAEAQQgAQQsQMQJUoECEEYAEoECEYYAVAAWIwhYNglaAFwA
				XgAgAFiiAHUDpIBAjIxmAEAoAEBsAEUwAEB2gEGCAEQARgK&scl
				ient=gws-wiz-serp">他の業者</a>
				</h3>

				<br> <br>
				<svg viewBox="0 0 0 0"
					style="position: absolute; z-index: -1; opacity: 0;">
  <defs>
    <linearGradient id="boxGradient" gradientUnits="userSpaceOnUse"
						x1="0" y1="0" x2="25" y2="25">
      <stop offset="0%" stop-color="#27FDC7"></stop>
      <stop offset="100%" stop-color="#0FC0F5"></stop>
    </linearGradient>

    <linearGradient id="lineGradient">
      <stop offset="0%" stop-color="#0FC0F5"></stop>
      <stop offset="100%" stop-color="#27FDC7"></stop>
    </linearGradient>

    <path id="todo__line" stroke="url(#lineGradient)"
						d="M21 12.3h168v0.1z"></path>
    <path id="todo__box" stroke="url(#boxGradient)"
						d="M21 12.7v5c0 1.3-1 2.3-2.3 2.3H8.3C7 20 6 19 6 17.7V7.3C6 6 7 5 8.3 5h10.4C20 5 21 6 21 7.3v5.4"></path>
    <path id="todo__check" stroke="url(#boxGradient)" d="M10 13l2 2 5-5"></path>
    <circle id="todo__circle" cx="13.5" cy="12.5" r="10"></circle>
  </defs>
</svg>


				<div class="todo-list">

					<label class="todo"> <input class="todo__state"
						type="checkbox"> <svg xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 200 25"
							class="todo__icon">
      <use xlink:href="#todo__line" class="todo__line"></use>
      <use xlink:href="#todo__box" class="todo__box"></use>
      <use xlink:href="#todo__check" class="todo__check"></use>
      <use xlink:href="#todo__circle" class="todo__circle"></use>
    </svg>

						<div class="todo__text">引っ越しの手配完了</div>
					</label>
				</div>
				<br><br>
				<hr>

			</div>
			<br> <br>
			<h1 class="heading12" data-number="02">転出届の提出</h1>
			<br>

			<h2 class="h3_blog_basic01 page-h4">他の市区町村に転居する場合に必要</h2>



			<h3>
				新しい住所に引越しをすることを報告する転出届は、これまで住んでいた地域の役場に提出します。<br>
				「今後はこの地域に納税することも、行政サービスなどを利用することもありません」<br>と宣言するための手続きです。<br>
				<span class="under">これをきちんと出さないと、転入届を提出することができません。</span>
			</h3>
			<br>

			<h3>
				転出届の提出期限は引っ越し日から<span class="under">14日以内</span>と定められています<br>
			</h3>
			<br>
			<h3 class="awdadw">提出に必要なもの</h3>
			<h3>住民異動（転出）届書</h3>
			<h3>印鑑</h3>
			<ul>
				<h3>本人確認書類</h3>
				<li>マイナンバーカード</li>
				<li>免許証</li>
				<li>健康保険証</li>
			</ul>
			<h3>
				手続きが終わると<span class="under">転出証明書</span>が発行されます。<br>
				<br> 転居先の自治体に転入届を提出する際に求められるので、しっかり保管しておきましょう
			</h3>

		</div>
		<br><br>
		<svg viewBox="0 0 0 0"
			style="position: absolute; z-index: -1; opacity: 0;">
  <defs>
    <linearGradient id="boxGradient" gradientUnits="userSpaceOnUse"
				x1="0" y1="0" x2="25" y2="25">
      <stop offset="0%" stop-color="#27FDC7"></stop>
      <stop offset="100%" stop-color="#0FC0F5"></stop>
    </linearGradient>

    <linearGradient id="lineGradient">
      <stop offset="0%" stop-color="#0FC0F5"></stop>
      <stop offset="100%" stop-color="#27FDC7"></stop>
    </linearGradient>

    <path id="todo__line" stroke="url(#lineGradient)"
				d="M21 12.3h168v0.1z"></path>
    <path id="todo__box" stroke="url(#boxGradient)"
				d="M21 12.7v5c0 1.3-1 2.3-2.3 2.3H8.3C7 20 6 19 6 17.7V7.3C6 6 7 5 8.3 5h10.4C20 5 21 6 21 7.3v5.4"></path>
    <path id="todo__check" stroke="url(#boxGradient)" d="M10 13l2 2 5-5"></path>
    <circle id="todo__circle" cx="13.5" cy="12.5" r="10"></circle>
  </defs>
</svg>


		<div class="todo-list">

			<label class="todo"> <input class="todo__state"
				type="checkbox"> <svg xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 200 25"
					class="todo__icon">
      <use xlink:href="#todo__line" class="todo__line"></use>
      <use xlink:href="#todo__box" class="todo__box"></use>
      <use xlink:href="#todo__check" class="todo__check"></use>
      <use xlink:href="#todo__circle" class="todo__circle"></use>
    </svg>
				<div class="todo__text">転出届の提出</div>
			</label>
		</div>

	</div>
<br><br>
	<hr>

	<!-- <span class="under"></span>  -->


<div class="autoCenter">
     <div id="prev"><a href="dashboard.jsp"id="a-no-color" style="color:inherit;">ホーム画面へ戻る</a></div>
     <div id="next"><a href="step2.jsp" id="a-no-color" style="color:inherit;">次のステップへ</a></div>
   </div>

</div>

	<svg viewBox="0 0 0 0"
		style="position: absolute; z-index: -1; opacity: 0;">
  <defs>
    <linearGradient id="boxGradient" gradientUnits="userSpaceOnUse"
			x1="0" y1="0" x2="25" y2="25">
      <stop offset="0%" stop-color="#27FDC7"></stop>
      <stop offset="100%" stop-color="#0FC0F5"></stop>
    </linearGradient>

    <linearGradient id="lineGradient">
      <stop offset="0%" stop-color="#0FC0F5"></stop>
      <stop offset="100%" stop-color="#27FDC7"></stop>
    </linearGradient>

    <path id="todo__line" stroke="url(#lineGradient)"
			d="M21 12.3h168v0.1z"></path>
    <path id="todo__box" stroke="url(#boxGradient)"
			d="M21 12.7v5c0 1.3-1 2.3-2.3 2.3H8.3C7 20 6 19 6 17.7V7.3C6 6 7 5 8.3 5h10.4C20 5 21 6 21 7.3v5.4"></path>
    <path id="todo__check" stroke="url(#boxGradient)" d="M10 13l2 2 5-5"></path>
    <circle id="todo__circle" cx="13.5" cy="12.5" r="10"></circle>
  </defs>
</svg>






	<script
		src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-2c7831bb44f98c1391d6a4ffda0e1fd302503391ca806e7fcc7b9b87197aec26.js"></script>

	<script src="https://codepen.io/shshaw/pen/epmrgO.js"></script>
	<a href="https://codepen.io/shshaw" target="_blank" class="shaw"><svg
			class="shaw__icon" width="222" height="284" viewBox="0 0 2223 2846">
			<path fill="#f4d198"
				d="M1040 436c46-.8 71.4 17.4 103 31l82 35 441 189c-3 6.2-3.7 9-2 16 28.7 21.2 64 26.6 102 41 32 12.2 62.6 27.5 89 46 70 49.6 122 125.5 156 211 16.7 42.4 23 95.4 40 136 21.3 52.2 85.3 136.6 72 214-9 50.5-31.4 75-57 107-19 23.4-52 45.2-43 95 14.7 82.3 57.8 139 89 205 10.8 23.4 22 46.7 32.8 70l10 32c17.8 28 85.5 81.5 64 130-15 34.3-48.4 58.2-84 72-17 4.4-34 8.8-51 13 5 15.5 9 29.5 16 42-5.6 6.8-11.3 13.4-17 20 1.4 58 36.5 119.5 4 164-14 19.4-35 26.6-54 41 9.7 12.6 21.5 23.3 28 39 30 72.4-52.2 154.4-82 196-17.7 25-36.7 64.3-64 79-52.3-6.2-104.6-12.6-157-19-130.8-26-259.5-41.8-381-76-82.6-23-166-43.7-243-74l-143-59c-.2-50-.5-100-1-150h-1c-23.5 1.4-47.2 2.8-71 4l-15 15c-13.7 10.2-32 17.4-52 21-90.8 17.2-202.2-74.8-249.8-112l-42-38c-11.4-1.6-22.7-3.2-34-5-33.6-7.2-99.3-17.8-115-41l-67-167-142-339 166-20c1.4-27.2 26.6-95.5 51-97l181 49 2-1c-.7-51.7 2-106.3 10-154 8.6-51.6 8-103.5 17-152l18-124c29.5-135.3 55.3-266.4 104-381 41.2-97.2 85.7-194 164-254 22.4-17.2 48.8-32.8 79-42l47-8z"></path>
			<path fill="#bf3d27"
				d="M1008 59v-8c14.8 4.4 23.6 20.4 35 29l65 43c8.4 6.3 26.4 24.8 40 21 9.7-5 8.2-22.2 8-34 15 7.2 32.2 21.3 49 24v-5c-4.4-15.4-4.7-33-7-51h6c88.8 27.2 209.3 5.2 297 22l52-2c32.2 7.3 66.3 35.3 97 47l52 17c3.5 5.7 7.2 11.3 11 17 8.2 6.3 16.5 12.7 25 19 58.6 30.8 113.8 60 168 93l24 10c10.6 7.4 11 22.2 20 31 13.2 9.3 26.5 18.7 40 28 31.5 25.4 72.8 84 89 124 14 35.8 12.7 100 3 139-23.3 92-85 195.2-150 244-3.5-3.3-6.8-6.6-10-10l-51-46-213 57-196 85c-41.2 18-84.3 36-122 58-26 15-49.5 34-83 41-54 11.2-111-6.6-161-7 8.6 61.2 25 132 52 179 8 14.2 41.8 81.8 39 101-12.7 85.2-70.4 125.8-122 172l7 137 7 101c12.5 77.8 10 156.3 24 229 9 48 13 94 25 137l8 34c8.6 16 90.4 62.3 111 75 79.6 49.7 164.7 96.8 254 136 38.3 17 84 48.6 126 58 18.4-23 38-43 54-70 6.2-14.6 12.5-29.2 19-44 6.3-10.5 67.2-41 82-50 61.3-37.3 124.7-70.7 196-99 34.2-13.5 75.3-29.6 121-23 4.5 10.4 9.2 20.8 14 31 10.6 34.2.8 70.2-12 94-31.2 1-63 14.8-89 23-82.7 26.3-167.3 58-214 120-23.7 31.4-44 88.3-13 128 18.2 23.8 53.3 24 83 11 21.6-9.4 40-30.8 59-39 18.4-7.8 80.2-5.5 99 0-2.6 28.8-3.4 61.8-3 94v47c-14 83.2-40 137-95 177-94.4 68.6-214.8 41.3-315 2-60.8-21.5-121.4-43.2-182-65-120.6-58-243.3-122.3-355-190-72.2-43.5-139.8-77-182-150-17.7-30.3-20-87-12-132l28-184 6-76c5.3-33.3 2.7-117-9-139l-62-67c-57-57-198.2-164.5-324-138-42.3 9-87.2 26.4-109 56-32 43.3-40.3 141.8-16 201 27.5 67.4 69.7 136 112 191l80 84 4 40c11.4 71.7-24.4 176.2-59 205-10.4-11.6-20.7-23.2-31-35-22.4-28-47.7-53.4-70-82-60.6-77-115.6-155-167-243-18-31-29.4-66-44-100l-83-196C88.7 1670 27.3 1539.8 0 1406v-138c0-155.8 32.6-292.3 91-391 16.3-27.6 37-57 62-76l29-17 52-44 22-17 62-96 14-46 35-86c29.3-66.6 70.2-123.8 113-177 23.6-29.4 57-46.7 87-70C627.8 201 717.3 93.4 730 0h4c30 13 74.3 15.3 109 21h27c19.6 5.2 33.4 22.5 56 28l1-13h8l-1-8 26 11 3-4c10.6 9.8 27 22.4 45 24zm917 68h2-2zm2 1h2-2zm58 47c1.5 1.7 3.2 3.3 5 5l-3-2c-3.2-2-1.2-.3-2-3z"></path></svg></a>
	<script id="rendered-js">
console.clear();



// Javascript was initially used, but wasn't really necessary. Javascript droppped, but left here for archival purposes.

var todoTemplate = function(id){
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 25" class="todo__icon">
    <defs>
      <mask id="myMask${id}" maskUnits="userSpaceOnUse" x="0" y="0">
        <g stroke="#FFF" fill="none">
          <path class="todo__line" d="M21 12.3h168"/>
          <path class="todo__box" d="M21 12.7v5c0 1.3-1 2.3-2.3 2.3H8.3C7 20 6 19 6 17.7V7.3C6 6 7 5 8.3 5h10.4C20 5 21 6 21 7.3v5.4"/>
          <path class="todo__check" d="M10 13l2 2 5-5"/>
        </g>
      </mask>
    </defs>
    <rect fill="url(#todoGradient)" mask="url(#myMask${id})" width="100%" height="100%" />
    <circle class="todo__circle" cx="13.5" cy="12.5" r="10" />
  </svg>`
};

var todos = [ ...document.querySelectorAll('.todo') ].forEach(activateTodo);

function offsetPath(path, offset){
  var length = path.getTotalLength();
  path.style.transition = 'none';
  path.style.strokeDasharray = length + ' ' + length + offset;
  path.style.strokeDashoffset = length;
  setTimeout(function(){ path.style.transition = null; },20);
  return length;
}

function togglePath(path, toggle, offset = 0){
  var length = offsetPath(path, offset);

  function updatePath(toggle){
    return path.style.strokeDashoffset = ( toggle ? -offset : length );
  }

  updatePath(toggle);
  return updatePath;
}

function activateTodo(todo, i){

  todo.insertAdjacentHTML('afterbegin', todoTemplate(i));

  var line = todo.querySelector('.todo__line'),
      updateLine = togglePath(line, false, 4);

  var box = todo.querySelector('.todo__box'),
      updateBox = togglePath(box, true);

  var check = todo.querySelector('.todo__check'),
      updateCheck = togglePath(check);

  var toggle = false;

  todo.addEventListener('click', function(){
    toggle = !toggle;
    updateLine(toggle);
    updateBox(!toggle);
    updateCheck(toggle);
    if ( todo.classList ) { todo.classList[ toggle ? 'add' : 'remove' ]('todo--checked'); }
  });

}

*/
//# sourceURL=pen.js
    </script>



	<script
		src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-550eae0ce567d3d9182e33cee4e187761056020161aa87e3ef74dc467972c555.js"></script>




	<script
		src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-2c7831bb44f98c1391d6a4ffda0e1fd302503391ca806e7fcc7b9b87197aec26.js"></script>

	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script id="rendered-js">
$('document').ready(function () {
  var count = 0;
  $('.step').each(function () {
    count++;

  });

  var i = 0;
  //NEXT
  $('#next').on('click', function () {
    if (count > i + 1) {
      i++;
      $('.active').removeClass('active');
      $('.step').eq(i).addClass('active');
    }
  });
  //PREV
  $('#prev').on('click', function () {
    if (i > 0) {
      i--;
      $('.active').removeClass('active');
      $('.step').eq(i).addClass('active');
    }
  });
});
//# sourceURL=pen.js
    </script>



	<script
		src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-550eae0ce567d3d9182e33cee4e187761056020161aa87e3ef74dc467972c555.js"></script>
</body>
</html>