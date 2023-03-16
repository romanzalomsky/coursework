<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8">
    <title>Информация о недвижимости</title>
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
    <form action="/estate/delete/${estate.id}" method="post">
        <input type="submit" value="Удалить">
    </form>
    <input type="submit" value="Добавить в избранное">
</body>
</html>