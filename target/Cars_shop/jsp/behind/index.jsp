<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/5/005
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>后台管理</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
<jsp:include page="top.jsp"></jsp:include>

    <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
           首页
    </div>
    </div>

    <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
    </div>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>