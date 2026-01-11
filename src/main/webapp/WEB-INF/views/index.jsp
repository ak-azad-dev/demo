<%--
  Created by IntelliJ IDEA.
  User: AzadDevPC
  Date: 1/7/2026
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home - Spring Boot JSP</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .home-container {
            background: #ffffff;
            padding: 40px 50px;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            text-align: center;
        }

        .home-container h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .btnCustomer {
            display: inline-block;
            padding: 12px 25px;
            text-decoration: none;
            color: #fff;
            background: #007bff;
            border-radius: 5px;
            font-weight: bold;
            transition: background 0.3s;
        }

        .btnCustomer:hover {
            background: #0056b3;
        }

        .btnEmployee{
            display: inline-block;
            padding: 12px 25px;
            text-decoration: none;
            color: #fff;
            background: orange;
            border-radius: 5px;
            font-weight: bold;
            transition: background 0.3s;
        }

    </style>
</head>
<body>

<div class="home-container">
    <h2>Welcome to Spring Boot JSP App</h2>
    <a href="${pageContext.request.contextPath}/customers" class="btnCustomer">View Customers</a>
    <a href="${pageContext.request.contextPath}/employees" class="btnEmployee">View Employees</a>
</div>

</body>
</html>

