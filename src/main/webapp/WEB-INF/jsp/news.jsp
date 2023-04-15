<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8">
    <title>Новости</title>
</head>
<body>

<security:authorize access="hasAnyRole('ADMIN')">
    <div>
        <form action="/news/create" method="POST" enctype="multipart/form-data">
            <h2>Добавить новость</h2>
            <div>
                <input type="text" name="name" placeholder="Заголовок" autofocus="true">
            </div>
            <div>
                <textarea style="width:300px; height:150px" type="text" name="text" placeholder="Текст новости"></textarea>
            </div>
            <button type="submit">Добавить</button>
        </form>
    </div>

    <br><br>
</security:authorize>
Новости
<c:forEach items="${newss}" var="news">
    <div class="content-box">
        <a href="/news/${news.id}">${news.name}</a><br>
    </div>
</c:forEach>
</body>
</html>