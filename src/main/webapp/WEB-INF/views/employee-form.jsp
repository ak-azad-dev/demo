<%--
  Created by IntelliJ IDEA.
  User: AzadDevPC
  Date: 1/7/2026
  Time: 10:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Form</title>
    <script src="${pageContext.request.contextPath}/js/app.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #fff;
            padding: 30px 40px;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #007bff;
            border: none;
            color: #fff;
            font-size: 15px;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 5px;
        }

        button:hover {
            background: #0056b3;
        }

        .cancel-link {
            display: block;
            text-align: center;
            margin-top: 10px;
            text-decoration: none;
            color: #dc3545;
            font-weight: bold;
        }

        .cancel-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Employee Form</h2>

    <form action="${pageContext.request.contextPath}/employees/save"
          method="post"
          onsubmit="return validateForm();">

        <!-- Hidden ID for Edit -->
        <input type="hidden" name="id" value="${employee.id}" />

        <label for="employeeName">Employee Name</label>
        <input type="text" name="employeeName" id="employeeName" value="${employee.employeeName}" />

        <label for="profession">Profession</label>
        <input type="text" name="profession" id="profession" value="${employee.profession}" />

        <label for="organization">Organization</label>
        <input type="text" name="organization" id="organization" value="${employee.organization}" />

        <label for="email">Email</label>
        <input type="email" name="email" id="email" value="${employee.email}" />

        <label for="address">Address</label>
        <input type="text" name="address" id="address" value="${employee.address}" />

        <button type="submit">Save</button>
    </form>

    <a href="${pageContext.request.contextPath}/customers" class="cancel-link">Cancel</a>
</div>

</body>
</html>


