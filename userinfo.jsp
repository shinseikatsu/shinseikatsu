<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@
page import="java.util.*"
%>
<%@
page import="test.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ユーザ情報</title>
<link rel="stylesheet"
	href="./assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="./assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="shortcut icon" href="./assets/img/logo.svg">
</head>
<body>
<jsp:useBean id="usrInfoBean" class="test.UserInfoBean" scope="session"/>
<h1>ユーザ情報です</h1>
<a href="test.jsp">戻る</a>
<%
ArrayList<UserRecordBean> usrInfoArray = usrInfoBean.getUserRecordArray();

UserRecordBean record = usrInfoArray.get(0);
%>
ユーザID
<br>
<%=record.getUserId() %>
<br>
<br>
ユーザ名
<br>
<%=record.getUserName() %>
<br>
<br>
パスワード
<br>
<%=record.getPassword() %>
<br>
<br>
メール
<br>
<%=record.getMail() %>


<a href="UserInfoUpServlet">編集</a>


</body>
</html>