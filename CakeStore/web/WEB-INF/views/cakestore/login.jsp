<%-- 
    Document   : login
    Created on : Feb 25, 2023, 10:30:40 AM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value="/css/login.css" />" type="text/css">
<section class="vh-100" 
         style="
         background-image: url('<c:url value="/img/login/383127.jpg" />');
         background-repeat: no-repeat;
         background-size: cover;
         ">
    <div class="container" style="  display: flex;
         justify-content: center;
         align-items:center !important;
         height: 100vh;">
        <div class="row">
            <div class="col">

            </div>
            <div class="col cen">
                <div class="form">
                    <div class="btn">
                        <button class="loginBtn">LOG IN</button>
                        <button class="signUpBtn">SIGN UP</button>
                    </div>
                    <form class="signUp" action="" method="get">
                        <div class="formGroup">
                            <input type="text" id="userName" placeholder="User Name" autocomplete="off">
                        </div>
                        <div class="formGroup">
                            <input type="email" placeholder="Email ID" name="email" required autocomplete="off">
                        </div>
                        <div class="formGroup">
                            <input type="password" id="password" placeholder="Password" required autocomplete="off">
                        </div>
                        <div class="formGroup">
                            <input type="password" id="confirmPassword" placeholder="Confirm Password" required autocomplete="off">
                        </div>
                        <div class="checkBox">
                            <input type="checkbox" name="checkbox" id="checkbox">
                            <span class="text">I agree with term & conditions</span>
                        </div>
                        <div class="formGroup">
                            <button type="button" class="btn2">REGISTER</button>
                        </div>

                    </form>

                    <!------ Login Form -------- -->
                    <form class="login" action="" method="get">

                        <div class="formGroup">
                            <input type="email" placeholder="Email ID" name="email" required autocomplete="off">
                        </div>
                        <div class="formGroup">
                            <input type="password" id="password" placeholder="Password" required autocomplete="off">

                        </div>
                        <div class="checkBox">
                            <input type="checkbox" name="checkbox" id="checkbox">
                            <span class="text">Keep me signed in on this device</span>
                        </div>
                        <div class="formGroup">
                            <button type="button" class="btn2">REGISTER</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
