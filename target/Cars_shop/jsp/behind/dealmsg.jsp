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
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>租凭申请单</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>品牌</td>
                    <td>${lease.brand}</td>
                    <td>类型</td>
                    <td>${lease.carsNumber}</td>
                </tr>
                <tr>
                    <td>天数</td>
                    <td>${lease.day}</td>
                    <td>申请人</td>
                    <td></td>
                </tr>
                <tr>
                    <td>手机号</td>
                    <td>${lease.phone}</td>
                    <td>创建时间</td>
                    <td>${lease.createdate}</td>
                </tr>
                </tbody>
            </table>
            <a href="${ctx}/app/lease/update/${lease.ID}"><button>受理</button></a>
            <a href="${ctx}/app/lease"><button>返回</button></a>
            <a href="${ctx}/app/lease/delete/${lease.ID}"><button>删除</button></a>
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