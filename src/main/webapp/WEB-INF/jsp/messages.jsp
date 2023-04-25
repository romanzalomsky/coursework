<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Сообщения от пользователей</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/profileStyle.css">
</head>
<body>

<c:forEach items="${texts}" var="messages">
    <div class="">
        Сообщение: ${messages.text}<br>
        Отправитель:
    </div>
    <div>
        <textarea style="width:300px; height:150px" type="text" name="text" placeholder="Ответ: "></textarea>
    </div>
    <input type="submit" value="Отправить">
    <form action="/messages/delete/${messages.id}" method="post">
        <input type="submit" value="Удалить">
    </form>
</c:forEach>

</body>
</html>