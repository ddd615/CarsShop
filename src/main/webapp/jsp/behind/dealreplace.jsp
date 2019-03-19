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
                    <th>置换申请单</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>置换新车品牌</td>
                    <td>${res.nbrand}</td>
                    <td>旧车品牌</td>
                    <td>${res.obrand}</td>
                </tr>
                <tr>
                    <td>置换新车型号</td>
                    <td>${res.nnum}</td>
                    <td>旧车型号</td>
                    <td>${res.onum}</td>
                </tr>
                <tr>
                    <td>新车颜色</td>
                    <td>${res.color}</td>
                    <td>旧车价格</td>
                    <td>${res.ovalue}</td>
                </tr>
                <tr>
                    <td>申请人</td>
                    <td>${res.linkman}</td>
                    <td>申请时间</td>
                    <td>${res.createdate}</td>
                </tr>
                <tr>
                    <td>联系方式</td>
                    <td>${res.phone}</td>
                    <td>状态(1:已受理 0：未受理）</td>
                    <td>${res.status}</td>
                </tr>
                </tbody>
            </table>
            <a href="${ctx}/app/replace/update/${res.ID}"><button>受理</button></a>
            <a href="${ctx}/app/replace/delete/${res.ID}">删除</a>
            <a href="javascript:history.back(-1)">返回</a>
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