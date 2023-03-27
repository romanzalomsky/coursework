<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Логинация</title>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/loginStyle.css">
</head>

<body>
    <div class="content-box">
        <sec:authorize access="isAuthenticated()">
            <% response.sendRedirect("/"); %>
        </sec:authorize>
        <div>
            <form method="POST" action="/login">
                <div id="reg">Логинация</div>
                <div>
                    <div id="ert">
                      логин<br>
                    </div>
                    <input id="inputName" name="username" type="text" autofocus="true"/>
                    <div id="ertt">
                        пароль<br>
                    </div>
                    <input id="inputPass" name="password" type="password"/>
                    <button id="buttonS" type="submit">Войти</button>
                    <h4><a href="/registration">Зарегистрироваться</a></h4>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
