<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<style>
    .glow-on-hover {
        width: 110px;
        height: 30px;
        border: none;
        outline: none;
        color: #fff;
        background: #961eda;
        cursor: pointer;
        position: relative;
        z-index: 0;
        border-radius: 10px;
    }

    .glow-on-hover:before {
        content: '';
        background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
        position: absolute;
        top: -2px;
        left:-2px;
        background-size: 400%;
        z-index: -1;
        filter: blur(5px);
        width: calc(100% + 4px);
        height: calc(100% + 4px);
        animation: glowing 20s linear infinite;
        opacity: 0;
        transition: opacity .3s ease-in-out;
        border-radius: 10px;
    }

    .glow-on-hover:active {
        color: #961eda
    }

    .glow-on-hover:active:after {
        background: transparent;
    }

    .glow-on-hover:hover:before {
        opacity: 1;
    }

    .glow-on-hover:after {
        z-index: -1;
        content: '';
        position: absolute;
        width: 100%;
        height: 100%;
        background: #961eda;
        left: 0;
        top: 0;
        border-radius: 10px;
    }

    @keyframes glowing {
        0% { background-position: 0 0; }
        50% { background-position: 400% 0; }
        100% { background-position: 0 0; }
    }
</style>
<div class="container">
    <form:form method="post" modelAttribute="todo">
        <form:hidden path="id" />

        <fieldset class="form-group">
            <form:label path="fullName" style="color:black"><spring:message code="lang.fio" text="" /></form:label>
            <form:input path="fullName" type="tetx" class="form-control"
                        readonly="true" />
            <form:errors path="fullName" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="iin" style="color:black"><spring:message code="lang.iin" text="" /></form:label>
            <form:input path="iin" type="number" class="form-control"
                        readonly="true" />
            <form:errors path="iin" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="passport" style="color:black"><spring:message code="lang.passport" text="" /></form:label>
            <form:input path="passport" type="number" class="form-control"
                        readonly="true" />
            <form:errors path="passport" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="date" style="color:black"><spring:message code="lang.date" text="" /></form:label>
            <form:input path="date" type="date" class="form-control"
                        readonly="true" />
            <form:errors path="date" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="disc" style="color:black"><spring:message code="lang.discount" text="" /></form:label>
            <form:input path="disc" type="text" class="form-control"
                        readonly="true" />
            <form:errors path="disc" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="add_inf" style="color:black"><spring:message code="lang.add_info" text="" /></form:label>
            <form:input path="add_inf" type="text" class="form-control"
                        readonly="true" />
            <form:errors path="add_inf" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="address" style="color:black"><spring:message code="lang.address" text="" /></form:label>
            <form:input path="address" type="text" class="form-control"
                        readonly="true" />
            <form:errors path="address" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="phoneNumber" style="color:black"><spring:message code="lang.phone" text="" /></form:label> <%--Description--%>
            <form:input path="phoneNumber" type="number" class="form-control"
                        readonly="true" />
            <form:errors path="phoneNumber" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="prop" style="color:black"><spring:message code="lang.req" text="" /></form:label> <%--Description--%>
            <form:input path="prop" type="text" class="form-control"
                        readonly="true" />
            <form:errors path="prop" cssClass="text-warning" />
        </fieldset>

        <a type="button" class="btn btn-primary glow-on-hover" href="/list-todos"><spring:message code="lang.back" text="" /></a>
    </form:form>
</div>
<%@ include file="common/footer.jspf" %>