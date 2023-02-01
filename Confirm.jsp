<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>確認画面</title>
<link rel="stylesheet"
	href="./assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="./assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="shortcut icon" href="./assets/img/logo.svg">
</head>
<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth">
				<div class="row flex-grow">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left p-5">
							<div class="brand-logo"></div>
							<img src="./assets/img/logo.svg">



							<%
								String userid = request.getParameter("userid");
								String username = request.getParameter("username");
								String mail = request.getParameter("mail");
								String password = request.getParameter("password");
							%>

							<br><br><br><br>
							<h4 class="font-weight-Japan">確認画面</h4>
							<br>
							<form  class="forms-sample">
							<hr>

								<div class="form-group">
									<h3>
										ユーザID「<%=userid%>」
									</h3>
								</div>
							<hr>

								<div class="form-group">
									<h3>
										ユーザ名「<%=username%>」
									</h3>
								</div>
							<hr>
								<div class="form-group">
									<h3>
										Eメール「<%=mail%>」
									</h3>
								</div>
							<hr>
								<div class="form-group">
									<h3>
										パスワード「<%=password%>」
									</h3>
								</div>
							<hr>
							</form>
							<br>
							<br>
							<form action="UserAddServlet" method="post" class="forms-sample">
								<h2>上記の内容で登録しますか？</h2>
							<hr>
							<input type="hidden" name="userid" value="<%= userid %>">
							<input type="hidden" name="username" value="<%= username %>">
							<input type="hidden" name="password" value="<%= password %>">
							<input type="hidden" name="mail" value="<%= mail %>">

								<button type="submit" class="btn btn-gradient-primary me-2">登録</button>
								<a href="register.jsp" class="btn btn-light">キャンセル</a>
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



</body>
</html>