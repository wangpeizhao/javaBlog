<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
							<li>
								 <a href="admin/add">Add</a>
							</li>
							<li class="active">
								 <a href="#">Link</a>
							</li>
							<li class="dropdown">
								 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li>
										 <a href="#">Action</a>
									</li>
									<li>
										 <a href="#">Another action</a>
									</li>
									<li>
										 <a href="#">Something else here</a>
									</li>
									<li class="divider">
									</li>
									<li>
										 <a href="#">Separated link</a>
									</li>
									<li class="divider">
									</li>
									<li>
										 <a href="#">One more separated link</a>
									</li>
								</ul>
							</li>
						</ul>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" />
							</div> <button type="submit" class="btn btn-default">Submit</button>
						</form>
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
				<div class="jumbotron">
					<h1>
						Hello, <%=BlogManagerManagerName!=null?BlogManagerManagerName:BlogManagerAccount%>!
					</h1>
					<p>
						This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
					</p>
					<p>
						 <a class="btn btn-primary btn-large" href="#">Learn more</a>
					</p>
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