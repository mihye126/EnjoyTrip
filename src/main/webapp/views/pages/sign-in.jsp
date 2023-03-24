<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>

    <div class="preloader bg-dark flex-column justify-content-center align-items-center">
        <svg id="loader-logo" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 64 78.4">
            <path fill="#fff" d="M10,0h1.2V11.2H0V10A10,10,0,0,1,10,0Z"/>
            <rect fill="none" stroke="#fff" stroke-width="11.2" x="40" y="17.6" width="0" height="25.6"/>
            <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="11.2" x="23" y="35.2" width="0" height="25.6"/>
            <path fill="#fff" d="M52.8,35.2H64V53.8a7,7,0,0,1-7,7H52.8V35.2Z"/>
            <rect fill="none" stroke="#fff" stroke-width="11.2" x="6" y="52.8" width="0" height="25.6"/>
            <path fill="#fff" d="M52.8,0H57a7,7,0,0,1,7,7h0v4.2H52.8V0Z"/>
            <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="11.2" x="57.8" y="17.6" width="0" height="11.2"/>
            <rect fill="none" stroke="#fff" stroke-width="11.2" x="6" y="35.2" width="0" height="11.2"/>
            <rect fill="none" stroke="#fff" stroke-width="11.2" x="40.2" y="49.6" width="0" height="11.2"/>
            <path fill="#fff" d="M17.6,67.2H28.8v1.2a10,10,0,0,1-10,10H17.6V67.2Z"/>
            <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="28.8" x="31.6" width="0" height="11.2"/>
            <rect fill="none" stroke="#fff" x="14" stroke-width="28.8" y="17.6" width="0" height="11.2"/>
        </svg>
    </div>

    <!-- Section -->
    <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark" data-background="../../assets/img/background.jpg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 d-flex align-items-center justify-content-center">
                    <div class="signin-inner my-4 my-lg-0 bg-white shadow-soft border rounded border-gray-300 p-4 p-lg-5 w-100 fmxw-500">
                        <div class="text-center text-md-center mb-4 mt-md-0">
                            <h1 class="mb-0 h3">Sign in to our platform</h1>
                        </div>
                        <form action="#" class="mt-4">
                            <!-- Form -->
                            <div class="form-group mb-4">
                                <label for="email">Your Email</label>
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon1"><span class="fas fa-envelope"></span></span>
                                    <input type="email" class="form-control" placeholder="example@company.com" id="email" required>
                                </div>
                            </div>
                            <!-- End of Form -->
                            <div class="form-group">
                                <!-- Form -->
                                <div class="form-group mb-4">
                                    <label for="password">Your Password</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon2"><span class="fas fa-unlock-alt"></span></span>
                                        <input type="password" placeholder="Password" class="form-control" id="password" required>
                                    </div>
                                </div>
                                <!-- End of Form -->
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <div class="form-check mb-0">
                                        <input class="form-check-input" type="checkbox" value="" id="remember">
                                        <label class="form-check-label mb-0" for="remember">
                                            Remember me
                                        </label>
                                    </div>
                                    <div><a href="./password.html" class="small text-right">Lost password?</a></div>
                                </div>
                            </div>
                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary">Sign in</button>
                            </div>
                        </form>
                        <div class="mt-3 mb-4 text-center">
                            <span class="fw-normal">or login with</span>
                        </div>
                        <div class="btn-wrapper my-4 text-center">
                            <a href="#" class="btn btn-icon-only btn-pill btn-outline-gray-300 text-facebook me-2" aria-label="facebook button" title="facebook button">
                                <span aria-hidden="true" class="fab fa-facebook-f"></span>
                            </a>
                            <a href="#" class="btn btn-icon-only btn-pill btn-outline-gray-300 text-twitter me-2" aria-label="twitter button" title="twitter button">
                                <span aria-hidden="true" class="fab fa-twitter"></span>
                            </a>
                            <a href="#" class="btn btn-icon-only btn-pill btn-outline-gray-300 text-facebook" aria-label="github button" title="github button">
                                <span aria-hidden="true" class="fab fa-github"></span>
                            </a>
                        </div>
                        <div class="d-flex justify-content-center align-items-center mt-4">
                                <span class="fw-normal">
                                    Not registered?
                                    <a href="./sign-up.html" class="fw-bold text-underline">Create account</a>
                                </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>


<%@ include file="/views/components/script.jsp" %>


</body>

</html>