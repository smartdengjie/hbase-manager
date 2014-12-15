<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>近日趋势</title>
<jsp:include page="../public/css.jsp"></jsp:include>
<jsp:include page="../public/script.jsp"></jsp:include>
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="/hbase/apps/index">HBase Manager</a>
				<div class="nav-collapse collapse navbar-responsive-collapse">
					<p class="navbar-text pull-right">
						欢迎&nbsp;&nbsp;${user}&nbsp;&nbsp;&nbsp; <a
							href="/hbase/apps/logout/" class="navbar-link">Logout</a>
					</p>
					<ul class="nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">HTable详情</a>
							<ul class="dropdown-menu">
								<li><a id="id_7" href="/hbase/apps/scan">查看</a></li>
								<li><a id="id_31" href="/hbase/apps/today">近日动态</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">帮助</a>
							<ul class="dropdown-menu">
								<li><a id="id_13" href="#"
									target="_blank">在线文档</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<label style="color: #AAA">HTable详情&nbsp;>&nbsp;近日动态</label>
			</div>
		</div>
	</div>
</body>

</html>