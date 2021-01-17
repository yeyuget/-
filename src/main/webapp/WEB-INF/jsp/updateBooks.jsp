<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>修改书籍</title>
</head>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="row clearfix">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1>
                <small>客户列表---修改客户信息</small>
            </h1>
        </div>
    </div>
</div>
<form action="${pageContext.request.contextPath}/books/updateBooks/" method="post">
    <input type="hidden" name="name" value="${book.name}">
<%--    <div class="form-group">--%>
<%--        <label>姓名</label>--%>
<%--        <input type="text" name="name" class="form-control" value="${book.name}" required style="width: 800px">--%>
<%--    </div>--%>
    <div class="form-group">
        <label>身份证</label>
        <input type="text" class="form-control" name="sfz" value="${book.sfz}" required style="width: 800px">
    </div>
    <div class="form-group">
        <label>电话</label>
        <input type="text" class="form-control" name="phone" value="${book.phone}" required style="width: 800px">
    </div>
    <div class="form-group">
        <label>事由</label>
        <input type="text" class="form-control" name="thing" value="${book.thing}" required style="width: 800px">
    </div>
    <div class="form-group">
        <label>备注</label>
        <input type="text" class="form-control" name="coment" value="${book.coment}" required style="width: 800px">
    </div>

    <div class="form-group">
        <input type="submit" class="form-control" style="width: 800px;background: deepskyblue" value="修改">
    </div>
</form>
</body>
</html>
