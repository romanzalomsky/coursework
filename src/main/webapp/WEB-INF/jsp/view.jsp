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


<c:forEach items="${estates}" var="estate">
    <div class="content-box">
        <img src="https://prorealproperty.com/img/data/img5c3d23ed159e6_1547510765_1.jpg" height="230px" width="270px"/><br>
        <a href="/estate/${estate.id}">${estate.name}</a><br>
            ${estate.cost} $<br>
    </div>
</c:forEach>


<%--<c:if test="${currentPage != 1}">
    <td><a href="view?page=${currentPage - 1}">Previous</a></td>
</c:if>

<c:forEach begin="1" end="${amountOfPages}" var="i">
    <c:choose>
        <c:when test="${currentPage eq i}">
            <td>${i}</td>
        </c:when>
        <c:otherwise>
            <td><a href="view?page=${i}">${i}</a></td>
        </c:otherwise>
    </c:choose>
</c:forEach>

<c:if test = "${currentPage lt amountOfPages}">
    <a href="view?page=${currentPage + 1}"> Next </a>
</c:if>--%>

<form action="/view" method="GET">
    Поиск по названию: <input type="text" name="name"><br>
    <input type="submit" value="Найти">
</form>

</body>
</html>