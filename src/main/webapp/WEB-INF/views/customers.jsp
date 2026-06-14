<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/common/scripts_loader.jsp" />
<html>
<head>
    <title>Customer Management</title>
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

        /* View Button Styling */
        .btn-view {
            padding: 6px 14px;
            background: linear-gradient(135deg, #007bff, #0056d2);
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .btn-view:hover {
            box-shadow: 0 4px 8px rgba(0,123,255,0.2);
            opacity: 0.9;
        }

        /* --- Custom Modal Styling --- */
        .custom-modal {
            display: none; /* Hidden by default */
            position: fixed;
            z-index: 2000; /* Sit on top of everything */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Black backdrop with opacity */
            align-items: center;
            justify-content: center;
        }

        .modal-content {
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            width: 90%;
            max-width: 500px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.25);
            animation: fadeIn 0.3s ease;
            position: relative;
        }

        .close-modal {
            position: absolute;
            top: 15px;
            right: 20px;
            font-size: 28px;
            font-weight: bold;
            color: #aaa;
            cursor: pointer;
            transition: color 0.2s;
        }

        .close-modal:hover {
            color: #333;
        }

        .modal-header {
            margin-bottom: 20px;
            border-bottom: 2px solid #eaeaea;
            padding-bottom: 10px;
        }

        .modal-header h3 {
            color: #2d3748;
            font-size: 24px;
        }

        .modal-body p {
            font-size: 16px;
            color: #4a5568;
            margin-bottom: 12px;
        }

        .modal-body strong {
            color: #2d3748;
        }

        .modal-footer {
            margin-top: 25px;
            text-align: right;
        }

        .btn-close-modal {
            padding: 10px 20px;
            background-color: #e2e8f0;
            color: #4a5568;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-close-modal:hover {
            background-color: #cbd5e0;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @media(max-width:768px){
            .back-container{ top:15px; left:15px; }
            .logout-container{ top:15px; right:15px; }
            .btnBack, .btnLogout{ padding:10px 16px; font-size:14px; }
            .container{ padding:20px; margin-top:80px; }
            table{ min-width:800px; }
        }
    </style>
</head>
<body id="customer">

<div class="back-container">
    <a href="javascript:history.back();" class="btnBack">⬅ Back</a>
</div>

<div class="logout-container">
    <a href="${pageContext.request.contextPath}/logout" class="btnLogout">🚪 Logout</a>
</div>

<div class="container">
    <h2>Customer List</h2>
    <a href="${pageContext.request.contextPath}/customers/new" class="add-btn">➕ Add Customer</a>

    <table id="customerTable" class="table table-striped">
        <thead>
        <tr>
            <th>Customer ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody></tbody>
    </table>
</div>

<div id="customerModal" class="custom-modal">
    <div class="modal-content">
        <span class="close-modal">&times;</span>
        <div class="modal-header">
            <h3>Customer Details</h3>
        </div>
        <div class="modal-body">
            <p><strong>Name:</strong> <span id="customerName"></span></p>
            <p><strong>Email:</strong> <span id="customerEmail"></span></p>
            <p><strong>Mobile:</strong> <span id="customerMobile"></span></p>
        </div>
        <div class="modal-footer">
            <button class="btn-close-modal">Close</button>
        </div>
    </div>
</div>

</body>
</html>