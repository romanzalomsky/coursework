<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Добавить объявление</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/view.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<c:forEach items="${estates}" var="estate">
    <div class="content-box">
            <%--            <c:forEach items="${images}" var="img">--%>
        <img src="<%--/images/${img.id}--%> https://prorealproperty.com/img/data/img5c3d23ed159e6_1547510765_1.jpg" height="230px" width="270px"/><br>
            <%--            </c:forEach>--%>
        <a href="/estate/${estate.id}">${estate.name}</a><br>
            ${estate.cost} $<br>
    </div>
</c:forEach>

<br>

<form action="/view" method="GET">
    Поиск по названию: <input type="text" name="name"><br>
    <input type="submit" value="Найти">
</form>
<br>

<%--<form action="/view/sortEstate" method="GET">
    <div class="container">
        Тип недвижимости<br>
        <select name="house_type" class="js_choice">
            <option>Коттедж</option>
            <option>Квартира</option>
        </select>
    </div>
    <input type="submit" value="Найти">
</form>--%>
<br>

</body>
</html>