<%@ page import="java.util.Scanner" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
    <head>

    </head>
    <body>
        <h4>Converter</h4>
        <input name="byn" type="number" size="15" placeholder = "Беларусские рубли"></br>
        <input name="rus" type="number" size="15" placeholder = "Российские рубли"></br>
        <input name="dollar" type="number" size="15" placeholder = "Доллары"></br>
        <input type="number" size="15" placeholder = "Фунты"></br>
        <input type="number" size="15" placeholder = "Евро"></br>
        <input type="number" size="15" placeholder = "Юани"></br>

        <button type="submit">Рассчитать</button>
    </body>
</html>