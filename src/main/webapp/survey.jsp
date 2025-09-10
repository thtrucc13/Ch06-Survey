<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css">    
</head>
<body>
    <form>
        <h1>Thanks for taking our survey!</h1>
        <p>Here is the information that you entered:</p>
        <table>
            <tr>
                <td><label>Email:</label></td>
                <td><span>${user.email}</span></td>
            </tr>
            <tr>
                <td><label>First Name:</label></td>
                <td><span>${user.firstName}</span></td>
            </tr>
            <tr>
                <td><label>Last Name:</label></td>
                <td><span>${user.lastName}</span></td>
            </tr>
            <tr>
                <td><label>Heard From:</label></td>
                <td><span>${user.heardFrom}</span></td>
            </tr>
            <tr>
                <td><label>Updates:</label></td>
                <td><span>${user.wantsUpdates}</span></td>
            </tr>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:if test="${user.wantsUpdates == 'Yes'}">
                <tr>
                    <td><label>Contact Via:</label></td>
                    <td><span>${user.contactVia}</span></td>
                </tr>
            </c:if>
        </table>
    </form>
</body>
</html>