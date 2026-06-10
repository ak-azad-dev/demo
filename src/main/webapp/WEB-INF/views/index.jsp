<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home - Spring Boot JSP</title>

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
            position:relative;
        }

        .home-container{
            width:550px;
            background:#ffffff;
            padding:50px 40px;
            border-radius:24px;
            box-shadow:0 20px 40px rgba(0,0,0,0.15);
            text-align:center;
            animation:fadeIn 0.6s ease;
        }

        .home-container h2{
            color:#2d3748;
            font-size:32px;
            margin-bottom:15px;
        }

        .home-container p{
            color:#718096;
            margin-bottom:35px;
            font-size:15px;
            line-height:1.7;
        }

        .button-group{
            display:flex;
            justify-content:center;
            gap:15px;
            flex-wrap:wrap;
        }

        .btnCustomer,
        .btnEmployee,
        .btnStudents{
            text-decoration:none;
            color:#fff;
            padding:14px 28px;
            border-radius:12px;
            font-size:15px;
            font-weight:600;
            transition:all 0.3s ease;
            min-width:200px;
        }

        .btnCustomer{
            background:linear-gradient(135deg,#667eea,#764ba2);
        }

        .btnCustomer:hover{
            transform:translateY(-3px);
            box-shadow:0 10px 20px rgba(102,126,234,0.3);
        }

        .btnEmployee{
            background:linear-gradient(135deg,#ff9f43,#ff6b35);
        }

        .btnEmployee:hover{
            transform:translateY(-3px);
            box-shadow:0 10px 20px rgba(255,159,67,0.3);
        }
        .btnStudents{
            background:linear-gradient(155deg,#ff8f43,#ff6b35);
        }

        .btnStudents:hover{
            transform:translateY(-3px);
            box-shadow:0 10px 20px rgba(265,159,67,0.3);
        }


        /* Logout Button */
        .logout-container{
            position:absolute;
            top:20px;
            right:30px;
        }

        .btnLogout{
            display:inline-block;
            text-decoration:none;
            color:#fff;
            padding:12px 24px;
            border-radius:12px;
            font-size:15px;
            font-weight:600;
            background:linear-gradient(135deg,#e53e3e,#c53030);
            transition:all 0.3s ease;
        }

        .btnLogout:hover{
            transform:translateY(-3px);
            box-shadow:0 10px 20px rgba(229,62,62,0.3);
        }

        .footer-text{
            margin-top:25px;
            color:#a0aec0;
            font-size:13px;
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

        @media(max-width:600px){

            .logout-container{
                top:15px;
                right:15px;
            }

            .btnLogout{
                padding:10px 18px;
                font-size:14px;
            }

            .home-container{
                width:95%;
                padding:35px 25px;
            }

            .button-group{
                flex-direction:column;
            }

            .btnCustomer,
            .btnEmployee,
            .btnStudents{
                min-width:100%;
            }

        }

    </style>
</head>

<body>

<!-- Logout Button -->
<div class="logout-container">
    <a href="${pageContext.request.contextPath}/logout"
       class="btnLogout">
        🚪 Logout
    </a>
</div>

<!-- Main Content -->
<div class="home-container">

    <h2>🏦 Spring Boot JSP Management System</h2>

    <p>
        Welcome to the management portal. Select a module below to
        manage customer information or employee records.
    </p>

    <div class="button-group">

        <a href="${pageContext.request.contextPath}/customers"
           class="btnCustomer">
            👤 View Customers
        </a>

        <a href="${pageContext.request.contextPath}/employees"
           class="btnEmployee">
            👨‍💼 View Employees
        </a>
        </a>

        <a href="${pageContext.request.contextPath}/students"
           class="btnStudents">
            👨‍💼 View Students
        </a>


    </div>

    <div class="footer-text">
        Spring Boot • JSP • CRUD Management System
    </div>

</div>

</body>
</html>