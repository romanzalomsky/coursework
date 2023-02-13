<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Главная</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style_main.css">
        <header>
            <div id = "main-header">
                <div id = "main-header-text">
                    ${pageContext.request.userPrincipal.name}</h3>
                    <sec:authorize access="!isAuthenticated()">
                        <a href="/login">Войти</a>
                        <a href="/registration">Зарегистрироваться</a>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <a href="/logout">Выйти</a>
                    </sec:authorize>
                        <a href="/news">Новости</a>
                        <a href="/admin">Пользователи</a>
                        <a href="/products">Товар</a>
                </div>
            </div>
        </header>
    </head>
    <body>
        <div id = "header">
            Rent&Sale
        </div>

    </body>
</html>