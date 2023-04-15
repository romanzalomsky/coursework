<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Лента</title>
    <link rel="stylesheet" type="text/css" href="">
</head>
<body>

<b>Название: </b>${news.name}<br>
<b>Описание: </b>${news.text}<br>

<security:authorize access="hasAnyRole('ADMIN')">
    <form action="/news/delete/${news.id}" method="post">
        <input type="submit" value="Удалить">
    </form>
</security:authorize>

</body>
</html>