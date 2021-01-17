<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <!--引入Bootstrap-->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>显示所有</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/books/insertBooks">新增</a>
        </div>
        <div >
            <form action="${pageContext.request.contextPath}/books/selectByName" method="post">
            <input type="text" placeholder="请输入客户姓名" name="name">
            <input type="submit" value="查询">
            </form>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>姓名</th>
                    <th>身份证</th>
                    <th>电话</th>
                    <th>事由</th>
                    <th>备注</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="list" items="${requestScope.list}">
                    <tr>
                        <td>${list.name}</td>
                        <td>${list.sfz}</td>
                        <td>${list.phone}</td>
                        <td>${list.thing}</td>
                        <td>${list.coment}</td>
                        <td><a href="${pageContext.request.contextPath}/books/deleteById/${list.name}">删除</a>
                        &nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/books/updateBook?name=${list.name}">修改</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
