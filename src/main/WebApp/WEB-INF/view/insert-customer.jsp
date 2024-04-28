<%--
  Created by IntelliJ IDEA.
  User: bm
  Date: 4/22/2024
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--tag Libraries--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <%--    <style>--%>
    <%--        input[type=text], select {--%>
    <%--            width: 100%;--%>
    <%--            padding: 12px 20px;--%>
    <%--            margin: 8px 0;--%>
    <%--            display: inline-block;--%>
    <%--            border: 1px solid #ccc;--%>
    <%--            border-radius: 4px;--%>
    <%--            box-sizing: border-box;--%>
    <%--        }--%>

    <%--        input[type=submit] {--%>
    <%--            width: 100%;--%>
    <%--            background-color: #335b9c;--%>
    <%--            color: white;--%>
    <%--            padding: 14px 20px;--%>
    <%--            margin: 8px 0;--%>
    <%--            border: none;--%>
    <%--            border-radius: 4px;--%>
    <%--            cursor: pointer;--%>
    <%--        }--%>

    <%--        input[type=submit]:hover {--%>
    <%--            background-color: #335b9c;--%>
    <%--        }--%>

    <%--        div {--%>
    <%--            border-radius: 5px;--%>
    <%--            background-color: #f2f2f2;--%>
    <%--            padding: 20px;--%>
    <%--        }--%>
    <%--    </style>--%>
</head>
<body>

<div class="mb-2 container my-5 bg-dark text-white rounded"><br>
    <h1 class="text-center"> Add Customer Form </h1>
    <div class="mb-2 container my-5 bg-light text-white rounded">
        <form:form action="process-add-customer" modelAttribute="customer">
            <div class="row mb-2">
                <div class="col">
                    First Name: <form:input path="firstName" placeholder="Enter User Fisrt Name.."
                                            class="form-control form-control-lg"/>
                </div>
                <div class="col">
                    Last Name: <form:input path="lastName" placeholder="Enter User Second Name.."
                                           class="form-control form-control-lg"/>
                </div>
            </div>

            Email: <form:input path="email" placeholder="Enter User Email.." class="form-control form-control-lg"/>

            Phone: <form:input path="phone" placeholder="Enter User Phone.." class="form-control form-control-lg"/><br>
            <div class="d-flex justify-content-center">
            <input type="submit" value="Insert Customer" class="btn btn-secondary btn-large btn-start">
            </div>

        </form:form>
        <br>
        <div class="d-flex justify-content-center">
            <a href="/customer/show-all-customers" class="btn btn-secondary btn-large btn-start">Show all customers</a>
        </div>
        <br>
    </div>
    <br>
</div>


</body>
</html>
