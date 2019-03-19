<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/3/003
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <div>
        <table>
            <c:forEach items="${news}" var="obj">
                <tr>
                    <td>${obj.ID}</td>
                    <td>${obj.title}</td>
                    <td>${obj.content}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div></div>
    <div></div>
    <div></div>
</div>
</body>
</html>
