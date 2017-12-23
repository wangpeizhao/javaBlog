<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<title>${title}</title>
<%  
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/bootstrap.3.0.1/bootstrap.min.css">
<script type="text/javascript" src="<%=basePath %>resources/js/jquery.1.11.0.min.js"></script>
<script type="text/javascript" src="<%=basePath %>resources/js/bootstrap.3.0.1/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="<%=basePath %>">Home</a>
					</div>
					
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<!-- <li class="active">
								 <a href="<%=basePath %>">Home</a>
							</li> -->

							<c:forEach items="${topicLists}" var="item">
								<li>
									 <a href="?tid=${item.topicId}">${item.topicName}</a>
								</li>
							</c:forEach>
							<li class="dropdown">
								 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<c:forEach items="${topicLists}" var="item">
										<li>
											 <a href="?tid=${item.topicId}">${item.topicName}</a>
										</li>
									</c:forEach>
								</ul>
							</li>
						</ul>
						<%
						 	HttpSession s = request.getSession();
						 	Object BlogManagerManagerName = s.getAttribute("BlogManagerManagerName");
						 	Object BlogManagerAccount = s.getAttribute("BlogManagerAccount");
						%>
						<ul class="nav navbar-nav navbar-right">
							<li>
								 <a href="javascript:alert('恭喜，您已登录！');"><%=BlogManagerManagerName!=null?BlogManagerManagerName:BlogManagerAccount%></a>
							</li>
							<li>
								 <a href="<%=basePath%>logout" onclick="javascript:if(!confirm('确定要注销登录吗？')){return false;};">注销</a>
							</li>
						</ul>
					</div>
					
				</nav>