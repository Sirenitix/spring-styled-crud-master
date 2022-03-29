<%--
  Created by IntelliJ IDEA.
  User: suleev
  Date: 2/5/2022
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<style>
    * {
        box-sizing: border-box;
    }

    form {
        padding: 20px;
    }
    #checksField {
        display: none;
        background: transparent;
        color: #000;
        position: relative;
        padding: 20px;
        margin-top: 10px;
    }
    #checksField p {
        padding: 10px 35px;
        font-size: 18px;
    }
    .correct {
        color: rgb(28, 0, 128);
    }
    .correct:before {
        position: relative;
        left: -35px;
        content: "✔";
    }
    .wrong {
        color: red;
    }
    .wrong:before {
        position: relative;
        left: -35px;
        content: "✖";
    }

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
    <form:form method="post" modelAttribute="user">


        <fieldset class="form-group">
            <form:label path="login" style="color:black;"><spring:message code="lang.login" text="" /></form:label>
            <form:input path="login"  type="text" class="form-control"
                        required="required" />
            <form:errors path="login" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="password" style="color:black;"><spring:message code="lang.password" text="" /></form:label>
            <form:input id="pass" path="password" type="text" class="form-control"
                        required="required" />
            <form:errors path="password" cssClass="text-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="passwordChecker" style="color:black"><spring:message code="lang.re_enter_password" text="" /></form:label>
            <form:input id="pass1" path="passwordChecker" type="text" class="form-control"
                        required="required" />
            <form:errors path="passwordChecker" cssClass="text-warning" />
        </fieldset>


<%--        <button type="submit" class="btn btn-success"></button>--%>

        <button class="glow-on-hover" type="submit"><spring:message code="lang.add" text="" /></button>
        <br>
        <c:if test="${not empty error}">
            <f:verbatim><br /></f:verbatim>
            <h3>${error}</h3>
        </c:if>

        <div id="checksField">
            <h3>Password must contain the following:</h3>
            <p id="letter" class="wrong">A <b>lowercase</b> letter</p>
            <p id="capital" class="wrong">A <b>capital (uppercase)</b>letter</p>
            <p id="number" class="wrong">A <b>number</b></p>
        </div>

        <script>
            var myInput = document.getElementById("pass");
            var myInput1 = document.getElementById("pass1");
            var letter = document.getElementById("letter");
            var capital = document.getElementById("capital");
            var number = document.getElementById("number");
            myInput.onfocus = function() {
                document.getElementById("checksField").style.display = "block";
            };
            myInput.onblur = function() {
                document.getElementById("checksField").style.display = "none";
            };
            myInput.onkeyup = function() {
                var lowerCaseLetters = /[a-z]/g;
                if (myInput.value.match(lowerCaseLetters)) {
                    letter.classList.remove("wrong");
                    letter.classList.add("correct");
                } else {
                    letter.classList.remove("correct");
                    letter.classList.add("wrong");
                }
                var upperCaseLetters = /[A-Z]/g;
                if (myInput.value.match(upperCaseLetters)) {
                    capital.classList.remove("wrong");
                    capital.classList.add("correct");
                } else {
                    capital.classList.remove("correct");
                    capital.classList.add("wrong");
                }
                var numbers = /[0-9]/g;
                if (myInput.value.match(numbers)) {
                    number.classList.remove("wrong");
                    number.classList.add("correct");
                } else {
                    number.classList.remove("correct");
                    number.classList.add("wrong");
                }


            };

        </script>



    </form:form>

</div>
<%@ include file="common/footer.jspf" %>