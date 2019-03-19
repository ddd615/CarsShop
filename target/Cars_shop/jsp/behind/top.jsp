<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/5/005
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
<script src="${ctx}/static/layui/layui.js"></script>
<div class="layui-header">
    <div class="layui-logo">汽车销售后台管理</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:;" id="nm">
             ${user.name}
            </a>
            <dl class="layui-nav-child">
                <dd><a href="">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
</div>

<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item"><a href="${ctx}/app/car">车辆信息处理</a></li>
            <li class="layui-nav-item"><a href="${ctx}/app/car/lease">租凭车辆处理</a></li>
            <li class="layui-nav-item"><a href="${ctx}/app/order">订单信息处理</a></li>
            <li class="layui-nav-item"><a href="${ctx}/app/bnews">新闻信息处理</a></li>
            <li class="layui-nav-item"><a href="${ctx}/app/lease">租凭信息处理</a></li>
            <li class="layui-nav-item"><a href="${ctx}/app/replace">置换信息处理</a></li>
            <li class="layui-nav-item"><a href="${ctx}/app/suggest">客户投诉处理</a></li>
            <li class="layui-nav-item"><a href="${ctx}/app/part">备件数据处理</a></li>
        </ul>
    </div>
</div>
