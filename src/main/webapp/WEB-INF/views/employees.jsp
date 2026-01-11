<%--
  Created by IntelliJ IDEA.
  User: AzadDevPC
  Date: 1/7/2026
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Management</title>
    <script src="${pageContext.request.contextPath}/js/app.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 900px;
            margin: 50px auto;
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .add-btn {
            display: inline-block;
            margin-bottom: 15px;
            padding: 10px 20px;
            background: #28a745;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background 0.3s;
        }

        .add-btn:hover {
            background: #218838;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background: #007bff;
            color: #fff;
        }

        table tr:hover {
            background: #f1f1f1;
        }

        .action-links a {
            margin-right: 10px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        .action-links a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

<div class="container">
    <h2>Employee List</h2>
    <a href="${pageContext.request.contextPath}/employees/new" class="add-btn">Add Employee</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Employee Name</th>
            <th>Profession</th>
            <th>Organization</th>
            <th>Email</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="e" items="${employees}">
            <tr>
                <td>${e.id}</td>
                <td>${e.employeeName}</td>
                <td>${e.profession}</td>
                <td>${e.organization}</td>
                <td>${e.email}</td>
                <td>${e.address}</td>
                <td class="action-links">
                    <a href="${pageContext.request.contextPath}/customers/edit/${c.id}">Edit</a>
                    <a href="javascript:void(0);" onclick="confirmDelete('${pageContext.request.contextPath}/customers/delete/${c.id}')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>

