<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/12/012
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询中心</title>
</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/query.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css">

<script src="${ctx}/static/diy/jquery.js"></script>
<body>
<div>
    <jsp:include page="top.jsp"></jsp:include>
    <div class="bc">
    <div class="content">

        <div style="padding: 15px;" >
            <p>车辆信息查询</p>
            <form class="layui-form" action="${ctx}/app/car/queryByWord" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">请输入关键字</label>
                    <div class="layui-input-block">
                        <input type="text" name="word" required  lay-verify="required" value="${word}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">关键字类型</label>
                    <div class="layui-input-block">
                        <select  lay-verify="required" name="wordType" >
                            <option value="1" >品牌</option>
                            <option value="2" >型号</option>
                            <option value="3" >类别</option>
                        </select>
                    </div>
                </div>
                <input type="submit" value="提交" class="layui-btn">

            </form>
            <table class="layui-table" lay-skin="line">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>品牌</th>
                    <th>型号</th>
                    <th>类别</th>
                    <th>价格</th>

                </tr>
                </thead>
                <tbody>

                <c:forEach items="${cars}" var="obj">
                    <tr>
                        <td>${obj.brand}</td>
                        <td>${obj.carsNumber}</td>
                        <td>${obj.type}</td>
                        <td>${obj.value}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <div class="foot"></div>
</div>
</div>
</body>
<script src="${ctx}/static/layui/layui.all.js"></script>
</html>
