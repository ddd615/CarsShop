<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="head">
    <div class="head1">
        <a href=""><img src="${ctx}/static/image/audi.png" alt="" ></a><a href=""><img src="${ctx}/static/image/por.png" alt="" width="103px" height="70px"></a><a href=""><img src="${ctx}/static/image/bmw.png" alt="" ></a>
    </div>
    <div class="login">
        <button onclick="login()" class="layui-btn layui-btn-warm">后台登录</button>
    </div>
    <div class="nav">
        <ul class="nav1">
            <li><a href="${ctx}/front/index">首页</a></li>
            <li><a href="${ctx}/front/news">新闻中心</a></li>
            <li><a href="${ctx}/app/front/lease">租凭中心</a></li>
            <li><a href="${ctx}/app/front/car">展示中心</a></li>
            <li><a href="${ctx}/app/front/replace">置换中心</a></li>
            <li><a href="${ctx}/app/front/order">订购中心</a></li>
            <li><a href="${ctx}/front/about">关于集团</a></li>
            <li><a href="${ctx}/app/query">查询中心</a></li>
            <li><a href="${ctx}/app/front/fuwu">客服服务中心</a></li>
        </ul>
    </div>
</div>
<script>
    function login() {
        layer.open({
            type: 1,
            offset: '100px',
            title: ['登录', 'font-size:18px;'],
            area:['400px','300px'],
            content: '<div >' +
                '<form class="layui-form" action="${ctx}/app/login" method="post" style="margin: 40px auto">\n' +
                '  <div class="layui-form-item">\n' +
                '    <label class="layui-form-label">账号：</label>\n' +
                '    <div class="layui-input-block">\n' +
                '      <input type="text" name="name" required  lay-verify="required" placeholder="请输入lzd" autocomplete="off" class="layui-input" style="width: 190px;">\n' +
                '    </div>\n' +
                '  </div>\n' +
                '  <div class="layui-form-item">\n' +
                '    <label class="layui-form-label">密码：</label>\n' +
                '    <div class="layui-input-inline">\n' +
                '      <input type="password" name="password" required lay-verify="required" placeholder="请输入123" autocomplete="off" class="layui-input" >\n' +
                '    </div>' +
                '<div class="layui-form-item">\n' +
                '    <div class="layui-input-block">\n' +
                '      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>\n' +
                '      <button type="reset" class="layui-btn layui-btn-primary">重置</button>\n' +
                '    </div>\n' +
                '  </div>\n' +
                '</form>'+ //这里content是一个普通的String
            '<div>'
        });

    }
</script>

