<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>エラー</title>
</head>
<body>
<h1>エラー画面です</h1>
<%
Exception e = (Exception) session.getAttribute("Except");
%>
<p><%= e.getMessage() %>
<p><a href="CalendarInfoServlet">トップページへ</a>
</body>
</html>