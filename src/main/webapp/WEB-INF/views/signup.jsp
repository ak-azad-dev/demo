<%--
  Created by IntelliJ IDEA.
  User: AzadDevPC
  Date: 1/8/2026
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Signup</title>
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

        .signup-container {
            background: #ffffff;
            padding: 30px 40px;
            width: 350px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .signup-container label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .signup-container input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .signup-container button {
            width: 100%;
            padding: 10px;
            background: #28a745;
            border: none;
            color: #ffffff;
            font-size: 15px;
            border-radius: 4px;
            cursor: pointer;
        }

        .signup-container button:hover {
            background: #218838;
        }

        .login-link {
            text-align: center;
            margin-top: 15px;
        }

        .login-link a {
            text-decoration: none;
            color: #007bff;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<div class="signup-container">
    <h2>Create Account</h2>

    <form method="post" action="${pageContext.request.contextPath}/signup">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Enter username" required />

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter password" required />

        <button type="submit">Register</button>
    </form>

    <div class="login-link">
        Already have an account?
        <a href="${pageContext.request.contextPath}/login">Login</a>
    </div>
</div>

</body>
</html>
