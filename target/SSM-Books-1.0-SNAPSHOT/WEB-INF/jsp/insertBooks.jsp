<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加信息</title>
</head>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="row clearfix">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1>
                <small>用户列表---添加信息</small>
            </h1>
        </div>
    </div>
</div>
<form action="${pageContext.request.contextPath}/books/addBooks" method="post">
    <div class="form-group">
        <label>姓名</label>
        <input type="text" class="form-control" name="name" required style="width: 800px">
    </div>
    <div class="form-group">
        <label>身份证</label>
        <input type="text" class="form-control" name="sfz" required style="width: 800px">
    </div>
    <div class="form-group">
        <label>电话</label>
        <input type="text" class="form-control" name="phone" required style="width: 800px">
    </div>
    <div class="form-group">
        <label>事由</label>
        <input type="text" class="form-control" name="thing" required style="width: 800px">
    </div>
    <div class="form-group">
        <label>描述</label>
        <input type="text" class="form-control" name="coment" required style="width: 800px">
    </div>

    <div class="form-group">
        <input type="submit" class="form-control" style="width: 800px;background: deepskyblue" value="添加">
    </div>
</form>
</body>
</html>
