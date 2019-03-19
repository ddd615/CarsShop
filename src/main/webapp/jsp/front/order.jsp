<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>查询中心</title>
</head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/index.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/reset.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/diy/order.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css">
<script src="${ctx}/static/layui/layui.all.js"></script>
<script src="${ctx}/static/diy/jquery.js"></script>
<body>
<div>
    <jsp:include page="top.jsp"></jsp:include>
    <div class="bc">
    <div class="content">
        <div class="online">
            <p>在线购车</p>
            <form class="layui-form" action="${ctx}/app/order/add" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">品牌型号</label>
                    <div class="layui-input-block">
                        <input type="text" name="Name" required  lay-verify="required" placeholder="请输入品牌型号" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">数量</label>
                    <div class="layui-input-block">
                        <input type="text" name="Counts" required  lay-verify="required" placeholder="请输入数量" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">颜色</label>
                    <div class="layui-input-block">
                        <input type="text" name="Color" required  lay-verify="required" placeholder="请输入颜色" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">支付方式</label>
                    <div class="layui-input-block">
                        <input type="text" name="Payment" required  lay-verify="required" placeholder="请输入支付方式" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">企业名称</label>
                    <div class="layui-input-block">
                        <input type="text" name="EnterpriseName" required  lay-verify="required" placeholder="请输入企业名称" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">企业地址</label>
                    <div class="layui-input-block">
                        <input type="text" name="Address" required  lay-verify="required" placeholder="请输入企业地址" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">所在区域</label>
                    <div class="layui-input-block">
                        <input type="text" name="Area" required  lay-verify="required" placeholder="请输入所在区域" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经销商</label>
                    <div class="layui-input-block">
                        <input type="text" name="Dealer" required  lay-verify="required" placeholder="请输入经销商" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-block">
                        <input type="text" name="Linkman" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">联系方式</label>
                    <div class="layui-input-block">
                        <input type="text" name="Phone" required  lay-verify="required" placeholder="请输入电话" autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">备注</label>
                    <div class="layui-input-block">
                        <input type="text" name="Remark" required  lay-verify="required"  autocomplete="off" class="layui-input" style="background: rgba(200,200,200,0.3)">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>

        </div>
        <div class="center">
            <p>销售中心查询</p>
            <div class="sousuo">
                <form action="${ctx}/front/center" method="post">
                    <div class="layui-form-item">
                        <label class="layui-form-label" style="color: white">所在省</label>
                        <div class="layui-input-block">
                            <select  lay-verify="required" name="provide" class="layui-input" style="background: rgba(200,200,200,0.3)">
                                <option value="广东省" >广东省</option>
                                <option value="湖南省" >湖南省</option>

                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label" style="color: white">所在城市</label>
                        <div class="layui-input-block">
                            <select name="city" lay-verify="required" class="layui-input" style="background: rgba(200,200,200,0.3)">
                                <option value=""></option>
                                <option value="广州">广州</option>
                                <option value="长沙">长沙</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
             </div>
                <div class="biaoge">
                    <table class="layui-table" style="background: rgba(200,200,200,0.3)">
                        <colgroup>
                            <col width="150">
                            <col width="200">
                            <col>
                        </colgroup>
                        <thead>
                        <tr style="color: #ff553a">
                            <th>销售中心</th>
                            <th>客服电话</th>
                            <th>地址</th>
                        </tr>
                        </thead>
                        <tbody >
                        <c:forEach items="${sale}" var="obj">
                        <tr>
                            <td>${obj.sale}</td>
                            <td>${obj.phone}</td>
                            <td>${obj.address}</td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

        </div>
        <div class="want"></div>
    </div>
    <div class="foot"></div>
    </div>
</div>

</body>
<script>


</script>
</html>
