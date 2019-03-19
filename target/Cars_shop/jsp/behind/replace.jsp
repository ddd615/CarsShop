<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form class="layui-form" action="${ctx}/app/replace/query" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">请输入申请人</label>
                    <div class="layui-input-block">
                        <input type="text" name="linkman"   autocomplete="off" class="layui-input">
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
                    <th>置换新车品牌</th>
                    <th>置换新车型号</th>
                    <th>旧车品牌</th>
                    <th>旧车价格</th>
                    <th>申请人</th>
                    <th>联系方式</th>
                    <th>申请时间</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${res}" var="obj">
                <tr>
                    <td>${obj.nbrand}</td>
                    <td>${obj.nnum}</td>
                    <td>${obj.obrand}</td>
                    <td>${obj.ovalue}</td>
                    <td>${obj.linkman}</td>
                    <td>${obj.phone}</td>
                    <td>${obj.createdate}</td>
                    <td>${obj.status}</td>
                    <td>
                        <a href="${ctx}/app/replace/deal/${obj.ID}">受理</a>

                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
            <c:if test="${page.isFirstPage==true}">
                <button class="btn btn-default btn-info disabled">首页</button>
                <button class="btn btn-default btn-info disabled">上一页</button>
            </c:if>
            <c:if test="${page.isFirstPage!=true}">
                <a href="${ctx}/app/replace?pageNo=${page.firstPage}" class="btn btn-default btn-info">首页</a>
                <a href="${ctx}/app/replace?pageNo=${page.prePage}" class="btn btn-default btn-info">上一页</a>
            </c:if>
            <c:if test="${page.isLastPage==true}">
                <button class="btn btn-default btn-info disabled">下一页</button>
                <button class="btn btn-default btn-info disabled">尾页</button>
            </c:if>
            <c:if test="${page.isLastPage!=true}">
                <a href="${ctx}/app/replace?pageNo=${page.nextPage}" class="btn btn-default btn-info">下一页</a>
                <a href="${ctx}/app/replace?pageNo=${page.lastPage}" class="btn btn-default btn-info">尾页</a>
            </c:if>
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