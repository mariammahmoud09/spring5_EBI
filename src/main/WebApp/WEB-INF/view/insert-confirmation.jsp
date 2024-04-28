<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: bm
  Date: 4/22/2024
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Customer Added Confirmation </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="mb-2 container my-5 bg-dark text-secondary rounded" text-white>
    <br>
    <br>
    <h1 class="text-bg-dark">Customer has been Added Successfully</h1>
    <br>
    <h2> Customer First Name: ${customer.firstName}</h2>
    <h2> Customer Last Name: ${customer.lastName}</h2>
    <h2> Customer Email: ${customer.email}</h2>
    <h2> Customer Phone: ${customer.phone}</h2>
    <br>
    <br>
    <div class="d-flex justify-content-center">
        <a href="/customer/show-all-customers" class="btn btn-secondary btn-large btn-start">Show Customer List</a>
    </div>
    <br>
    <br>
</div>
</body>
</html>
