<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Информация о недвижимости</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/search.css">
</head>
<body>

    <img src="/images/${img.id}" height="60px"/><br><br>

    <b>Название: </b>${estate.name}<br>
    <b>Описание: </b>${estate.description}<br>
    <b>Страна: </b>${estate.country}<br>
    <b>Город: </b>${estate.city}<br>
    <b>Цена: </b>${estate.cost}<br>
    <b>Тип: </b>${estate.type}<br>
    <b>Тип недвижимости: </b>${estate.house_type}<br>
    <b>Адрес: </b>${estate.address}<br>

    <security:authorize access="hasAnyRole('ADMIN')">
        <form action="/estate/delete/${estate.id}" method="post">
            <input type="submit" value="Удалить">
        </form>
    </security:authorize>

    <form action="" method="post">
        <input type="submit" value="Добавить в избранное">
    </form>

    Посмотреть на карте
    <div id="map" class="map"></div>
    <script src="https://api-maps.yandex.ru/3.0/?apikey=75cde50b-38f7-4a26-b1d8-fc6b8053502c&lang=ru_RU" type="text/javascript"></script>
    <script src="/resources/js/map.js" type="text/javascript"></script>
</body>
</html>