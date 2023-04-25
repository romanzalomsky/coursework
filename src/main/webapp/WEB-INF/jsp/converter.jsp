<%@ page import="java.util.Scanner" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html lang="en"><head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="style.css">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Конвертер валют</title>

    <style>
        .footer__link {
            margin: 0 15px;
        }
    </style>
</head>
<body>
<div class="container pt-5 pb-5">
    <div class="row justify-content-center">
        <div class="col-6">

            <div class="card p-3">
                <form>
                    <h1 class="h2 mb-4">Конвертер валют</h1>

                    <div class="courses">
                        <div class="course-item card card-body">
                            <div class="course-item-title">Курс USD</div>
                            <div class="course-item-value" data-value="USD">--.--</div>
                        </div>
                        <div class="course-item card card-body">
                            <div class="course-item-title">Курс EUR</div>
                            <div class="course-item-value" data-value="EUR">--.--</div>
                        </div>
                        <div class="course-item card card-body">
                            <div class="course-item-title">Курс GPB</div>
                            <div class="course-item-value" data-value="GBP">--.--</div>
                        </div>
                    </div>

                    <div class="row mb-1">
                        <div class="col">
                            <label for="name">Отдаю:</label>
                            <select disabled="" class="form-control" id="exampleFormControlSelect1">
                                <option value="RUB" selected="">RUB — Рубли</option>
                            </select>
                        </div>
                        <div class="col">
                            <label for="name">Получаю:</label>
                            <select id="select" class="form-control">
                                <option value="USD">USD — Доллар США</option>
                                <option value="EUR">EUR — Евро</option>
                                <option value="GBP">GPB — Фунт стерлингов</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <input id="input" type="number" class="form-control" autofocus="">
                        </div>
                        <div class="col">
                            <input id="result" type="number" class="form-control">
                        </div>
                    </div>
                </form>
            </div>

        </div>

    </div>

</div>

<script src="/resources/js/main.js"></script>

</body></html>