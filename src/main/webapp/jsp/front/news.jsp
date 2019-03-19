<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/11/011
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻中心</title>

</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/news.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css">
<script src="${ctx}/static/layui/layui.all.js"></script>

<body>
      <div>
         <jsp:include page="top.jsp"></jsp:include>
          <div class="bc">
          <div class="content">
              <div class="new1">
                  <p class="biaoti">站内新闻</p>

                      <c:forEach items="${news}" var="obj">
                       <div class="zhannei">
                           <a href="javascript:;" onclick="getContent('${obj.title}','${obj.content}','${obj.issueDate}')">${obj.title}</a>
                           <p>${obj.content}</p>
                           <span>${obj.issueDate}</span>
                       </div>

                      </c:forEach>

              </div>
              <div class="new2">
                  <p class="biaoti">集团新闻</p>

                  <c:forEach items="${news1}" var="obj">
                      <div class="zhannei">
                          <a href="javascript:;" onclick="getContent('${obj.title}','${obj.content}','${obj.issueDate}')">${obj.title}</a>
                          <p>${obj.content}</p>
                          <span>${obj.issueDate}</span>
                      </div>
                  </c:forEach>
              </div>
              <div class="new3">
                  <p class="biaoti">行业信息新闻</p>

                  <c:forEach items="${news2}" var="obj">
                      <div class="zhannei">
                          <a href="javascript:;" onclick="getContent('${obj.title}','${obj.content}','${obj.issueDate}')">${obj.title}</a>
                          <p>${obj.content}</p>
                          <span>${obj.issueDate}</span>
                      </div>
                  </c:forEach>
              </div>
              <div class="new4">
                  <p class="biaoti">下线新车报道</p>

                  <c:forEach items="${news3}" var="obj">
                      <div class="zhannei">
                          <a href="javascript:;" onclick="getContent('${obj.title}','${obj.content}','${obj.issueDate}')">${obj.title}</a>
                          <p>${obj.content}</p>
                          <span>${obj.issueDate}</span>
                      </div>
                  </c:forEach>
              </div>
              <div class="abc">
                  <i class="layui-icon layui-icon-close" onclick="clo()"></i>
                  <p></p>
                  <article></article>
                  <span></span>

              </div>
          </div>

          <div class="foot"></div>
          </div>
      </div>
</body>
<script src="${ctx}/static/diy/jquery.js"></script>
<script>
    function getContent(a,b,c) {

        $(".abc>p").html(a);
        $(".abc>article").html(b);
      $(".abc>span").html(c);
      $(".abc").slideDown(500);


    }
    function clo() {
        $(".abc").css("display","none");

    }



</script>
</html>
