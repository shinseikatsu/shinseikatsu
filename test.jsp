<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>TOP</title>

</head>
<body>

<h2>Welcome！</h2>
認証済みです。
あなたのユーザIDは<%= request.getRemoteUser() %>です

<a href = "logout.jsp">ログアウト</a>
<br>
<a href = "UserInfoServlet">ユーザ情報確認</a>
<br>
<a href = "index.html">テスト用リンクです。ログアウトせずタイトル画面へ</a>


</body>
</html>