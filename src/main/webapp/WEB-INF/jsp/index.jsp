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
                Rent&Sale

                <div id="enter">
                    <sec:authorize access="!isAuthenticated()">
                        <a href="/login">Войти</a>
                    </sec:authorize>
                </div>

                <sec:authorize access="isAuthenticated()">
                    <a href="/addEstate">Добавить объявление</a>
                </sec:authorize>

                <a href="/converter">Конвертер</a>

                <a href="/view">Предложения</a>

                <a href="/news">Новости</a>

                <div id="profile">
                    <security:authorize access="hasAnyRole('ADMIN', 'USER')">
                        <a href="/profile">Профиль</a>
                    </security:authorize>
                </div>
                <div id="fav">
                    <security:authorize access="hasAnyRole('ADMIN', 'USER')">
                        <a href="/favorite">
                            <img src="https://cdn-icons-png.flaticon.com/128/3916/3916593.png" data-src="https://cdn-icons-png.flaticon.com/128/3916/3916593.png" width="20" height="20" srcset="https://cdn-icons-png.flaticon.com/128/3916/3916593.png 4x">
                        </a>
                    </security:authorize>
                </div>
            </div>
        </div>
    </header>
</head>
<body>
<div class="imageBack">
    <img src="/resources/css/img/background3.jpg" height="600px" width="100%">
    <div id="textBack">
        Rent&Sale
    </div>
</div>
</body>
</html>