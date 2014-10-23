<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>自定义样式</title>
<!--自定义侧边栏样式-->
<style>
.divcss5-right {
	width: 320px;
	height: 120px;
	border: 1px solid #F00;
	float: right
}
</style>
</head>
<body>
	<!--class属性引用自定义样式-->
	<div class="divcss5-right">
		<h4>友情链接：</h4>
		<ol class="list-unstyled">
			<li><a href="#">博客园</a></li>
			<li><a href="#">开源中国</a></li>
			<li><a href="#">infoq</a></li>
		</ol>
	</div>
</body>
</html>