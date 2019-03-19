<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/11/011
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>置换中心</title>
</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/replace.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css">
<script src="${ctx}/static/layui/layui.all.js"></script>
<script src="${ctx}/static/diy/jquery.js"></script>
<body>
<div>
    <jsp:include page="top.jsp"></jsp:include>
    <div class="bc">
    <div class="content">
        <p>置换申请表</p>
        <div class="order">
            <form action="${ctx}/app/replace/add" method="post">
                <label >置换新车品牌:</label><input type="text" name="nbrand" class="layui-input"  style="background: rgba(200,200,200,0.3)">
                <label >置换新车型号:</label><input type="text" name="nnum" class="layui-input"  style="background: rgba(200,200,200,0.3)">
                 <label > 新车颜色</label><input type="text" name="color" class="layui-input"  style="background: rgba(200,200,200,0.3)">
                <label > 旧车品牌:</label><input type="text" name="obrand" class="layui-input"  style="background: rgba(200,200,200,0.3)">
                 <label >旧车型号:</label><input type="text" name="onum" class="layui-input"  style="background: rgba(200,200,200,0.3)">
                 <label >旧车估价</label><input type="text" name="ovalue" class="layui-input"  style="background: rgba(200,200,200,0.3)">
                <label >申请人:</label><input type="text" name="linkman" class="layui-input"  style="background: rgba(200,200,200,0.3)">
                  <label >联系方式:</label><input type="text" name="phone" class="layui-input"  style="background: rgba(200,200,200,0.3)">
                <button class="layui-btn" lay-submit lay-filter="formDemo" id="suc" >立即提交</button>


            </form>
        </div>
    </div>
    <div class="foot"></div>
    </div>
</div>
</body>
</html>
