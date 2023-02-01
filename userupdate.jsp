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
<title>ユーザ編集</title>
</head>
<body>
<jsp:useBean id="usrInfoBean" class="test.UserInfoBean" scope="session"/>
<h1>ユーザ情報の編集が行えます</h1>

<%
ArrayList<UserRecordBean> usrInfoArray = usrInfoBean.getUserRecordArray();

UserRecordBean record = usrInfoArray.get(0);
%>

<form action="userupdateconf.jsp" method = "post">
<table>
<tr>
<td>ユーザID</td>
<td><input type="text" name="userid" value="<%=record.getUserId() %>" readonly></td>
</tr>

<tr>
<td>ユーザネーム</td>
<td><input type="text" name="username" value="<%=record.getUserName() %>"></td>
</tr>

<tr>
<td>パスワード</td>
<td><input type="text" name="password" value="<%=record.getPassword() %>"></td>
</tr>

<tr>
<td>メールアドレス</td>
<td><input type="text" name="mail" value="<%=record.getMail() %>"></td>
</tr>

<tr>
<td><input type="submit" value="登録"></td>
</tr>

<tr>
<td><a href="UserInfoServlet">戻る</a></td>
</tr>
</table>
</form>
</body>
</html>