<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh">

<head>
<title>首页</title>
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
								<li><a id="id_31" href="/hbase/apps/today">今日动态</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">帮助</a>
							<ul class="dropdown-menu">
								<li><a id="id_13" href="#" target="_blank">在线文档</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">

			<div class="span8">


				<div class="hero-unit">
					<div class="row-fluid">
						<div class="span4"></div>
						<div class="span3">
							<img src="/hbase/media/img/hbase.png" />
						</div>
						<div class="span4"></div>
					</div>
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th align="left" width="20%" class="">Attribute Name</th>
								<th align="left" width="20%">Value</th>
							</tr>
							<tr>
								<th align="left" width="20%">ServerName</th>
								<td id="appkey" width="30%" class='appKey'></td>
							</tr>
							<tr>
								<th align="left" width="20%" class="">Version</th>
								<td id="appkey" width="30%" class='appKey'></td>
							</tr>
							<tr>
								<th align="left" width="20%">Zookeeper_quorum</th>
								<td id="appkey" width="30%" class='appKey'></td>
							</tr>
							<tr>
								<th align="left" width="20%">DeadRegionServers</th>
								<td width="30%"></td>
							</tr>
							<tr>
								<th align="left" width="20%">MasterStartTime</th>
								<td width="30%"></td>
							</tr>
							<tr>
								<th align="left" width="20%">Live_RegionServer</th>
								<td width="30%"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="span4">
				<div class="hero-unit">
					<h3>相关搜索</h3>
					<ul class="nav nav-stacked">
						<li><input style="font-size: 12px; width: 160px; display:;"
							type="text" id="msgsearch_mgr" name="msgsearch_mgr"
							value="搜索条件待定"
							onclick="if(value==defaultValue){value='';this.style.color='#000'}"
							onBlur="if(!value){value=defaultValue;this.style.color='#999'}"
							style="color:#999" class="searchMeath" />&nbsp; &nbsp; <input
							class="btn btn-large btn-primary" type="button" value="搜索"
							onclick="toSearchMsg()" /></li>
					</ul>
				</div>
			</div>

		</div>
		<hr>
		<footer>
			<p>&copy; HBase Manager 2014</p>
		</footer>
	</div>

</body>

</html>