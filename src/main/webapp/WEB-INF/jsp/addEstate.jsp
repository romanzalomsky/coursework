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
        <%--АДМИН НЕ МОЖЕТ ДОБАВИТЬ НЕДВИЖИМОСТЬ--%>
        <form action="/estate/create" method="POST" enctype="multipart/form-data">
            <h2>Добавить объявление</h2>
            <div>
                <input type="text" name="name" placeholder="Название" autofocus="true">
            </div>
            <div>
                <input type="text" name="description" placeholder="Описание">
            </div>
            <div>
                <input type="text" name="country" placeholder="Страна">
            </div>
            <div>
                <input type="text" name="city" placeholder="Город">
            </div>
            <div>
                <input type="number" name="cost" placeholder="Цена">
            </div>
            <div>
                <input type="text" name="type" placeholder="Тип">
            </div>
            <div>
                <input type="text" name="house_type" placeholder="Тип недвижимости">
            </div>
            <div>
                <input type="text" name="address" placeholder="Адрес">
            </div>
            <div>
                Первая фотография: <input type="file" name="file1"/><br><br>
                Вторая фотография: <input type="file" name="file2"/><br><br>
                Третья фотография: <input type="file" name="file3"/><br><br>
            </div>
            <button type="submit">Добавить</button>
        </form>
    </div>

</div>
</body>
</html>