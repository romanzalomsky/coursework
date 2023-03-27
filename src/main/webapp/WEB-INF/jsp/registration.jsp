<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Регистрация</title>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/regStyle.css">
</head>

<body>

    <div class="content-box">
        <form:form method="POST" modelAttribute="userForm">
            <div id="reg">Регистрация</div>
            <div>
                <div id="ert">
                    логин<br>
                </div>
                <form:input type="text" path="username" autofocus="true" id="inputName"></form:input>
                <form:errors path="username"></form:errors>
                    ${usernameError}
            </div>
            <div>
                <div id="ertt">
                    пароль<br>
                </div>
                <form:input type="password" path="password" id="inputPass"></form:input>
            </div>
            <div>
                <div id="erttt">
                    повтор пароля<br>
                </div>
                <form:input type="password" path="passwordConfirm" id="repPass"></form:input>
                <form:errors path="password"></form:errors>
                    ${passwordError}
            </div>
            <button type="submit" id="buttonS">зарегистрироваться</button>
        </form:form>
    </div>
</body>
</html>