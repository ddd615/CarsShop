<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/6/006
  Time: 23:40
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
            <form class="layui-form" action="${ctx}/app/order/queryByWord" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">请输入关键字</label>
                    <div class="layui-input-block">
                        <input type="text" name="word" required  lay-verify="required" value="${word}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">关键字类型</label>
                    <div class="layui-input-block">
                        <select  lay-verify="required" name="wordType">
                            <option value="1" >ID</option>
                            <option value="2" >订购车型</option>
                            <option value="3" >订购用户</option>
                        </select>
                    </div>
                </div>
                <input type="submit" value="提交" class="layui-btn">
            </form>
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>订购车型</th>
                    <th>订购时间</th>
                    <th>订购用户</th>
                    <th>联系方式</th>
                    <th>状态（0：未受理 1:已受理）</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${order}" var="obj">
                <tr>
                    <td>${obj.ID}</td>
                    <td>${obj.name}</td>
                    <td>${obj.issueDate}</td>
                    <td>${obj.linkman}</td>
                    <td>${obj.phone}</td>
                    <td>${obj.whether}</td>
                    <td><a href="${ctx}/app/order/deal/${obj.ID}">受理</a></td>
                </tr>
                </c:forEach>
                </tbody>

            </table>
            <c:if test="${page.isFirstPage==true}">
                <button class="btn btn-default btn-info disabled">首页</button>
                <button class="btn btn-default btn-info disabled">上一页</button>
            </c:if>
            <c:if test="${page.isFirstPage!=true}">
                <a href="${ctx}/app/order?pageNo=${page.firstPage}" class="btn btn-default btn-info">首页</a>
                <a href="${ctx}/app/order?pageNo=${page.prePage}" class="btn btn-default btn-info">上一页</a>
            </c:if>
            <c:if test="${page.isLastPage==true}">
                <button class="btn btn-default btn-info disabled">下一页</button>
                <button class="btn btn-default btn-info disabled">尾页</button>
            </c:if>
            <c:if test="${page.isLastPage!=true}">
                <a href="${ctx}/app/order?pageNo=${page.nextPage}" class="btn btn-default btn-info">下一页</a>
                <a href="${ctx}/app/order?pageNo=${page.lastPage}" class="btn btn-default btn-info">尾页</a>
            </c:if>

        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="${ctx}/static/layui/layui.all.js"></script>
<script>
var a=${arr};
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
    <%--layui.use('laypage', function(){--%>
        <%--var laypage = layui.laypage;--%>

        <%--//执行一个laypage实例--%>
        <%--laypage.render({--%>
            <%--elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号--%>
            <%--,count:a ,--%>
            <%--limit:5,--%>
            <%--next:<a href="${ctx}/app/re">//数据总数，从服务端得到--%>
        <%--});--%>
    <%--});--%>
</script>
</body>
</html>