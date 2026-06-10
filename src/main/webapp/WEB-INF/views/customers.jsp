<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Customer Management</title>

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
            padding:30px;
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
            max-width:1100px;
            margin:70px auto 0;
            background:#fff;
            padding:40px;
            border-radius:20px;
            box-shadow:0 20px 40px rgba(0,0,0,0.15);
            overflow-x:auto;
        }

        h2{
            text-align:center;
            margin-bottom:20px;
            font-size:32px;
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
            transition:all 0.3s ease;
        }

        .add-btn:hover{
            transform:translateY(-2px);
            box-shadow:0 8px 16px rgba(40,167,69,0.3);
        }

        table{
            width:100%;
            border-collapse:collapse;
            min-width:600px;
            background:#fff;
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
            color:#333;
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
                padding:20px;
                margin-top:80px;
            }

            table{
                min-width:800px;
            }
        }
    </style>
    ```

</head>
<body>

<!-- Back Button -->

<div class="back-container">
    <a href="javascript:history.back();" class="btnBack">
        ⬅ Back
    </a>
</div>

<!-- Logout Button -->

<div class="logout-container">
    <a href="${pageContext.request.contextPath}/logout" class="btnLogout">
        🚪 Logout
    </a>
</div>

<div class="container">

    ```
    <h2>Customer List</h2>

    <a href="${pageContext.request.contextPath}/customers/new"
       class="add-btn">
        ➕ Add Customer
    </a>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Actions</th>
        </tr>

        <c:forEach var="c" items="${customers}">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.email}</td>
                <td>${c.mobile}</td>
                <td class="action-links">
                    <a href="${pageContext.request.contextPath}/customers/edit/${c.id}">
                        Edit
                    </a>

                    <a href="javascript:void(0);"
                       onclick="confirmDelete('${pageContext.request.contextPath}/customers/delete/${c.id}')">
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
