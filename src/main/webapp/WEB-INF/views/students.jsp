<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Student Management</title>

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
            background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);
            padding:80px 30px 30px;
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

        .container{
            width:95%;
            max-width:1100px;
            margin:auto;
            background:#fff;
            padding:40px;
            border-radius:20px;
            box-shadow:0 20px 40px rgba(0,0,0,0.15);
        }

        h2{
            text-align:center;
            margin-bottom:25px;
            color:#2d3748;
        }

        .add-btn{
            display:inline-block;
            margin-bottom:20px;
            padding:12px 20px;
            background:linear-gradient(135deg,#28a745,#20c997);
            color:#fff;
            text-decoration:none;
            border-radius:10px;
            font-weight:600;
        }

        .add-btn:hover{
            transform:translateY(-2px);
        }

        table{
            width:100%;
            border-collapse:collapse;
        }

        table th{
            background:linear-gradient(135deg,#007bff,#0056d2);
            color:#fff;
            padding:14px;
            text-align:left;
        }

        table td{
            padding:14px;
            border-bottom:1px solid #eaeaea;
        }

        table tr:hover{
            background:#f8fafc;
        }

        .action-links a{
            margin-right:10px;
            text-decoration:none;
            font-weight:600;
        }

        .action-links a:first-child{
            color:#007bff;
        }

        .action-links a:last-child{
            color:#e53e3e;
        }

        @media(max-width:768px){
            .container{
                padding:20px;
            }

            table{
                display:block;
                overflow-x:auto;
                white-space:nowrap;
            }

            .back-container{
                left:15px;
                top:15px;
            }

            .logout-container{
                right:15px;
                top:15px;
            }
        }
    </style>
    ```

</head>

<body>

<div class="back-container">
    <a href="${pageContext.request.contextPath}/home"
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

<div class="container">

    ```
    <h2>Student Management</h2>

    <a href="${pageContext.request.contextPath}/students/new"
       class="add-btn">
        ➕ Add Student
    </a>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Roll Number</th>
            <th>Course</th>
            <th>Age</th>
            <th>Actions</th>
        </tr>

        <c:forEach var="f" items="${students}">
            <tr>
                <td>${f.id}</td>
                <td>${f.name}</td>
                <td>${f.rollnumber}</td>
                <td>${f.course}</td>
                <td>${f.age}</td>
                <td class="action-links">
                    <a href="${pageContext.request.contextPath}/students/edit/${f.id}">
                        Edit
                    </a>

                    <a href="javascript:void(0);"
                       onclick="confirmDelete('${pageContext.request.contextPath}/students/delete/${f.id}')">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>

    </table>
    ```

</div>

</body>
</html>
