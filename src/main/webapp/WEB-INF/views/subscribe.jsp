<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 6/8/2026
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Subscribe</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body{
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);
        }

        .subscribe-container{
            width:400px;
            background:#fff;
            padding:40px;
            border-radius:20px;
            box-shadow:0 15px 35px rgba(0,0,0,0.15);
            animation:fadeIn 0.5s ease;
        }

        .subscribe-container h2{
            text-align:center;
            color:#2d3748;
            margin-bottom:30px;
            font-size:30px;
            font-weight:700;
        }

        .subscribe-container label{
            display:block;
            margin-bottom:8px;
            color:#4a5568;
            font-size:14px;
            font-weight:600;
        }

        .subscribe-container input{
            width:100%;
            padding:14px 16px;
            border:2px solid #e2e8f0;
            border-radius:12px;
            margin-bottom:20px;
            font-size:15px;
            transition:all 0.3s ease;
            background:#f8fafc;
        }

        .subscribe-container input:focus{
            outline:none;
            border-color:#667eea;
            background:#fff;
            box-shadow:0 0 0 4px rgba(102,126,234,0.15);
        }

        .subscribe-container button{
            width:100%;
            padding:14px;
            border:none;
            border-radius:12px;
            background:linear-gradient(135deg,#667eea,#764ba2);
            color:white;
            font-size:16px;
            font-weight:600;
            cursor:pointer;
            transition:all 0.3s ease;
        }

        .subscribe-container button:hover{
            transform:translateY(-2px);
            box-shadow:0 10px 20px rgba(102,126,234,0.3);
        }

        .subscribe-container button:active{
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
            font-weight:600;
            text-decoration:none;
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
            .subscribe-container{
                width:90%;
                padding:30px 25px;
            }
        }
    </style>
</head>

<body>

<div class="subscribe-container">
    <h2>Subscribe</h2>

    <form method="post" action="${pageContext.request.contextPath}/subscribe/save">
        <label for="Name">Name</label>
        <input type="text" id="Name" name="Name" placeholder="Enter Your username" required />

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter Your Email" required />


        <button type="submit">Submit</button>
    </form>

    <div class="login-link">
        Already have an account?
        <a href="${pageContext.request.contextPath}/login">Login</a>
    </div>
</div>

</body>
</html>