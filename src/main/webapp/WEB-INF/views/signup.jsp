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
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body{
            min-height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);
            padding:20px;
        }

        .signup-container{
            width:420px;
            background:#ffffff;
            padding:40px;
            border-radius:20px;
            box-shadow:0 15px 35px rgba(0,0,0,0.15);
            animation:fadeIn 0.5s ease;
        }

        .signup-container h2{
            text-align:center;
            margin-bottom:30px;
            color:#2d3748;
            font-size:30px;
            font-weight:700;
        }

        .signup-container label{
            display:block;
            margin-bottom:8px;
            color:#4a5568;
            font-size:14px;
            font-weight:600;
        }

        .signup-container input{
            width:100%;
            padding:14px 16px;
            margin-bottom:18px;
            border:2px solid #e2e8f0;
            border-radius:12px;
            background:#f8fafc;
            font-size:15px;
            transition:all 0.3s ease;
        }

        .signup-container input:focus{
            outline:none;
            border-color:#667eea;
            background:#fff;
            box-shadow:0 0 0 4px rgba(102,126,234,0.15);
        }

        .signup-container button{
            width:100%;
            padding:14px;
            border:none;
            border-radius:12px;
            background:linear-gradient(135deg,#28a745,#20c997);
            color:#fff;
            font-size:16px;
            font-weight:600;
            cursor:pointer;
            transition:all 0.3s ease;
        }

        .signup-container button:hover{
            transform:translateY(-2px);
            box-shadow:0 10px 20px rgba(40,167,69,0.3);
        }

        .signup-container button:active{
            transform:translateY(0);
        }

        .login-link{
            text-align:center;
            margin-top:20px;
            color:#718096;
            font-size:14px;
        }

        .login-link a{
            color:#667eea;
            text-decoration:none;
            font-weight:600;
            transition:0.3s;
        }

        .login-link a:hover{
            color:#764ba2;
            text-decoration:underline;
        }

        @keyframes fadeIn{
            from{
                opacity:0;
                transform:translateY(20px);
            }
            to{
                opacity:1;
                transform:translateY(0);
            }
        }

        @media(max-width:480px){
            .signup-container{
                width:95%;
                padding:30px 25px;
            }
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
