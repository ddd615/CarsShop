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
    <title>关于集团</title>
</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/firm.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css">
<script src="${ctx}/static/layui/layui.all.js"></script>
<script src="${ctx}/static/diy/jquery.js"></script>
<body>
<div>
    <jsp:include page="top.jsp"></jsp:include>
    <div class="content">
        <div class="wenzhang">
            <h2>关于集团</h2>
            <p>1988年，一汽与奥迪开始合作，自此开启了中国汽车工业发展的崭新时代。至今，一汽-大众奥迪始终领跑中国高档车市场，为超过500万中国用户带来了高品质汽车生活和服务体验。</br>
                一汽与奥迪共同打造“多元开放，价值共享”的全领域合作平台，双方以价值链延伸为方向拓展合作广度，以创新研发为核心加大合作深度，以产业链协同共创为契机提升合作价值，推动中国汽车行业的发展
            </p>
        </div>
        <div class="licheng">
            <div class="tupian">
                <img src="${ctx}/static/image/guanyu.jpg" alt="" width="590px" height="332px">
                <img src="${ctx}/static/image/guanyu1.jpg" alt="" width="590px" height="332px">
            </div>
        </div>
    </div>
    <div class="foot"></div>
</div>

</body>
</html>
