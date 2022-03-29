<%@ page language="java" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>

    /* BASIC */

    html {
        background-color: #73069d;
    }

    body {
        font-family: "Poppins", sans-serif;
        height: 100vh;
    }

    a {
        color: rgba(115, 6, 157, 0.79);
        display:inline-block;
        text-decoration: none;
        font-weight: 400;
    }

    h2 {
        text-align: center;
        font-size: 16px;
        font-weight: 600;
        text-transform: uppercase;
        display:inline-block;
        margin: 40px 8px 10px 8px;
        color: #cccccc;
    }



    /* STRUCTURE */

    .wrapper {
        display: flex;
        align-items: center;
        flex-direction: column;
        justify-content: center;
        width: 100%;
        min-height: 100%;
        padding: 20px;
    }

    #formContent {
        -webkit-border-radius: 10px 10px 10px 10px;
        border-radius: 10px 10px 10px 10px;
        background: #fff;
        padding: 30px;
        width: 90%;
        max-width: 450px;
        position: relative;
        padding: 0px;
        -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        text-align: center;
    }

    #formFooter {
        background-color: #f6f6f6;
        border-top: 1px solid #dce8f1;
        padding: 25px;
        text-align: center;
        -webkit-border-radius: 0 0 10px 10px;
        border-radius: 0 0 10px 10px;
    }



    /* TABS */

    h2.inactive {
        color: #cccccc;
    }

    h2.active {
        color: #0d0d0d;
        border-bottom: 2px solid #73069d;
    }



    /* FORM TYPOGRAPHY*/

    input[type=button], input[type=submit], input[type=reset]  {
        background-color: #73069d;
        border: none;
        color: white;
        padding: 15px 80px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        text-transform: uppercase;
        font-size: 13px;
        -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
        box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
        -webkit-border-radius: 5px 5px 5px 5px;
        border-radius: 5px 5px 5px 5px;
        margin: 5px 20px 40px 20px;
        -webkit-transition: all 0.3s ease-in-out;
        -moz-transition: all 0.3s ease-in-out;
        -ms-transition: all 0.3s ease-in-out;
        -o-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
    }

    input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
        background-color: rgba(115, 6, 157, 0.73);
    }

    input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
        -moz-transform: scale(0.95);
        -webkit-transform: scale(0.95);
        -o-transform: scale(0.95);
        -ms-transform: scale(0.95);
        transform: scale(0.95);
    }

    input[type=text] {
        background-color: #f6f6f6;
        border: none;
        color: #0d0d0d;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 5px;
        width: 85%;
        border: 2px solid #f6f6f6;
        -webkit-transition: all 0.5s ease-in-out;
        -moz-transition: all 0.5s ease-in-out;
        -ms-transition: all 0.5s ease-in-out;
        -o-transition: all 0.5s ease-in-out;
        transition: all 0.5s ease-in-out;
        -webkit-border-radius: 5px 5px 5px 5px;
        border-radius: 5px 5px 5px 5px;
    }

    input[type=text]:focus {
        background-color: #fff;
        border-bottom: 2px solid #73069d;
    }

    input[type=text]:placeholder {
        color: #cccccc;
    }



    /* ANIMATIONS */

    /* Simple CSS3 Fade-in-down Animation */
    .fadeInDown {
        -webkit-animation-name: fadeInDown;
        animation-name: fadeInDown;
        -webkit-animation-duration: 1s;
        animation-duration: 1s;
        -webkit-animation-fill-mode: both;
        animation-fill-mode: both;
    }

    @-webkit-keyframes fadeInDown {
        0% {
            opacity: 0;
            -webkit-transform: translate3d(0, -100%, 0);
            transform: translate3d(0, -100%, 0);
        }
        100% {
            opacity: 1;
            -webkit-transform: none;
            transform: none;
        }
    }

    @keyframes fadeInDown {
        0% {
            opacity: 0;
            -webkit-transform: translate3d(0, -100%, 0);
            transform: translate3d(0, -100%, 0);
        }
        100% {
            opacity: 1;
            -webkit-transform: none;
            transform: none;
        }
    }

    /* Simple CSS3 Fade-in Animation */
    @-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
    @-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
    @keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

    .fadeIn {
        opacity:0;
        -webkit-animation:fadeIn ease-in 1;
        -moz-animation:fadeIn ease-in 1;
        animation:fadeIn ease-in 1;

        -webkit-animation-fill-mode:forwards;
        -moz-animation-fill-mode:forwards;
        animation-fill-mode:forwards;

        -webkit-animation-duration:1s;
        -moz-animation-duration:1s;
        animation-duration:1s;
    }

    .fadeIn.first {
        -webkit-animation-delay: 0.4s;
        -moz-animation-delay: 0.4s;
        animation-delay: 0.4s;
    }

    .fadeIn.second {
        -webkit-animation-delay: 0.6s;
        -moz-animation-delay: 0.6s;
        animation-delay: 0.6s;
    }

    .fadeIn.third {
        -webkit-animation-delay: 0.8s;
        -moz-animation-delay: 0.8s;
        animation-delay: 0.8s;
    }

    .fadeIn.fourth {
        -webkit-animation-delay: 1s;
        -moz-animation-delay: 1s;
        animation-delay: 1s;
    }

    /* Simple CSS3 Fade-in Animation */
    .underlineHover:after {
        display: block;
        left: 0;
        bottom: -10px;
        width: 0;
        height: 2px;
        background-color: #56baed;
        content: "";
        transition: width 0.2s;
    }

    .underlineHover:hover {
        color: #0d0d0d;
    }

    .underlineHover:hover:after{
        width: 100%;
    }



    /* OTHERS */

    *:focus {
        outline: none;
    }

    #icon {
        width:60%;
    }

    #div{
        font-size: 5rem;
        text-align: center;
        height:10vh;
        line-height: 5vh;
        color: #fcedd8;
        font-family: 'Niconne', cursive;
        font-weight: 350;
        text-shadow: 5px 5px 0px #f93dff,
        5px 5px 0px #efa032,
        10px 10px 0px #46b59b,
        15px 15px 0px #00fc70,
        20px 20px 0px #73069d,
        25px 25px 0px #743dff
        /*30px 30px 0px #c11a2b,*/
        /*35px 35px 0px #c11a2b,*/
        /*40px 40px 0px #c11a2b;*/
    }
    @import url(https://fonts.googleapis.com/css?family=Open+Sans);

    body {
        background: black;
        /*font-family: "Open Sans",  Impact;*/
    }

    .area {
        text-align: center;
        font-size: 6.5em;
        color: white;
        letter-spacing: -7px;
        font-weight: 700;
        text-transform: uppercase;
        animation: blur .75s ease-out infinite;
        text-shadow: 0px 0px 5px #fff, 0px 0px 7px #fff;
    }

    @keyframes blur {
        from {
            text-shadow:0px 0px 10px #fff,
            0px 0px 10px #fff,
            0px 0px 25px #fff,
            0px 0px 25px #fff,
            0px 0px 25px #fff,
            0px 0px 25px #fff,
            0px 0px 25px #fff,
            0px 0px 25px #fff,
            0px 0px 50px #fff,
            0px 0px 50px #fff,
            0px 0px 50px #7B96B8,
            0px 0px 150px #7B96B8,
            0px 10px 100px #7B96B8,
            0px 10px 100px #7B96B8,
            0px 10px 100px #7B96B8,
            0px 10px 100px #7B96B8,
            0px -10px 100px #7B96B8,
            0px -10px 100px #7B96B8;
        }
    }


</style>

<title>Азия Строй</title>
<div class="wrapper fadeInDown">
    <div id="formContent" style="background-color:black">
        <!-- Tabs Titles -->
<br>
        <br>
        <div class="area">Login  ↓here↓</div>
        <br>
        <br>

        <!-- Icon -->
<%--        <div class="fadeIn first">--%>
<%--            <img src="https://cdn1.flamp.ru/329a1efd7ff012b06bd061b413dae970.jpg" width="225" height="250"  />--%>
<%--        </div>--%>

        <!-- Login Form -->
        <form method="POST" action="/" class="form-signin">
            <input type="text" style="background-color:black; color:white" id="login" class="fadeIn second" name="username" placeholder="Логин">
            <input type="text" style="background-color:black; color:white" id="password" class="fadeIn third" name="password" placeholder="Пароль">
            <br>
            <br>
            <input type="submit" class="fadeIn fourth" value="Войти">
        </form>

        <!-- Remind Passowrd -->


    </div>
</div>