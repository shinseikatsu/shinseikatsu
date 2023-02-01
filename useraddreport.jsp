<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザ登録完了</title>
<link rel="stylesheet"
	href="./assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="./assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="shortcut icon" href="./assets/img/logo.svg">
</head>
<body>
<jsp:useBean id="UserRecord" class="test.UserRecordBean" scope="session" />
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth">
				<div class="row flex-grow">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left p-5">
							<div class="brand-logo"></div>
							<img src="./assets/img/logo.svg">


<h1>登録が完了しました</h1>
<p><%=session.getAttribute("RecordCount") %>件登録しました
<table border=1>
<tr>
<td>ユーザID</td>
<td><jsp:getProperty name="UserRecord" property="userId"/></td>
</tr>

<tr>
<td>ユーザ名</td>
<td><jsp:getProperty name="UserRecord" property="userName"/></td>
</tr>

<tr>
<td>パスワード</td>
<td><jsp:getProperty name="UserRecord" property="password"/></td>
</tr>

<tr>
<td>Eメール</td>
<td><jsp:getProperty name="UserRecord" property="mail"/></td>
</tr>
</table>
<a href="login.jsp">トップ画面へ</a>

				</div>
						</div>
					</div>
				</div>
			</div>
		</div>

</body>
</html>