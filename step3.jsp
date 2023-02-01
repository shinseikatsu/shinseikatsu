<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html><head>

  <meta charset="UTF-8">

<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/
assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">


  <title>引っ越し手続き</title>

<style>

.main {
  position: absolute;
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%);
}

.main-heading {
  color: #777;
  text-transform: uppercase;
}

.main-heading-primary {
  display: block;
  font-size: 5.0rem;
  font-weight: 400;
  letter-spacing: 35px;
  animation: moveInLeft 1s ease-out;
}

.main-heading-secondary {
  font-family: sans-serif;
  display: block;
  font-size: 1.5rem;
  font-weight: bold;
  text-align: center;
  letter-spacing: 31px;
  color: hotpink;
  animation: moveInRight 1s ease-out;
}

@keyframes moveInLeft {
  0% {
    opacity: 0;
    transform: translateX(-100px);
  }

  80% {
    transform: translateX(10px);
  }

  100% {
    opacity: 1;
    transform: translate(0);
  }
}

@keyframes moveInRight {
  0% {
    opacity: 0;
    transform: translateX(100px);
  }

  80% {
    transform: translateX(-10px);
  }

  100% {
    opacity: 1;
    transform: translate(0);
  }
}


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
<div class="main">
  <h1 class="main-heading">
    <center><span class="main-heading-primary">お疲れ様でした！</span><br></center>
    <span class="main-heading-secondary">Congratulation!!</span>
  </h1>
</div>

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
      <div class="col-xs-4"><div class="step step2"></div></div>
      <div class="col-xs-4"><div class="step step3 active"></div></div>
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
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<center><h3 class="awdadw">以上でお引越し手続き完了です</h3>
<h3>引っ越し作業当日までに粗大ごみや荷造りをしておきましょう！<br><br>
場合によって他にも必要な手続きがあります、心当たりがある場合は事前に確認しておきましょう！
</h3></center>

<div class="autoCenter">
     <div id="prev"><a href="step2.jsp"id="a-no-color" style="color:inherit;">前の戻る</a></div>
     <div id="next"><a href="dashboard.jsp" id="a-no-color" style="color:inherit;">ホーム画面へ戻る</a></div>
   </div>

</div>



</body></html>