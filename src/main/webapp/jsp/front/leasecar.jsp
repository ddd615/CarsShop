<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/11/011
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻中心</title>

</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/lease.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css">
<script src="${ctx}/static/layui/layui.all.js"></script>
<script src="${ctx}/static/diy/jquery.js"></script>
<body>
<div>
    <jsp:include page="top.jsp"></jsp:include>
    <div class="bc">
    <div class="content">
        <p>租凭申请单</p>
        <div class="biaodan">
        <form class="layui-form" action="${ctx}/app/front/addlease">
            <div class="layui-form-item">
                <label class="layui-form-label">品牌：</label>
                <div class="layui-input-block">
                    <input type="text" name="brand" required  lay-verify="required" placeholder="请输入品牌"  class="layui-input"  style="background: rgba(200,200,200,0.3)">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">型号：</label>
                <div class="layui-input-block">
                    <input type="text" name="carsNumber" required  lay-verify="required" placeholder="请输入型号" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">天数：</label>
                <div class="layui-input-block">
                    <input type="text" name="day" required  lay-verify="required" placeholder="请输入天数" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">租用人姓名：</label>
                <div class="layui-input-block">
                    <input type="text" name="linkman" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">联系方式</label>
                <div class="layui-input-block">
                    <input type="text" name="phone" required  lay-verify="required" placeholder="请输入电话" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo" id="suc" >立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
        </div>
        <div>
            <c:if test="${result}">
            <h1>添加成功</h1>
            </c:if>
            <c:if test="!${result}">
                <h1>添加失败</h1>
            </c:if>
        </div>
    </div>
    <div class="foot"></div>
    </div>
</div>
</body>
<script src="${ctx}/static/layui/layui.all.js"></script>
<script>

</script>
</html>
