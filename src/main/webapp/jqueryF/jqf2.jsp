<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jquery file 2</title>

<link type="text/css" href="../jquery-ui-1.11.2.custom/jquery-ui.css"
	rel="stylesheet" />
<script type="text/javascript" src="../jquery/jquery-1.11.1.js"></script>

<script type="text/javascript"
	src="../jquery-ui-1.11.2.custom/jquery-ui.js"></script>

<script type="text/javascript">
	$(function() {
		$("#dialogDiv").dialog({
			autoOpen : false, // 是否自动弹出窗口
			modal : true, // 设置为模态对话框
			resizable : true,
			width : 410, //弹出框宽度
			height : 240, //弹出框高度
			title : "用户登录", //弹出框标题
			position : "center", //窗口显示的位置
			buttons : {
				'确定' : function() {
					//调用登录的方法
				},
				'取消' : function() {
					$(this).dialog("close");
				}
			}
		})
		// 初始化
		$("#btn").click(function() {
			//			$("#dialog-confirm").dialog("open");
			$("#dialogDiv").dialog("open");
		});

		$("#login").click(function(){
			$("#dialogDiv").dialog("open");
		});
		
		// 初始化对话框
		$("#dialog-confirm").dialog({
			autoOpen : false
		});
	});
</script>
</head>
<body>
	<input type="button" value="删除" id="btn" />
	<div id="dialog-confirm" title="Empty the recycle bin?"
		style="display: none">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 0 7px 20px 0;"></span> These items will
			be permanently deleted and cannot be recovered. Are you sure?
		</p>
	</div>
	<div id="dialogDiv">
		<input type="button" id="login" value="点击登录" />
		<div id="dialogDiv" style="text-align: center; padding-top: 24px">
			<label>帐号:</label><input type="text" id="user" /><br> <label>密码:</label><input
				type="password" id="password" /><br>
		</div>
</body>
</html>