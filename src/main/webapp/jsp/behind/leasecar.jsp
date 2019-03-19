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
<script src="${ctx}/static/diy/jquery.js"></script>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="top.jsp"></jsp:include>

    <div class="layui-body" lay-skin="nob">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <button class="layui-btn" id="btn2">添加</button>

            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>品牌</th>
                    <th>型号</th>
                    <th>类型</th>
                    <th>价格</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${cars}" var="obj">
                <tr>
                    <td>${obj.brand}</td>
                    <td>${obj.carsNumber}</td>
                    <td>${obj.type}</td>
                    <td>${obj.value}元/天</td>
                    <td>${obj.status}</td>
                    <td>
                        <a href="${ctx}/app/car/lease/update/${obj.ID}"><button>修改</button></a>
                        <a href="${ctx}/app/car/lease/delete/${obj.ID}?pageNo=${page.pageNum}"><button>删除</button></a>
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
                <a href="${ctx}/app/car/lease?pageNo=${page.firstPage}" class="btn btn-default btn-info">首页</a>
                <a href="${ctx}/app/car/lease?pageNo=${page.prePage}" class="btn btn-default btn-info">上一页</a>
            </c:if>
            <c:if test="${page.isLastPage==true}">
                <button class="btn btn-default btn-info disabled">下一页</button>
                <button class="btn btn-default btn-info disabled">尾页</button>
            </c:if>
            <c:if test="${page.isLastPage!=true}">
                <a href="${ctx}/app/car/lease?pageNo=${page.nextPage}" class="btn btn-default btn-info">下一页</a>
                <a href="${ctx}/app/car/lease?pageNo=${page.lastPage}" class="btn btn-default btn-info">尾页</a>
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
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
    $('#btn2').on('click', function(){
        console.log("ok")
        layer.open({
            type: 1,
            area: ['800px', '360px'],
            shadeClose: true, //点击遮罩关闭
            content: '<form  action="${ctx}/app/car/lease/add">' +
                '<div class="layui-form-item">\n' +
                '    <label class="layui-form-label">品牌</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="text" name="brand" lay-verify="title" autocomplete="off" class="layui-input">\n' +
                '    </div>\n' +
                '  </div>' +
                '<div class="layui-form-item">\n' +
                '    <label class="layui-form-label">型号</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="text" name="carsNumber" lay-verify="title" autocomplete="off"  class="layui-input">\n' +
                '    </div>\n' +
                '  </div>' +
                '<div class="layui-form-item">\n' +
                '    <label class="layui-form-label">类型</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="text" name="type" lay-verify="title" autocomplete="off"  class="layui-input">\n' +
                '    </div>\n' +
                '  </div>' +
                '<div class="layui-form-item">\n' +
                '    <label class="layui-form-label">价格</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="text" name="value" lay-verify="title" autocomplete="off"  class="layui-input">\n' +
                '    </div>\n' +
                '  </div>' +
                '  <div class="layui-form-item">\n' +
                '    <label class="layui-form-label">状态</label>\n' +
                '    <div class="layui-input-block" id="select">\n' +
                '      <select name="status" lay-filter="aihao"  class="layui-input">\n' +
                '        <option value="可借">可借</option>\n' +
                '        <option value="不可借">不可借</option>\n' +
                '      </select>\n' +
                '    </div>\n' +
                '  </div>'+

                '  <div class="layui-form-item">\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="submit" value="提交" class="layui-btn layui-btn-primary">\n' +
                '      <button type="reset" class="layui-btn layui-btn-primary">重置</button>\n' +
                '    </div>\n' +
                '  </div>\n' +
                '</form>'
        });
    });
</script>
</body>
</html>
