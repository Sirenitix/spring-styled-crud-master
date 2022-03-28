<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<style>
    @import url('https://fonts.googleapis.com/css?family=Montserrat|Open+Sans|Roboto');

    b {
        font-size: 20px
    }
    table {
        /*background-color: white;*/
        border-radius: 4px;
    }

    *{
        margin:0;
        padding: 0;
        outline: 0;
    }

    table{
        position: relative;
        z-index: 2;
        left: -2%;
        top: 50%;
        /*transform: translate(-50%,-50%);*/
        width: 105.8%;
        border-collapse: collapse;
        border-spacing: 0;
        box-shadow: 0 2px 15px rgba(64,64,64,.7);
        border-radius: 12px 12px 0 0;
        overflow: hidden;

    }
    td , th{
        padding: 15px 20px;
        text-align: center;


    }
    th{
        background-color: rgba(115, 6, 157, 0.79);
        color: #fafafa;
        font-family: 'Open Sans',Sans-serif;
        font-weight: 200;
        text-transform: uppercase;

    }
    tr{
        width: 100%;
        background-color: #fafafa;
        font-family: 'Montserrat', sans-serif;
    }
    tr:nth-child(even){
        background-color: #eeeeee;
    }




</style>

<div class="container">



    <table class="table table-striped">
        <thead>
        <tr>
            <th>Логин</th>
            <th>Пароль</th>
            <th>Роль</th>
            <th>Статус аккаунта</th>
        </tr>
        </thead>
        <tbody class="radius" >
        <c:forEach items="${user}" var="user_info">
            <tr>
                <td>${user_info.login}</td>
                <td>${fn:substring(user_info.password, 6, -1)}</td>
                <td>${user_info.role == "ROLE_ADMIN" ? "Админ" : "Пользователь"}</td>
                <td>${user_info.enabled == "true" ? "Активен" : "Отключен"}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

</div>
<%@ include file="common/footer.jspf" %>