<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/7/007
  Time: 12:32
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
                <%--<colgroup>--%>
                    <%--<col width="150">--%>
                    <%--<col width="200">--%>
                    <%--<col>--%>
                <%--</colgroup>--%>
                <thead>
                <tr>
                    <th>车辆订单受理</th>
                </tr>


                </thead>
                <tbody>
                <tr>
                    <td>订购车型：</td>
                    <td>${order.name}</td>
                    <td>订购数量：</td>
                    <td>${order.counts}</td>
                </tr>
                <tr>
                    <td>付款方式：</td>
                    <td>${order.payment}</td>
                    <td>车辆颜色：</td>
                    <td>${order.color}</td>
                </tr>
                <tr>
                    <td>公司名称：</td>
                    <td>${order.enterpriseName}</td>
                    <td>详细地址：</td>
                    <td>${order.address}</td>
                </tr>
                <tr>
                    <td>所在地区：</td>
                    <td>${order.area}</td>
                    <td>经销商名称：</td>
                    <td>${order.dealer}</td>
                </tr>
                <tr>
                    <td>联系人：</td>
                    <td>${order.linkman}</td>
                    <td>联系电话：</td>
                    <td>${order.phone}</td>
                </tr>
                <tr>
                   <td>备注</td>
                    <td>${order.remark}</td>
                </tr>
                </tbody>
            </table>
            <a href="${ctx}/app/order/dealTo/${order.ID}"><button class="layui-btn layui-btn-normal">受理</button></a>
            <a href="${ctx}/app/order/delete/${order.ID}"><button class="layui-btn layui-btn-danger">删除</button></a>
            <a href="javascript:history.back(-1)"><button class="layui-btn">返回</button></a>
        </div>
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
