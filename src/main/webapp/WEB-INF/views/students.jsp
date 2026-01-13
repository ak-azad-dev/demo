<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 12/01/2026
  Time: 08:20 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Management</title>
    <script src="${pageContext.request.contextPath}.js/app.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #dc3545;
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
    <h2>Student Management</h2>
    <a href="${pageContext.request.contextPath}/students/new" class="add-btn">Add Students</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>rollnumber</th>
            <th>course</th>
            <th>age</th>
        </tr>
        <c:forEach var="f" items="${students}">
            <tr>
                <td>${f.id}</td>
                <td>${f.Name}</td>
                <td>${f.rollnumber}</td>
                <td>${f.course}</td>
                <td>${f.age}</td>
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


</style>

</head>
<body>

</body>
</html>
