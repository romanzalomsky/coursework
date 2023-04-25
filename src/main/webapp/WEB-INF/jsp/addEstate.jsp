<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Добавить объявление</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/addEstate.css">
</head>
<body>
    <div>
        <%--АДМИН НЕ МОЖЕТ ДОБАВИТЬ НЕДВИЖИМОСТЬ--%>
        <form action="/estate/create" method="POST" enctype="multipart/form-data">
            <h2>Добавить объявление</h2>
            <div>
                <input type="text" name="name" placeholder="Название" autofocus="true">
            </div>
            <div>
                <textarea style="width:300px; height:150px" type="text" name="description" placeholder="Описание"></textarea>
            </div>
            <select id="selectCountry" name="country">
                <option>Россия</option>
                <option>Беларусь</option>
                <option>Испания</option>
                <option>США</option>
                <option>Франция</option>
            </select>
            <div>
                <input type="text" name="city" placeholder="Город">
            </div>
            <div>
                <input type="number" name="cost" placeholder="Цена">
            </div>
            <select id="selectType" name="type">
                <option>Продажа</option>
                <option>Аренда</option>
            </select>
            <select id="selectHouse" name="house_type">
                <option>Квартира</option>
                <option>Коттедж</option>
                <option>Дача</option>
            </select>
            <div>
                <input type="text" name="address" placeholder="Адрес">
            </div>

            <button type="submit">Добавить</button>
        </form>
    </div>

</body>
</html>