<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>展示中心</title>
</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/show.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css">
<script src="${ctx}/static/diy/jquery.js"></script>

<body>
<div>
      <jsp:include page="top.jsp"></jsp:include>
    <div class="bc">
     <div class="content">
         <div class="xinpin">
             <p>新品推荐</p>
             <table>
                 <tr>
                     <td>品牌</td>
                     <td>型号</td>
                     <td></td>
                     <td>价格</td>
                 </tr>
                 <c:forEach items="${car1}" var="obj">
                     <tr>
                         <td> <a href="${ctx}/app/front/${obj.ID}">${obj.brand}</a></td>
                         <td>${obj.carsNumber}</td>
                         <td></td>
                         <td>${obj.value}</td>
                     </tr>

                 </c:forEach>
             </table>

         </div>
         <div class="xianxi">
             <p>详细信息</p>
             <img src="${ctx}/static/image/${car.logo}" alt="汽车" width="780px" height="456px">
             <div class="car">
                 <tr>
                     <td><label >品牌:</label></td>
                     <td><span>${car.brand}</span></td>
                     <td><label >型号:</label></td>
                     <td><span>${car.carsNumber}</span></td>
                     <td><label >类型:</label></td>
                     <td><span>${car.type}</span></td>

                 </tr>
                 <tr>
                     <td><label >价格:</label></td>
                     <td><span>${car.value}</span></td>
                     <td><label >数据:</label></td>
                     <td><span>${car.message}</span></td>
                 </tr>
             </div>

         </div>
         <div class="fenlei">
             <p>分类展示</p>
             <ul class="cate">
                 <li>
                     <a >轿车</a>
                     <div class="jiaoche" >
                         <c:forEach items="${jiaoche}" var="obj">
                             <a href="${ctx}/app/front/${obj.ID}">${obj.brand}</a><span>${obj.carsNumber}/</span>
                         </c:forEach>
                     </div>
                 </li>
                 <li>
                     <a >跑车</a>
                     <div class="paoche">
                         <c:forEach items="${paoche}" var="obj">
                             <a href="${ctx}/app/front/${obj.ID}">${obj.brand}</a><span>${obj.carsNumber}</span>
                         </c:forEach>
                     </div>
                 </li>
                 <li>
                     <a >面包车</a>
                     <div class="mianbaoche">
                         <c:forEach items="${mianbaoche}" var="obj">
                             <a href="${ctx}/app/front/${obj.ID}">${obj.brand}</a><span>${obj.carsNumber}</span>
                         </c:forEach>
                     </div>
                 </li>
                 <li>
                     <a >货车</a>
                     <div class="huoche">
                         <c:forEach items="${huoche}" var="obj">
                             <a href="${ctx}/app/front/${obj.ID}">${obj.brand}</a><span>${obj.carsNumber}</span>
                         </c:forEach>
                     </div>
                 </li>
             </ul>
         </div>





         </div>

     <div class="foot">

     </div>
</div>
</div>
</body>
<script src="${ctx}/static/layui/layui.all.js"></script>
<script>
 $(".cate>li").stop().mouseenter(function () {
     $(this).find("div").slideDown(200)
 }).stop().mouseleave(function () {
     $(this).find("div").slideUp(200)
 })
</script>
</html>
