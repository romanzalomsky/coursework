<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Добавить объявление</title>
</head>
<body>
<div>
    <form action="/view" method="GET">
        Поиск по названию: <input type="text" name="name"><br>
        <input type="submit" value="Поиск">
    </form>
</div>
<div>
    <c:forEach items="${estates}" var="estate">
        ${estate.name}<br>
        ${estate.cost}<br>
        <a href="/estate/${estate.id}">Подробнее...</a></br></br>
    </c:forEach>

    Фильтры
</div>

</body>
</html>