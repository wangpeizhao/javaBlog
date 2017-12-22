<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page session="true"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" />
							</div> <button type="submit" class="btn btn-default">Submit</button>
						</form>
						<ul class="nav navbar-nav navbar-right">
							<li>
								 <a href="<%=basePath %>login">Login</a>
							</li>
						</ul>
					</div>
					
				</nav>
				<div class="clearfix" style="margin-bottom: 20px;">
					
					<div class="carousel slide" id="carousel-947177">
						<ol class="carousel-indicators">
							<li data-slide-to="0" data-target="#carousel-947177">
							</li>
							<li data-slide-to="1" data-target="#carousel-947177" class="active">
							</li>
							<li data-slide-to="2" data-target="#carousel-947177">
							</li>
						</ol>
						<div class="carousel-inner">
							<div class="item">
								<img alt="" src="<%=basePath %>resources/img/default.jpg" />
								<div class="carousel-caption">
									<h4>
										First Thumbnail label
									</h4>
									<p>
										Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
									</p>
								</div>
							</div>
							<div class="item active">
								<img alt="" src="<%=basePath %>resources/img/default1.jpg" />
								<div class="carousel-caption">
									<h4>
										Second Thumbnail label
									</h4>
									<p>
										Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
									</p>
								</div>
							</div>
							<div class="item">
								<img alt="" src="<%=basePath %>resources/img/default2.jpg" />
								<div class="carousel-caption">
									<h4>
										Third Thumbnail label
									</h4>
									<p>
										Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
									</p>
								</div>
							</div>
						</div> <a class="left carousel-control" href="#carousel-947177" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-947177" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="300x200" src="<%=basePath %>resources/img/default4.jpg" />
							<div class="caption">
								<h3>
									Thumbnail label
								</h3>
								<p>
									Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
								</p>
								<p>
									 <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="300x200" src="<%=basePath %>resources/img/default5.jpg" />
							<div class="caption">
								<h3>
									Thumbnail label
								</h3>
								<p>
									Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
								</p>
								<p>
									 <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="300x200" src="<%=basePath %>resources/img/default6.jpg" />
							<div class="caption">
								<h3>
									Thumbnail label
								</h3>
								<p>
									Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
								</p>
								<p>
									 <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="row clearfix">
					<c:forEach items="${newsinfoListsGroupByTopic}" var="ListsByTopic" varStatus="status">

						<div class="col-md-2 column">
							
							<ul>
								<c:forEach items="${ListsByTopic.value}" var="item" varStatus="status2">
									<li>
										 <a href="?tid=${item.newsId}">${item.newsTitle}</a>
										 <p>${item.newsSummary}</p>
									</li>
								</c:forEach>
							</ul>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-md-4 column">
				<c:forEach items="${newsinfoLists}" var="item">
					<li>
						 <a href="?tid=${item.newsId}">${item.newsTitle}</a>
						 <p>${item.newsSummary}</p>
					</li>
				</c:forEach>
				<h2>
					Heading
				</h2>
				<p>
					Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
				</p>
				<p>
					 <a class="btn" href="#">View details »</a>
				</p>
			</div>
			<div class="col-md-4 column">
				<h2>
					Heading
				</h2>
				<p>
					Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
				</p>
				<p>
					 <a class="btn" href="#">View details »</a>
				</p>
			</div>
			<div class="col-md-4 column">
				<h2>
					Heading
				</h2>
				<p>
					Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
				</p>
				<p>
					 <a class="btn" href="#">View details »</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>