<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<title>HBase Manger</title>
<jsp:include page="../public/css.jsp"></jsp:include>
<jsp:include page="../public/script.jsp"></jsp:include>
</head>
<div class="container">

	<form class="form-signin" action="/hbase/apps/check" method="post">
		<h2 class="form-signin-heading">HBase Manager</h2>
		<input id="username" type="text" class="input-block-level"
			placeholder="用户名" name="username"> <input id="password"
			type="password" class="input-block-level" placeholder="密码"
			name="password"> <input class="btn btn-large btn-primary"
			type="submit" value="登录" />
		<p color='red'></p>
	</form>

</div>