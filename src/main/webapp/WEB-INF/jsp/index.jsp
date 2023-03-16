<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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

                    <sec:authorize access="isAuthenticated()">
                        <a href="/addEstate">Добавить объявление</a>
                    </sec:authorize>

                    <security:authorize access="hasAnyRole('ADMIN')">
                        <a href="/admin">Пользователи</a>
                    </security:authorize>

                        <a href="/converter">Конвертер</a>

                        <a href="/view">Посмотреть объявления</a>

                    <security:authorize access="hasAnyRole('ADMIN', 'USER')">
                        <a href="/favorite">Избранное</a>
                    </security:authorize>
                        <a href="/news">Новости</a>
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