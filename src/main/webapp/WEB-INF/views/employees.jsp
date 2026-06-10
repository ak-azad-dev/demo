<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Employee Management</title>

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

        .container{
            width:95%;
            max-width:1200px;
            margin:40px auto;
            background:#ffffff;
            padding:40px;
            border-radius:24px;
            box-shadow:0 20px 40px rgba(0,0,0,0.15);
            animation:fadeIn 0.5s ease;
        }

        h2{
            text-align:center;
            margin-bottom:25px;
            color:#2d3748;
            font-size:32px;
            font-weight:700;
        }

        .add-btn{
            display:inline-block;
            margin-bottom:20px;
            padding:12px 22px;
            background:linear-gradient(135deg,#28a745,#20c997);
            color:#fff;
            text-decoration:none;
            border-radius:12px;
            font-weight:600;
            transition:all 0.3s ease;
        }

        .add-btn:hover{
            transform:translateY(-2px);
            box-shadow:0 10px 20px rgba(40,167,69,0.3);
        }

        table{
            width:100%;
            border-collapse:collapse;
            border-radius:12px;
            overflow:hidden;
        }

        table th{
            background:linear-gradient(135deg,#007bff,#0056d2);
            color:#fff;
            padding:14px;
            text-align:left;
            font-size:14px;
        }

        table td{
            padding:14px;
            border-bottom:1px solid #e2e8f0;
            color:#2d3748;
            font-size:14px;
        }

        table tr:hover{
            background:#f8fafc;
            transition:0.3s;
        }

        .action-links a{
            margin-right:12px;
            text-decoration:none;
            font-weight:600;
            font-size:13px;
            transition:0.3s;
        }

        .action-links a:first-child{
            color:#007bff;
        }

        .action-links a:first-child:hover{
            color:#0056b3;
        }

        .action-links a:last-child{
            color:#e53e3e;
        }

        .action-links a:last-child:hover{
            color:#c53030;
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

        @media(max-width:768px){

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

            .container{
                padding:25px;
            }

            table{
                display:block;
                overflow-x:auto;
                white-space:nowrap;
            }
        }
    </style>
    ```

</head>

<body>

<!-- Back Button -->

<div class="back-container">
    <a href="${pageContext.request.contextPath}/home"
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

<div class="container">

    ```
    <h2>Employee List</h2>

    <a href="${pageContext.request.contextPath}/employees/new"
       class="add-btn">
        ➕ Add Employee
    </a>

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
                    <a href="${pageContext.request.contextPath}/employees/edit/${e.id}">
                        Edit
                    </a>

                    <a href="javascript:void(0);"
                       onclick="confirmDelete('${pageContext.request.contextPath}/employees/delete/${e.id}')">
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
