<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Профиль</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/profileStyle.css">
</head>
<body>

<div class="content-box">
    <div id="eee">
        Здравствуйте, ${pageContext.request.userPrincipal.name}<br>
    </div>

    <div id="ttt">
        <security:authorize access="hasAnyRole('ADMIN')">
            <a href="/admin">Пользователи</a><br>
        </security:authorize>

        <security:authorize access="hasAnyRole('ADMIN', 'USER')">
            <a href="/favorite">Избранное</a><br>
        </security:authorize>

        <sec:authorize access="isAuthenticated()">
            <a href="/logout">Выйти</a><br>
        </sec:authorize>

    </div>

</div>


</body>
</html>