<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>New Life Support app</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="./assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="./assets/vendors/css/vendor.bundle.base.css">
<!-- Layout styles -->
<link rel="stylesheet" href="./assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="./assets/img/logo.svg" />
</head>
<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth">
				<div class="row flex-grow">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left p-5">
							<div class="brand-logo">
								<img src="./assets/img/logo.svg">
							</div>
							<h4>新規登録</h4>
							<h6 class="font-weight-light">以下の情報を入力してください</h6>
							<form action="Confirm.jsp" method="post" class="forms-sample">
								<div class="form-group">

									<input type="text"
										class="form-control form-control-lg"
										name="userid" placeholder="ユーザID">

								</div>
								<div class="form-group">

									<input type="text"
										class="form-control form-control-lg"
										name="username" placeholder="ユーザ名">

								</div>
								<div class="form-group">
									<input type="email" class="form-control form-control-lg"
									name="mail"	 placeholder="Eメール">
								</div>

								<div class="form-group">
									<input type="password" class="form-control form-control-lg"
										name="password" placeholder="パスワード">
								</div>
								<div class="my-2 d-flex justify-content-between align-items-center">
								<button type="submit" class="btn btn-gradient-primary me-2" >登録</button>
									<a href="CalendarInfoServlet" class="btn btn-light">キャンセル</a>

											 </div>
									</div>


							</form>

						</div>
						<div class="text-center mt-4 font-weight-light">
							既にアカウントをお持ちですか？ <a href="login.jsp" class="text-primary">ログイン</a>
						</div>


					</div>
				</div>
			</div>
		</div>

	</div>



	<script src="./assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="./assets/js/off-canvas.js"></script>
	<script src="./assets/js/hoverable-collapse.js"></script>
	<script src="./assets/js/misc.js"></script>
	<!-- endinject -->
</body>
</html>