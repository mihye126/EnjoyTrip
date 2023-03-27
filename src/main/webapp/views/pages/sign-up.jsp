<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<main>
<div>
    <!-- Section -->
    <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark" data-background="../../assets/img/background.jpg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 d-flex align-items-center justify-content-center">
                    <div class="signin-inner my-4 my-lg-0 bg-white shadow-soft border rounded border-gray-300 p-4 p-lg-5 w-100 fmxw-500">
                        <div class="text-center text-md-center mb-4 mt-md-0">
                            <h1 class="mb-0 h3">회원가입</h1>
                        </div>
                        <form action="register.com">
                            <div class="form-group mb-4">
                                <label for="name">이름</label>
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon2"><span class="fas fa-envelope"></span></span>
                                    <input type="text" class="form-control" placeholder="홍길동" id="name" name="name" required>
                                </div>
                            </div>
                            <!-- Form -->
                            <div class="form-group mb-4">
                                <label for="id">아이디</label>
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon3"><span class="fas fa-envelope"></span></span>
                                    <input type="text" class="form-control" placeholder="example" id="id" name="id" required>
                                </div>
                            </div>
                            <!-- End of Form -->
                            <div class="form-group">
                                <!-- Form -->
                                <div class="form-group mb-4">
                                    <label for="password">비밀번호</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon4"><span class="fas fa-unlock-alt"></span></span>
                                        <input type="password" placeholder="Password" class="form-control" id="password" name="pass" required>
                                    </div>
                                </div>
                                <!-- End of Form -->
                                <!-- Form -->
                                <div class="form-group mb-4">
                                    <label for="password_confirm">비밀번호 확인</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon5"><span class="fas fa-unlock-alt"></span></span>
                                        <input type="password" placeholder="Confirm Password" class="form-control" id="password_confirm" name="passConfirm" required>
                                    </div>
                                </div>
                                <!-- End of Form -->
                                <div class="form-check mb-4">
                                    <input class="form-check-input" type="checkbox" value="" id="terms" name="agree">
                                    <label class="form-check-label" for="terms">
                                        I agree to the <a href="#">terms and conditions</a>
                                    </label>
                                </div>
                            </div>
                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary">회원가입</button>
                            </div>
                        </form>

                        <div class="d-flex justify-content-center align-items-center mt-4">
                                <span class="fw-normal">
                                    이미 계정이 있다면?
                                    <a href="sign-in.com" class="fw-bold text-underline">로그인</a>
                                </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
</main>

<%@ include file="/views/components/script.jsp" %>


</body>

</html>