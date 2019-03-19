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

    <title>备件管理</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
</head>
<script src="${ctx}/static/diy/jquery.js"></script>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="top.jsp"></jsp:include>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <form class="layui-form" action="${ctx}/app/part/queryByWord" method="post">
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
                            <option value="1" >备件名</option>
                            <option value="2" >类别编号</option>
                            <option value="3" >匹配车型</option>
                        </select>
                    </div>
                </div>
                <input type="submit" value="提交" class="layui-btn">
                <input type="button" id="btn1" class="layui-btn" value="添加">
            </form>
            <table class="layui-table" lay-skin="line">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>编号</th>
                    <th>类别编号</th>
                    <th>备件名称</th>
                    <th>价格</th>
                    <td>匹配车型</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${part}" var="obj">
                    <tr>
                        <td>${obj.ID}</td>
                        <td>${obj.number}</td>
                        <td>${obj.name}</td>
                        <td>${obj.price}</td>
                        <td>${obj.type}</td>
                        <td>
                            <a href="${ctx}/app/part/update/${obj.ID}">详细</a>
                            <a href="${ctx}/app/part/delete/${obj.ID}?pageNo=${page.pageNum}">删除</a>
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
                <a href="${ctx}/app/part?pageNo=${page.firstPage}" class="btn btn-default btn-info">首页</a>
                <a href="${ctx}/app/part?pageNo=${page.prePage}" class="btn btn-default btn-info">上一页</a>
            </c:if>
            <c:if test="${page.isLastPage==true}">
                <button class="btn btn-default btn-info disabled">下一页</button>
                <button class="btn btn-default btn-info disabled">尾页</button>
            </c:if>
            <c:if test="${page.isLastPage!=true}">
                <a href="${ctx}/app/part?pageNo=${page.nextPage}" class="btn btn-default btn-info">下一页</a>
                <a href="${ctx}/app/part?pageNo=${page.lastPage}" class="btn btn-default btn-info">尾页</a>
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
    $('#btn1').on('click', function(){
        console.log("ok")
        layer.open({
            type: 1,
            area: ['800px', '360px'],
            shadeClose: true, //点击遮罩关闭
            content: '<form  action="${ctx}/app/part/add" method="post" enctype="multipart/form-data">' +
                '<div class="layui-form-item">\n' +
                '    <label class="layui-form-label">备件名称</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="text" name="name" lay-verify="title" autocomplete="off"  class="layui-input">\n' +
                '    </div>\n' +
                '  </div>' +
                ' <div class="layui-form-item">\n' +
                '    <label class="layui-form-label">价格</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="text" name="price" lay-verify="title" autocomplete="off"  class="layui-input">\n' +
                '    </div>\n' +
                '  </div>' +
                '  <div class="layui-form-item">\n' +
                '    <label class="layui-form-label">匹配车型</label>\n' +
                '    <div class="layui-input-block" id="select">\n' +
                '      <select name="type" lay-filter="aihao"  class="layui-input">\n' +
                '        <option value=""></option>\n' +
                '        <option value="轿车">轿车</option>\n' +
                '        <option value="跑车">跑车</option>\n' +
                '        <option value="面包车">面包车</option>\n' +
                '        <option value="货车">货车</option>\n' +
                '      </select>\n' +
                '    </div>\n' +
                '  </div>'+
                '<div class="layui-form-item">\n' +
        '    <label class="layui-form-label">类别编号</label>\n' +
        '    <div class="layui-input-block" id="select">\n' +
        '      <select name="number" lay-filter="aihao"  class="layui-input">\n' +
        '        <option value=""></option>\n' +
        '        <option value="A">A</option>\n' +
        '        <option value="B">B</option>\n' +
        '        <option value="C">C</option>\n' +
        '        <option value="D">D</option>\n' +
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