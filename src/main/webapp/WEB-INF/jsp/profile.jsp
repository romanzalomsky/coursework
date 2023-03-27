<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Профиль</title>
</head>
<body>

    ${pageContext.request.userPrincipal.name}</h3>

    <security:authorize access="hasAnyRole('ADMIN')">
        <a href="/admin">Пользователи</a>
    </security:authorize>

    <security:authorize access="hasAnyRole('ADMIN', 'USER')">
        <a href="/favorite">Избранное</a>
    </security:authorize>

    <sec:authorize access="isAuthenticated()">
        <a href="/logout">Выйти</a>
    </sec:authorize>

</body>
</html>