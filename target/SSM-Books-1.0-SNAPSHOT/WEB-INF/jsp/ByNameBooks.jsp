<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>客户---根据姓名查询</small>
                </h1>
            </div>
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
                    <th>事由</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="lis" items="${requestScope.list}">
                    <tr>
                        <td>${lis.name}</td>
                        <td>${lis.sfz}</td>
                        <td>${lis.phone}</td>
                        <td>${lis.thing}</td>
                        <td>${lis.coment}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
