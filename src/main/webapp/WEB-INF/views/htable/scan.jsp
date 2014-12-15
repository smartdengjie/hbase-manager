<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>详情</title>

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
				<label style="color: #AAA">HTable详情&nbsp;>&nbsp;查看</label>
				<div id="tab-home" class="tab-content">
					<form action="#" method="post" class="form-inline">
						<label>HTable Name </label> <select id="secType" name="secType"
							class="from-control">
							<c:forEach items="${htable.set}" var="htable">
								<option value="${htable.tableName}">${htable.tableName}</option>
							</c:forEach>
						</select>&nbsp;&nbsp; <input class="btn btn-large btn-primary" id="query" type="button" value="查询">
					</form>
				</div>
				<table id="htable_list" class="table table-striped">
					<tr class="success">
						<th>RowKey</th>
						<th>Column Family</th>
						<th>Column Qualifier</th>
						<th>Timestamp</th>
						<th>Value</th>
					</tr>
					<!--
                        	作者：smartdengjie@gmail.com
                        	时间：2014-12-10
                        	描述：用el表达式动态填充表格数据
                        -->
				</table>
			</div>
		</div>
	</div>
</body>

</html>