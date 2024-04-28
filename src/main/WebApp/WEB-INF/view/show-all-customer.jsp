<%--
  Created by IntelliJ IDEA.
  User: bm
  Date: 4/22/2024
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--tag Libraries--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customers List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <%--    <style>--%>
    <%--        div{--%>
    <%--            border-radius: 5px;--%>
    <%--            background-color: #f2f2f2;--%>
    <%--            padding: 20px;--%>
    <%--        }--%>
    <%--        table, th, td {--%>
    <%--            border: 1px solid;--%>
    <%--            padding: 20px;--%>

    <%--        }--%>
    <%--        table{--%>
    <%--            width: 50%;--%>
    <%--        }--%>
    <%--        th {--%>
    <%--            text-align: center;--%>
    <%--            background-color: #335b9c;--%>
    <%--            color: white;--%>
    <%--        }--%>
    <%--        td {--%>
    <%--            text-align: center;--%>
    <%--        }--%>
    <%--    </style>--%>
</head>
<body>
<div class="mb-2 container mt-4 my-5 bg-dark text-white rounded ">
    <br>
    <h1 class="text-bg-dark text-center">Customers List</h1>
    <br>
    <div class="table-responsive-sm">
        <table class="table  table-bordered text-center rounded">
            <caption><h2>List of Customer</h2></caption>
            <tr class="table-secondary">
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Options</th>
            </tr>
            <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td><c:out value="${customer.id}"/></td>
                    <td><c:out value="${customer.firstName}"/></td>
                    <td><c:out value="${customer.lastName}"/></td>
                    <td><c:out value="${customer.email}"/></td>
                    <td><c:out value="${customer.phone}"/></td>
                    <td>
                        <a class="btn btn-success" href=
                                <c:url value="/customer/customer-update/${customer.id}"></c:url>>Update</a>
                        |
                        <a class="btn btn-danger" href=
                                <c:url value="/customer/customer-delete/${customer.id}"></c:url>>Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div class="d-flex justify-content-center">
            <a href="/customer/add" class="btn btn-secondary btn-large btn-start">Add New Customer</a>
        </div>
        <br>
    </div>
</div>


</body>
</html>