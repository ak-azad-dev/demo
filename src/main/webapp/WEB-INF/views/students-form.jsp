<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Student Form</title>

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

        .btnLogout{
            background:linear-gradient(135deg,#e53e3e,#c53030);
        }

        .btnBack:hover,
        .btnLogout:hover{
            transform:translateY(-2px);
        }

        .form-container{
            width:450px;
            background:#ffffff;
            padding:45px;
            border-radius:24px;
            box-shadow:0 20px 40px rgba(0,0,0,0.15);
        }

        .form-container h2{
            text-align:center;
            margin-bottom:30px;
            color:#2d3748;
            font-size:30px;
        }

        label{
            display:block;
            margin-bottom:8px;
            color:#4a5568;
            font-weight:600;
        }

        input{
            width:100%;
            padding:14px;
            margin-bottom:18px;
            border:2px solid #e2e8f0;
            border-radius:12px;
            background:#f8fafc;
        }

        input:focus{
            outline:none;
            border-color:#667eea;
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
        }

        .cancel-link{
            display:block;
            text-align:center;
            margin-top:15px;
            text-decoration:none;
            color:#dc3545;
            font-weight:600;
        }

        .cancel-link:hover{
            text-decoration:underline;
        }

        @media(max-width:500px){
            .form-container{
                width:95%;
                padding:30px 25px;
            }
        }
    </style>
    ```

</head>

<body>

<div class="back-container">
    <a href="${pageContext.request.contextPath}/students"
       class="btnBack">
        ⬅ Back
    </a>
</div>

<div class="logout-container">
    <a href="${pageContext.request.contextPath}/logout"
       class="btnLogout">
        🚪 Logout
    </a>
</div>

<div class="form-container">

    ```
    <h2>Student Form</h2>

    <form action="${pageContext.request.contextPath}/students/save"
          method="post"
          onsubmit="return validateForm();">

        <input type="hidden"
               name="id"
               value="${student.id}" />

        <label for="name">Name</label>
        <input type="text"
               name="name"
               id="name"
               value="${student.name}" />

        <label for="rollnumber">Roll Number</label>
        <input type="text"
               name="rollnumber"
               id="rollnumber"
               value="${student.rollnumber}" />

        <label for="course">Course</label>
        <input type="text"
               name="course"
               id="course"
               value="${student.course}" />

        <label for="age">Age</label>
        <input type="number"
               name="age"
               id="age"
               value="${student.age}" />

        <button type="submit">💾 Save</button>

    </form>

    <a href="${pageContext.request.contextPath}/students"
       class="cancel-link">
        Cancel
    </a>
    ```

</div>

</body>
</html>
