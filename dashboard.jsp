<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@
page import="java.util.*"%>
<%@
page import="test.*"%>
<%
	MyCalendar mc = (MyCalendar) request.getAttribute("mc");
%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>New life support app</title>

<link rel="stylesheet"
	href="./assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="./assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="shortcut icon" href="./assets/img/favicon.ico" />
<link rel="stylesheet" href="./assets/css/calendar.css">
<link rel="stylesheet" href="./css/theme.css">
<link rel="stylesheet" href="assets/css/a.css">


<style>
* {
            padding: 0;
            margin: 0;
        }
        html, body, .loading-page {
            width: 100%;
            height: 100%;
        }
        .loading-page {
            display: table;
            background-color: rgb(255, 90, 95);
        }
        .loading-wrap {
            display: table-cell;
            vertical-align: middle;
            text-align: center;
        }
        .loading-card {
            width: 180px;
            height: 240px;
            border-radius: 10px;
            margin: auto;
            background-color: #98fb98
            position: relative;
      box-shadow: 4px 4px 8px 2px rgba(0, 0, 0, 0.15);
        }
        .loading-board {
            width: 52px;
            height: 4px;
            position: absolute;



            background-color: rgb(0, 90, 95);



            border-radius: 4px;
            left: 50%;
            top: 50%;



            transform: translate(-50%,-50%);
            -webkit-animation: loadingBoard 3s linear both infinite;
                    animation: loadingBoard 3s linear both infinite;
        }



        .loading-board.board2 {
            opacity: 0;
            transform: translate(-50%,-50%);
            -webkit-animation-delay: 1s;
                    animation-delay: 1s;
        }
        .loading-board.board3 {
            opacity: 0;
            transform: translate(-50%,-50%);
            -webkit-animation-delay: 2s;
                    animation-delay: 2s;
        }
        .ball {
            width: 14px;
            height: 14px;



            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -10px;
            margin-top: -10px;



            border-radius: 50%;
            background-color: rgb(0, 90, 95);
            opacity: 0;



            -webkit-animation: jumpingBall 1s 1s forwards cubic-bezier(.87,.04,.26,.95) infinite;



                    animation: jumpingBall 1s 1s forwards cubic-bezier(.87,.04,.26,.95) infinite;
        }
        .loading-text {
            color: white;
            padding-top: 20px;
            padding-bottom: 40px;
            width: 100%;
            text-align: center;
        }
        @keyframes loadingBoard {
            0% {
                transform: translate(100%, -1500%);
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            100% {
                transform: translate(-200%, 1500%);
                opacity: 0;
            }
        }
        @-webkit-keyframes loadingBoard {
            0% {
                transform: translate(100%, -900%);
            }
            100% {
                transform: translate(-100%, 900%);
            }
        }
        @-webkit-keyframes jumpingBall {
            0% {
                transform: translate(0, -50px) scaleX(1);
                opacity: 1;
            }
            49% {
                transform: translate(0, -2px) scaleX(1.05);
            }
            100% {
                transform: translate(0, -50px);
                opacity: 1;
            }
        }
        @keyframes jumpingBall {
            0% {
                transform: translate(0, -50px) scaleX(1);
                opacity: 1;
            }
            49% {
                transform: translate(0, -2px) scaleX(1.05);
            }
            100% {
                transform: translate(0, -50px);
                opacity: 1;
            }
        }
</style>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>


<body>
	<jsp:useBean id="calendarInfoBean" class="test.CalendarInfoBean"
		scope="session" />
	<jsp:useBean id="usrInfoBean" class="test.UserInfoBean" scope="session" />
	<%
		ArrayList<UserRecordBean> usrInfoArray = usrInfoBean.getUserRecordArray();

		UserRecordBean usrrec = usrInfoArray.get(0);

	%>
	<div id="caleandar"></div>
	<div class="container-scroller"></div>
	<div class="d-flex align-items-center justify-content-between">

		<button id="bannerClose" class="btn border-0 p-0">
			<i class="mdi mdi-close text-white me-0"></i>
		</button>
	</div>

	<!-- partial:partials/_navbar.html -->
	<nav
		class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		<div
			class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
			<a class="navbar-brand brand-logo" href="index.html"><img
				src="./assets/img/logo.svg" alt="logo" /></a> <a
				class="navbar-brand brand-logo-mini" href="index.html"><img
				src="./assets/img/logo-mini.svg" alt="logo" /></a>
		</div>
		<div class="navbar-menu-wrapper d-flex align-items-stretch">
			<button class="navbar-toggler navbar-toggler align-self-center"
				type="button" data-toggle="minimize"></button>

			<ul class="navbar-nav navbar-nav-right">
				<li class="nav-item nav-profile dropdown"><a
					class="nav-link dropdown-toggle" id="profileDropdown" href="#"
					data-bs-toggle="dropdown" aria-expanded="false">


						<div class="nav-profile-img">
							<img src="./assets/img/icon/kkrn_icon_user_1.jpg" alt="image">
							<span class="availability-status online"></span>






						</div>
						<div class="nav-profile-text">
							<p class="mb-1 text-black"><%=usrrec.getUserName()%></p>
						</div>

				</a>
		</div>
	</nav>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<ul class="nav">
				<li class="nav-item nav-profile"><a href="#" class="nav-link">
						<div class="nav-profile-image">
							<img src="./assets/img/icon/kkrn_icon_user_1.jpg" " alt="profile">
							<span class="login-status online"></span>
							<!--change to offline or busy as needed-->
						</div> <!-- name -->
						<div class="nav-profile-text d-flex flex-column">


							<span class="font-weight-bold mb-2"><%=usrrec.getUserName()%></span>
							<span class="text-secondary text-small"></span>
						</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>



				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="CalendarInfoServlet"> <span class="menu-title">ホーム</span>


						<i class="mdi mdi-home menu-icon"></i>
				</a></li>




				<li class="nav-item"><a class="nav-link"
					href="MyMoney/index.html"> <span class="menu-title">家計簿</span>
						<i class="mdi mdi-table-large menu-icon"></i>




						<li class="nav-item"><a class="nav-link"
							href="moving procedures.jsp"> <span class="menu-title">引っ越し手続き</span>
								&nbsp;&nbsp;&nbsp; <i class="mdi mdi-contacts menu-icon"></i>
						</a></li>

						<li class="nav-item"><a class="nav-link" href="logout.jsp">
								<span class="menu-title">ログアウト</span> &nbsp;&nbsp;&nbsp;<i
								class="mdi mdi-format-list-bulleted menu-icon"></i>

						</a></li>


						<div class="collapse" id="general-pages">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"> 年 </a></li>
								<li class="nav-item"><a class="nav-link"> 月 </a></li>
								<li class="nav-item"><a class="nav-link"> 週 </a></li>
								<li class="nav-item"><a class="nav-link"> 日 </a></li>
								<li class="nav-item"><a class="nav-link"> 指定 </a></li>
							</ul>
						</div></li>
				<li class="nav-item sidebar-actions"><span class="nav-link">





				</span></li>
			</ul>
		</nav>
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">

				<div class="row">
					<div class="col-md-4 stretch-card grid-margin">
						<div class="card bg-gradient-danger card-img-holder text-white">
							<div class="card-body">

								<br>
								<br>
								<br>
								<br>
								<div class="container">
									<div class="clock">
										<p class="clock-date"></p>
										<p class="clock-time"></p>
									</div>
								</div>



							</div>
						</div>
					</div>

					<script src="js/weather.js"></script>
					<div class="col-md-4 stretch-card grid-margin">
						<div class="card bg-gradient-info card-img-holder text-white">
							<div class="card-body">

								<div id="ww_81e85688d065e" v='1.3' loc='id' a='{"t":"horizontal","lang":"ja","sl_lpl":1,"ids":["wl2678"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"rgba(255,255,255,1)","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather Data Source: <a href="https://weerlabs.nl/weer_fukuoka/morgen/" id="ww_81e85688d065e_u" target="_blank">weer morgen Fukuoka</a></div><script async src="https://app1.weatherwidget.org/js/?id=ww_81e85688d065e"></script>
								<script async
									src="https://app1.weatherwidget.org/js/?id=ww_837bfa1b2ced5"></script>

							</div>
						</div>
					</div>
					<div class="col-md-4 stretch-card grid-margin">
						<div class="card bg-gradient-success card-img-holder text-white">
							<div class="card-body">

<div class="ball"></div>
<div class="loading-board board1"></div>
<div class="loading-board board2"></div>
<div class="loading-board board3"></div>

</div>
</div>
</div>
</div>





				<div class="container-calendar">
					<!-- カレンダー -->
					<h4 id="monthAndYear"></h4>
					<div class="button-container-calendar">
						<button id="previous" onclick="previous()">‹</button>
						<button id="next" onclick="next()">›</button>
					</div>



					<table class="table-calendar" id="calendar" data-lang="ja">
						<thead id="thead-month"></thead>
						<tbody id="calendar-body"></tbody>
					</table>


					<div class="footer-container-calendar">
						<label for="month">日付指定：</label> <select id="month"
							onchange="jump()">
							<option value=0>1月</option>
							<option value=1>2月</option>
							<option value=2>3月</option>
							<option value=3>4月</option>
							<option value=4>5月</option>
							<option value=5>6月</option>
							<option value=6>7月</option>
							<option value=7>8月</option>
							<option value=8>9月</option>
							<option value=9>10月</option>
							<option value=10>11月</option>
							<option value=11>12月</option>
						</select> <select id="year" onchange="jump()"></select>
					</div>
				</div>

				<script src="./assets/js/calendar.js" type="text/javascript"></script>
			</div>
		</div>
	</div>

	<br>
	<br>






	</div>



	<script src="./assets/vendors/js/vendor.bundle.base.js"></script>
	<script src="./assets/vendors/chart.js/Chart.min.js"></script>
	<script src="./assets/js/jquery.cookie.js" type="text/javascript"></script>
	<script src="./assets/js/off-canvas.js"></script>
	<script src="./assets/js/hoverable-collapse.js"></script>
	<script src="./assets/js/misc.js"></script>
	<script src="./assets/js/dashboard.js"></script>
	<script src="./assets/js/todolist.js"></script>
	<script type="text/javascript" src="./js/caleandar.js"></script>
	<script type="text/javascript" src="./js/demo.js"></script>
	<script src="assets/js/clock.js"></script>
</body>
</html>