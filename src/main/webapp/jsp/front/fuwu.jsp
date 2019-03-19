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
    <title>客服中心</title>
</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/fuwu.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css">
<script src="${ctx}/static/layui/layui.all.js"></script>
<script src="${ctx}/static/diy/jquery.js"></script>
<body>
<div>
    <jsp:include page="top.jsp"></jsp:include>]
    <div class="bc">
    <div class="content">
        <div class="suggest">
            <P>投诉中心</P>
            <form class="layui-form" action="${ctx}/app/suggest/add" method="post">
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">投诉或建议</label>
                    <div class="layui-input-block">
                        <textarea name="content" placeholder="请输入内容" class="layui-textarea" style="background: rgba(200,200,200,0.3)"></textarea>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="part">
            <div class="chaxun">
                <p>备件查询中心</p>
            <form  action="${ctx}/app/part/front" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">关键字</label>
                    <div class="layui-input-block">
                        <input type="text" name="word" required  lay-verify="required" value="${word}" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">关键字类型</label>
                    <div class="layui-input-block">
                        <select  lay-verify="required" name="wordType" class="layui-input" style="background: rgba(200,200,200,0.3)">
                            <option value="1" >备件名</option>
                            <option value="2" >类别编号</option>
                            <option value="3" >匹配车型</option>
                        </select>
                    </div>
                </div>
                <input type="submit" value="提交" class="layui-btn">

            </form>
            </div>
            <div class="zhanshi">
                <table class="layui-table" lay-skin="line" style="background: rgba(200,200,200,0.3)">
                    <colgroup>
                        <col width="150">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>类别编号</th>
                        <th>备件名称</th>
                        <th>价格</th>
                        <td>匹配车型</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${part}" var="obj">
                        <tr>
                            <td>${obj.number}</td>
                            <td>${obj.name}</td>
                            <td>${obj.price}</td>
                            <td>${obj.type}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="server">
            <p>客服中心查询</p>
            <form action="${ctx}/front/server" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label" style="color: white">所在省</label>
                    <div class="layui-input-block">
                        <select  lay-verify="required" name="provide" class="layui-input" style="background: rgba(200,200,200,0.3)" >
                            <option value="广东省" >广东省</option>
                            <option value="湖南省" >湖南省</option>

                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label" style="color: white">所在城市</label>
                    <div class="layui-input-block">
                        <select name="city" lay-verify="required" class="layui-input" style="background: rgba(200,200,200,0.3)">
                            <option value=""></option>
                            <option value="广州">广州</option>
                            <option value="深圳">深圳</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
            <div class="biaoge">
                <table class="layui-table" style="background: rgba(200,200,200,0.3)">
                    <colgroup>
                        <col width="150">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                    <tr style="color: #ff553a">
                        <th>客服中心</th>
                        <th>客服电话</th>
                        <th>地址</th>
                    </tr>
                    </thead>
                    <tbody >
                    <c:forEach items="${server}" var="obj">
                        <tr>
                            <td>${obj.server}</td>
                            <td>${obj.phone}</td>
                            <td>${obj.address}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <div class="foot"></div>
</div>
</div>

</body>
</html>
