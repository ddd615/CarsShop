<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
     <title>首页</title>

</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css" media="all">
<body>
<div>
     <jsp:include page="${ctx}/jsp/front/top.jsp"></jsp:include>
<div class="content1">
     <div class="layui-carousel" id="test1">
          <div carousel-item>
               <div><img src="${ctx}/static/image/lunbo1.jpg" alt=""></div>
               <div><img src="${ctx}/static/image/lunbo2.jpg" alt=""></div>
               <div><img src="${ctx}/static/image/lunbo3.jpg" alt=""></div>
               <div><img src="${ctx}/static/image/lunbo4.jpg" alt=""></div>
               <div><img src="${ctx}/static/image/lunbo5.jpg" alt=""></div>
          </div>
     </div>
</div>
     <div class="foot"></div>
</div>
</body>
<script src="${ctx}/static/layui/layui.all.js"></script>
<script src="${ctx}/static/diy/jquery.js"></script>
<script>


     layui.use('carousel', function(){
          var carousel = layui.carousel;
          //建造实例
          carousel.render({
               elem: '#test1'
               ,width: '100%' //设置容器宽度
               ,arrow: 'always'//始终显示箭头
               ,height:'669px'
               //,anim: 'updown' //切换动画方式
          });
     });
</script>
</html>
