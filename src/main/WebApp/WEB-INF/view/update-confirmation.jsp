<%--
  Created by IntelliJ IDEA.
  User: bm
  Date: 4/23/2024
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--tag Libraries--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Updated</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="mb-2 container mt-4 my-5 bg-light rounded ">
    <br>
    <br>
    <h1 class="text-dark text-center">Customer data has been Updated Successfully</h1>
    <br>
    <br>
    <div class="d-flex justify-content-center">
        <a href="/customer/show-all-customers" class="btn btn-dark btn-large btn-start">Show Customer List</a>
    </div>
    <br>
    <br>
</div>
</body>
</html>
