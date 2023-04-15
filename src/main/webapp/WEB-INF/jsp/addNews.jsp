<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Добавить новость</title>
</head>
<body>
<div>
    <%--АДМИН НЕ МОЖЕТ ДОБАВИТЬ НЕДВИЖИМОСТЬ--%>
    <form action="/news/create" method="POST" enctype="multipart/form-data">
        <h2>Добавить новость</h2>
        <div>
            <input type="text" name="name" placeholder="Заголовок" autofocus="true">
        </div>
        <div>
            <input type="text" name="text" placeholder="Текст новости">
        </div>
        <button type="submit">Добавить</button>
    </form>
</div>

</div>
</body>
</html>