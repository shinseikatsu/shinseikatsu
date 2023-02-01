<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>

  <meta charset="UTF-8">

<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">

<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">


  <title>引っ越し手続き</title>

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


<style>
.line{
    border-bottom: 1px solid black;
    padding-bottom: 20px;
    width: 100%;
    left: 15px;
    position: relative;
}
.stepText1{
  text-align: left;
  left: -15px;
}
.stepText2{ text-align: center; }
.stepText3{
  text-align: right;
  right: -15px;
}
.step{
  width: 20px;
  height: 20px;
  border: 1px solid black;
  background: white;
  border-radius: 100px;
  margin-top: 30px;
  transition: 0.4s;
}
.step1{
  margin-top: -10px;
  float: left;
}
.step2{
  margin: 0 auto;
  margin-top: -10px;
}
.step3{
  float: right;
  margin-top: -10px;
}
.active{
  background: black;
}





/* not important */
body{
  font-weight: bold;
}
.autoCenter{
  margin: 50px auto;
  width: 345px;
  box-sizing: border-box;
}
#prev, #next{
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
#prev:hover, #next:hover{
  background: #1d1d1d;
}
</style>




  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<div class="container">
  <h1 class="text-center">引っ越し手続き</h1>
  <div class="row line">
      <div class="col-xs-4 stepText1">Step 1</div>
      <div class="col-xs-4 stepText2">Step 2</div>
      <div class="col-xs-4 stepText3">Step 3</div>
  </div>
  <div class="row">
      <div class="col-xs-4"><div class="step step1"></div></div>
      <div class="col-xs-4"><div class="step step2 active"></div></div>
      <div class="col-xs-4"><div class="step step3"></div></div>
  </div>


  <div class="wrap_blogContent01">
			<h1 class="heading12" data-number="03">各種利用サービスの住所変更</h1>


			<div class="p_blog_basic01 text page-txt">
				<h3>引っ越しに伴い、様々なサービスで登録している住所を変更する必要があります。<br>
				これを怠ってしまうと、郵便戻りが発生し再発送などで届くのが遅れてしまい<br>
				トラブルが発生してしまう恐れがあります、これを防ぐために住所変更はきちんと行いましょう
				<br><br>
				</h3>

				<span class="under"></span>

				<h2 class="h3_blog_basic01 page-h4">郵便局に転送届を提出する</h2>
				<br><br>

				<h3>転送届とは郵便局に転居先の住所を予め提出しておくことで、もし前住所へ郵便が送られても<br>
				転居先に届くようになる仕組みです。住所変更が面倒だと思う方はこちらをおすすめします
				</h3>
			</div>


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

						<div class="todo__text">変更完了</div>
					</label>
				</div>
				<br><br>
				<hr>

			</div>
			<br> <br>
			<h1 class="heading12" data-number="04">インターネット契約の住所変更、または解約</h1>
			<br>

			<h2 class="h3_blog_basic01 page-h4">移転先によって手続きが異なる</h2>



			<h3>実家からの移転の場合は契約手続きのみで問題ありませんが、解約が必要になる場合<br>
			<span class="under">移転先で回線工事が必要なのか</span>、<span class="under">現在のプロパイダーのままで契約できるか</span>
			などの確認が必要になります<br><br></h3>
			<h4>※プロパイダーにより違約金などが発生するので必ず確認しておきましょう。</h4>


			<br>
			<hr>

			<br>
			<h3 class="awdadw">インターネット契約の手続き</h3>
			<br><br>
			<h3>前提として各種インターネット契約には<span class="under">提供エリア</span>
			というのが決められており<br><br>移転先により契約すべきプロパイダーが異なります</h3><br>
			<h3>提供エリアは各社の公式サイトなどで検索できるので予め確認しておきましょう</h3>
			<br><br>


			<h2 class="h3_blog_basic01 page-h4">提供エリアを確認する</h2>
			<div class="p_blog_basic01 text page-txt">
				<h3>
					<center><a href="https://flets.com/app_new/cao/SelectAddress">フレッツ光</a>&nbsp;&nbsp;&nbsp; <a
						href="https://flets.com/app2/search_c.html">光コラボレーション</a>&nbsp;&nbsp;&nbsp; <a
						href="https://bb-application.au.kddi.com/auhikari/zipcode">auひかり</a>&nbsp;&nbsp;&nbsp; <a
						href="https://www.nuro.jp/lp/area/">NURO光</a>&nbsp;&nbsp;&nbsp;
						<a href="https://www.google.com/search?q=%E3%83%97%E3%83
						%AD%E3%83%90%E3%82%A4%E3%83%80%E3%83%BC%E5%A5%91%E7%B4%8
						4+%E3%81%8A%E3%81%99%E3%81%99%E3%82%81&rlz=1C1GCEU_jaJP1
						027JP1027&sxsrf=ALiCzsYdWF9k6vUUjeqXO1XwwXyoV2B_6A%3A1669
						960609665&ei=oZOJY5OcKJii-Qa5qIioAg&oq=%E3%83%97%E3%83%AD
						%E3%83%90%E3%82%A4%E3%83%80%E3%83%BC%E5%A5%91%E7%B4%84%E3
						%80%80&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQARgGMgkIABAEEIAEECUyCQgA
						EAQQgAQQJTIJCAAQBBCABBAlMgkIABAEEIAEECUyCQgAEAQQgAQQJTIJCA
						AQBBCABBAlMgkIABAEEIAEECUyCQgAEAQQgAQQJTIJCAAQBBCABBAlMgkI
						ABAEEIAEECU6BAgAEEdKBAhBGABKBAhGGABQhwFYhwFguxxoAHACeACAAb
						UDiAG1A5IBAzQtMZgBAKABAcgBCsABAQ&sclient=gws-wiz-serp">他のプロパイダー</a></center>
				</h3><br><hr><br>

				<h3 class="awdadw">移転先の回線導入状況の確認</h3><br><br>
				<h3>集合住宅に引っ越す際は建物に<span class="under">インターネット回線が導入されているか</span>確認が必要になります</h3>
				<br><br>
				<h3>既に導入されている場合開通工事が不要になるため<span class="under">契約手続きのみになります</span></h3><br><br><br>
				<h3 class="awdadw">建物にネット回線が導入されていない場合</h3><br><br>

				<h3>まず工事が必要になります、<span class="under">依頼する前に契約するプランを選び工事の日程を決めます</span></h3>
				<br><br>
				<h3>この作業は電柱から光ファイバーを引き込んだり室内に必要な設備を整えたりします</h3>
				<br><hr><br>

				<h3>工事はプロパイダーが行ってくれる場合もありますので、もしネット回線が導入されていなかった場合は
				提供エリア内のプロパイダーに相談してみましょう</h3>





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
				<div class="todo__text">手続き完了</div>
			</label>
		</div>

	</div>
<br><br>
	<hr>

<div class="autoCenter">
     <div id="prev"><a href="moving procedures.jsp"id="a-no-color" style="color:inherit;">前の戻る</a></div>
     <div id="next"><a href="step3.jsp" id="a-no-color" style="color:inherit;">次のステップへ</a></div>
   </div>

</div>

    <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-2c7831bb44f98c1391d6a4ffda0e1fd302503391ca806e7fcc7b9b87197aec26.js"></script>

  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
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



  <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-550eae0ce567d3d9182e33cee4e187761056020161aa87e3ef74dc467972c555.js"></script>




</body></html>