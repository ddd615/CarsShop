<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/6/006
  Time: 19:37
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
        <form class="layui-form" action="${ctx}/app/news/updateTo">

            <div class="layui-form-item">
                <label class="layui-form-label">标题</label>
                <div class="layui-input-block">
                    <input type="hidden" value="${news.ID}" name="id">
                    <input type="text" name="title" lay-verify="title" autocomplete="off"  class="layui-input" value="${news.title}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单行选择框</label>
                <div class="layui-input-block">
                    <select name="newsType" lay-filter="aihao">
                        <option value="${news.newsType}" selected="selected">${news.newsType}</option>
                        <option value="站内新闻" >站内新闻</option>
                        <option value="新车下线">新车下线</option>
                        <option value="行内新闻">行内新闻</option>
                        <option value="集团信息">集团信息</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">文本域</label>
                <div class="layui-input-block">
                    <textarea class="layui-textarea" name="content" >${news.content}</textarea>
                </div>
            </div>
            <input type="submit" value="提交" class="layui-btn">
            <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回" class="layui-btn layui-btn-primary">
        </form>

    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="${ctx}/static/layui/layui.all.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>