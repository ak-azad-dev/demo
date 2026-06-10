<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Customer Form</title>

    ```
    <script src="${pageContext.request.contextPath}/js/app.js"></script>

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
            padding:80px 20px 20px;
        }

        /* Top Buttons */
        .back-container{
            position:fixed;
            top:20px;
            left:20px;
            z-index:1000;
        }

        .logout-container{
            position:fixed;
            top:20px;
            right:20px;
            z-index:1000;
        }

        .btnBack,
        .btnLogout{
            display:inline-block;
            padding:12px 22px;
            color:#fff;
            text-decoration:none;
            border-radius:10px;
            font-weight:600;
            transition:all 0.3s ease;
        }

        .btnBack{
            background:linear-gradient(135deg,#007bff,#0056d2);
        }

        .btnBack:hover{
            transform:translateY(-2px);
            box-shadow:0 8px 16px rgba(0,123,255,0.3);
        }

        .btnLogout{
            background:linear-gradient(135deg,#e53e3e,#c53030);
        }

        .btnLogout:hover{
            transform:translateY(-2px);
            box-shadow:0 8px 16px rgba(229,62,62,0.3);
        }

        .form-container{
            width:450px;
            background:#ffffff;
            padding:45px;
            border-radius:24px;
            box-shadow:0 20px 40px rgba(0,0,0,0.15);
            animation:fadeIn 0.5s ease;
        }

        .form-container h2{
            text-align:center;
            margin-bottom:30px;
            color:#2d3748;
            font-size:30px;
            font-weight:700;
        }

        label{
            display:block;
            margin-bottom:8px;
            color:#4a5568;
            font-size:14px;
            font-weight:600;
        }

        input{
            width:100%;
            padding:14px 16px;
            margin-bottom:18px;
            border:2px solid #e2e8f0;
            border-radius:12px;
            background:#f8fafc;
            font-size:15px;
            transition:all 0.3s ease;
        }

        input:focus{
            outline:none;
            border-color:#667eea;
            background:#fff;
            box-shadow:0 0 0 4px rgba(102,126,234,0.15);
        }

        button{
            width:100%;
            padding:14px;
            border:none;
            border-radius:12px;
            background:linear-gradient(135deg,#007bff,#0056d2);
            color:#fff;
            font-size:16px;
            font-weight:600;
            cursor:pointer;
            transition:all 0.3s ease;
        }

        button:hover{
            transform:translateY(-2px);
            box-shadow:0 10px 20px rgba(0,123,255,0.3);
        }

        button:active{
            transform:translateY(0);
        }

        .cancel-link{
            display:block;
            text-align:center;
            margin-top:20px;
            color:#e53e3e;
            font-weight:600;
            text-decoration:none;
            font-size:14px;
            transition:0.3s;
        }

        .cancel-link:hover{
            color:#c53030;
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

        @media(max-width:500px){

            .back-container{
                top:15px;
                left:15px;
            }

            .logout-container{
                top:15px;
                right:15px;
            }

            .btnBack,
            .btnLogout{
                padding:10px 16px;
                font-size:14px;
            }

            .form-container{
                width:95%;
                padding:30px 25px;
            }
        }
    </style>
    ```

</head>

<body>

<!-- Back Button -->

<div class="back-container">
    <a href="${pageContext.request.contextPath}/customers"
       class="btnBack">
        ⬅ Back
    </a>
</div>

<!-- Logout Button -->

<div class="logout-container">
    <a href="${pageContext.request.contextPath}/logout"
       class="btnLogout">
        🚪 Logout
    </a>
</div>

<div class="form-container">

    ```
    <h2>Customer Form</h2>

    <form action="${pageContext.request.contextPath}/customers/save"
          method="post"
          onsubmit="return validateForm();">

        <!-- Hidden ID for Edit -->
        <input type="hidden" name="id" value="${customer.id}" />

        <label for="name">Name</label>
        <input type="text"
               name="name"
               id="name"
               value="${customer.name}" />

        <label for="email">Email</label>
        <input type="email"
               name="email"
               id="email"
               value="${customer.email}" />

        <label for="mobile">Mobile</label>
        <input type="number"
               name="mobile"
               id="mobile"
               value="${customer.mobile}" />

        <button type="submit">💾 Save</button>

    </form>

    <a href="${pageContext.request.contextPath}/customers"
       class="cancel-link">
        Cancel
    </a>
    ```

</div>

</body>
</html>
