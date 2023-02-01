<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザ編集完了</title>
</head>
<body>
<jsp:useBean id="UserRecord" class="test.UserRecordBean" scope="session" />

<h1>更新が完了しました</h1>
<p><%=session.getAttribute("RecordCount") %>件更新しました
<table border=1>
<tr>
<td>ユーザID</td>
<td><jsp:getProperty name="UserRecord" property="userId"/></td>
</tr>

<tr>
<td>ユーザネーム</td>
<td><jsp:getProperty name="UserRecord" property="userName"/></td>
</tr>

<tr>
<td>パスワード</td>
<td><jsp:getProperty name="UserRecord" property="password"/></td>
</tr>

<tr>
<td>メール</td>
<td><jsp:getProperty name="UserRecord" property="mail"/></td>
</tr>
</table>
<a href="test.jsp">トップ画面へ</a>
</body>
</html>