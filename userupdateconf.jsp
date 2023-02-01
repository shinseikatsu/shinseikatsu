<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String userid = request.getParameter("userid");
String username = request.getParameter("username");
String password = request.getParameter("password");
String mail = request.getParameter("mail");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザ編集</title>
</head>
<body>
<h2>登録内容の確認</h2>

<table>

<tr>
<td>ユーザID</td>
<td><%= userid %></td>
</tr>

<tr>
<td>ユーザネーム</td>
<td><%= username %></td>
</tr>

<tr>
<td>パスワード</td>
<td><%= password %></td>
</tr>

<tr>
<td>メールアドレス</td>
<td><%= mail %></td>
</tr>

</table>

こちらの内容で更新します
<form action="UserUpdateServlet" method = "post">
<table>
<input type="hidden" name="userid" value="<%= userid %>">
<input type="hidden" name="username" value="<%= username %>">
<input type="hidden" name="password" value="<%= password %>">
<input type="hidden" name="mail" value="<%= mail %>">
<tr>
<td><input type="submit" value="登録"></td>
</tr>

<tr>
<td><a href="test.jsp">メニューへ戻る</a></td>
</tr>
</table>
</form>
</body>
</html>