<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Hello Bootstrap</title>
<!-- Bootstrap core CSS -->
<link href="./bootstrap-3.2.0-dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type='text/css'>
body {
	background-color: #CCC;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">首页</a> <a class="navbar-brand"
					href="#">测试</a> <a class="navbar-brand" href="#">开发</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right" role="form">
					<div class="form-group">
						<input type="text" placeholder="Email" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" placeholder="Password" class="form-control">
					</div>
					<button type="submit" class="btn btn-success">Sign in</button>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>
	<div class="jumbotron">
		<div id='content' class='row-fluid'>
			<h2>Hello, world!</h2>
			<p class="blog-post-meta">
				January 1, 2014 by <a href="#">Mark</a>
			</p>
			<p>This is a template for a simple marketing or informational
				website. It includes a large callout called a jumbotron and three
				supporting pieces of content. Use it as a starting point to create
				something more unique.</p>
			<p>
				<a class="btn btn-primary btn-lg" role="button">阅读全文 &raquo;</a>
			</p>
		</div>
	</div>
	<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
		<div class="sidebar-module sidebar-module-inset">
			<h4>About</h4>
			<p>
				Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis
				consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla
				sed consectetur.
			</p>
		</div>
		<div class="sidebar-module">
			<h4>Elsewhere</h4>
			<ol class="list-unstyled">
				<li><a href="#">博客园</a></li>
				<li><a href="#">开源中国</a></li>
				<li><a href="#">infoq</a></li>
			</ol>
		</div>
	</div>
</body>
</html>