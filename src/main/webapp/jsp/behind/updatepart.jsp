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
            <form  action="${ctx}/app/part/updateTo" method="post" enctype="multipart/form-data">
                <input type="hidden" value="${part.ID}" name="ID">
                <div class="layui-form-item">
                    <label class="layui-form-label">备件名称</label>
                    <div class="layui-input-block">
                        <input type="text" name="name" lay-verify="title" autocomplete="off" value="${part.name}" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-block">
                        <input type="text" name="price" value="${part.price}"  lay-verify="title" autocomplete="off"  class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">匹配车型</label>
                    <div class="layui-input-block" id="select">
                        <select name="type" lay-filter="aihao"  class="layui-input">
                            <option value="${part.type}">${part.type}</option>
                            <option value="轿车">轿车</option>
                            <option value="跑车">跑车</option>
                            <option value="面包车">面包车</option>
                            <option value="货车">货车</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">类别编号</label>
                    <div class="layui-input-block" >
                        <select name="number" lay-filter="aihao"  class="layui-input">
                            <option value="${part.number}">${part.number}</option>
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="C">C</option>
                            <option value="D">D</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="submit" value="提交" class="layui-btn layui-btn-primary">
                        <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回" class="layui-btn layui-btn-primary">
                    </div>
                </div>
            </form>

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