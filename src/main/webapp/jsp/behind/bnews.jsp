<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/5/005
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>新闻信息管理</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
</head>
<script src="${ctx}/static/diy/jquery.js"></script>
<style>
    #add{
        display: none;
    }
</style>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="top.jsp"></jsp:include>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;" >
            <form action="${ctx}/app/query/title" >
                <input type="text" name="title"  value="${title}" placeholder="请输入标题"  class="layui-input">
                <input type="submit" value="提交" class="layui-btn">
                <input type="button" id="btn1" class="layui-btn" value="添加">
            </form>

            <table class="layui-table" id="tab">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>

                    <th>标题</th>
                    <th>加入时间</th>
                    <th>类型</th>
                    <th>内容</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody >
                <c:forEach items="${news}" var="obj3">
                    <tr >
                        <td>${obj3.title}</td>
                        <td>${obj3.issueDate}</td>
                        <td>${obj3.newsType}</td>
                        <td>${obj3.content}</td>
                        <td>
                            <a href="${ctx}/app/news/update/${obj3.ID}"><button  class="layui-btn" >修改</button></a>
                            <a href="${ctx}/app/news/delete/${obj3.ID}?pageNo=${page.pageNum}"><button  class="layui-btn layui-btn-danger">删除</button></a>
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
                <a href="${ctx}/app/bnews?pageNo=${page.firstPage}" class="btn btn-default btn-info">首页</a>
                <a href="${ctx}/app/bnews?pageNo=${page.prePage}" class="btn btn-default btn-info">上一页</a>
            </c:if>
            <c:if test="${page.isLastPage==true}">
                <button class="btn btn-default btn-info disabled">下一页</button>
                <button class="btn btn-default btn-info disabled">尾页</button>
            </c:if>
            <c:if test="${page.isLastPage!=true}">
                <a href="${ctx}/app/bnews?pageNo=${page.nextPage}" class="btn btn-default btn-info">下一页</a>
                <a href="${ctx}/app/bnews?pageNo=${page.lastPage}" class="btn btn-default btn-info">尾页</a>
            </c:if>
        </div>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>

    <script src="${ctx}/static/layui/layui.all.js">
</script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
    $('#btn').on('click', function(){
        console.log("ok")
        layer.open({
            type: 1,
            area: ['800px', '360px'],
            shadeClose: true, //点击遮罩关闭
            content: '<form  action="${ctx}/app/news/add">' +
                '<div class="layui-form-item">\n' +
                '    <label class="layui-form-label">单行输入框</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">\n' +
                '    </div>\n' +
                '  </div>' +
               '  <div class="layui-form-item">\n' +
                '    <label class="layui-form-label">选择框</label>\n' +
                '    <div class="layui-input-block" id="select">\n' +
                '      <select name="newsType" lay-filter="aihao"  class="layui-input">\n' +
                '        <option value=""></option>\n' +
                '        <option value="站内新闻">站内新闻</option>\n' +
                '        <option value="集团新闻">集团新闻</option>\n' +
                '        <option value="行业信息">行业信息</option>\n' +
                '        <option value="下线新车">下线新车</option>\n' +
                '      </select>\n' +
                '    </div>\n' +
                '  </div>'+
                '<div class="layui-form-item layui-form-text">\n' +
                '    <label class="layui-form-label">普通文本域</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <textarea placeholder="请输入内容" class="layui-textarea" name="content"></textarea>\n' +
                '    </div>\n' +
                '  </div>' +
                '  <div class="layui-form-item">\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="submit" value="提交" class="layui-btn layui-btn-primary">\n' +
                '      <button type="reset" class="layui-btn layui-btn-primary">重置</button>\n' +
                '    </div>\n' +
                '  </div>\n' +
                '</form>'
        });
    });
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });





</script>
</body>
</html>
