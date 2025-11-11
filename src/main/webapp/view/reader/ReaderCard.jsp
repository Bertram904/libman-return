<%--
  Created by IntelliJ IDEA.
  User: ngotu
  Date: 21/10/2025
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Đăng ký Thẻ Bạn đọc</title>
    <%-- (Thêm link CSS - giống Login.jsp) --%>
    <style>
        /* (Copy style từ Login.jsp) */
        body { font-family: sans-serif; display: grid; place-items: center; min-height: 80vh; }
        .container { border: 1px solid #ccc; padding: 20px; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        .form-group { margin-bottom: 15px; display: grid; grid-template-columns: 130px 1fr; align-items: center; }
        .form-group input { width: 300px; padding: 8px; }
        .buttons { display: flex; justify-content: flex-end; }
        .buttons button { padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #007bff; color: white; }
        .message { padding: 10px; border-radius: 4px; margin-bottom: 15px; }
        .error { background-color: #f8d7da; color: #721c24; }
    </style>
</head>
<body>
<div class="container">
    <h2>Reader Card</h2> <%-- --%>

    <c:if test="${not empty errorMessage}">
        <div class="message error">${errorMessage}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/register" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>
        </div>
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>
        </div>
        <div class="form-group">
            <label for="dateOfBith">Date of Birth:</label>
            <input type="date" id="dateOfBith" name="dateOfBith" required>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address">
        </div>
        <div class="form-group">
            <label for="tel">Tel:</label>
            <input type="text" id="tel" name="tel">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email">
        </div>
        <div class="buttons">
            <button type="submit">Register</button>
        </div>
    </form>
</div>
</body>
</html>