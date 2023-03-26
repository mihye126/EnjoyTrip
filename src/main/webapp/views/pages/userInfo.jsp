<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>
    <div
            class="preloader bg-dark flex-column justify-content-center align-items-center"
    >
        <svg
                id="loader-logo"
                xmlns="http://www.w3.org/2000/svg"
                width="50"
                height="50"
                viewBox="0 0 64 78.4"
        >
            <path fill="#fff" d="M10,0h1.2V11.2H0V10A10,10,0,0,1,10,0Z" />
            <rect
                    fill="none"
                    stroke="#fff"
                    stroke-width="11.2"
                    x="40"
                    y="17.6"
                    width="0"
                    height="25.6"
            />
            <rect
                    fill="none"
                    stroke="#fff"
                    stroke-opacity="0.4"
                    stroke-width="11.2"
                    x="23"
                    y="35.2"
                    width="0"
                    height="25.6"
            />
            <path fill="#fff" d="M52.8,35.2H64V53.8a7,7,0,0,1-7,7H52.8V35.2Z" />
            <rect
                    fill="none"
                    stroke="#fff"
                    stroke-width="11.2"
                    x="6"
                    y="52.8"
                    width="0"
                    height="25.6"
            />
            <path fill="#fff" d="M52.8,0H57a7,7,0,0,1,7,7h0v4.2H52.8V0Z" />
            <rect
                    fill="none"
                    stroke="#fff"
                    stroke-opacity="0.4"
                    stroke-width="11.2"
                    x="57.8"
                    y="17.6"
                    width="0"
                    height="11.2"
            />
            <rect
                    fill="none"
                    stroke="#fff"
                    stroke-width="11.2"
                    x="6"
                    y="35.2"
                    width="0"
                    height="11.2"
            />
            <rect
                    fill="none"
                    stroke="#fff"
                    stroke-width="11.2"
                    x="40.2"
                    y="49.6"
                    width="0"
                    height="11.2"
            />
            <path
                    fill="#fff"
                    d="M17.6,67.2H28.8v1.2a10,10,0,0,1-10,10H17.6V67.2Z"
            />
            <rect
                    fill="none"
                    stroke="#fff"
                    stroke-opacity="0.4"
                    stroke-width="28.8"
                    x="31.6"
                    width="0"
                    height="11.2"
            />
            <rect
                    fill="none"
                    stroke="#fff"
                    x="14"
                    stroke-width="28.8"
                    y="17.6"
                    width="0"
                    height="11.2"
            />
        </svg>
    </div>

    <!-- Hero -->
    <section class="section-header">
        <div class="container">
            <div class="row justify-content-center">
                <!-- 사용자 정보 시작-->
                <div class="col-4 col-lg-4 mb-3 ">
                    <div class="card border-gray-300 p-2">
                        <div
                                class="card-header bg-white border-0 text-center d-flex flex-row flex-lg-column align-items-center justify-content-center px-1 px-lg-4"
                        >
                            <div
                                    class="profile-thumbnail dashboard-avatar mx-lg-auto me-3"
                            >
                                <img
                                        src="../../assets/img/team/profile-picture-3.jpg"
                                        class="card-img-top rounded-circle border-white"
                                        alt="Bonnie Green Portrait"
                                />
                            </div>
                            <span class="h5 my-0 my-lg-3 me-3 me-lg-0"
                            >Hi, ${oneUser.id}!</span
                            >
                            <a href="#" class="btn btn-gray-300 btn-xs"
                            ><span class="me-2"
                            ><span class="fas fa-sign-out-alt"></span></span
                            >Sign Out</a
                            >
                        </div>
                        <div class="card-body p-2 d-none d-lg-block">
                            <div class="list-group dashboard-menu list-group-sm">
                                <a
                                        href="./account.html"
                                        class="d-flex list-group-item border-0 list-group-item-action active"
                                >User </a
                                ><a
                                    href="./settings.html"
                                    class="d-flex list-group-item border-0 list-group-item-action"
                            >Settings</a
                            ><a
                                    href="./my-items.html"
                                    class="d-flex list-group-item border-0 list-group-item-action"
                            >My Items</a
                            ><a
                                    href="./security.html"
                                    class="d-flex list-group-item border-0 list-group-item-action"
                            >Security</a
                            ><a
                                    href="./billing.html"
                                    class="d-flex list-group-item border-0 list-group-item-action"
                            >Billing</a
                            ><a
                                    href="./messages.html"
                                    class="d-flex list-group-item border-0 list-group-item-action border-0"
                            >Messages</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 상세정보 시작-->
                <div class="col-8 card border-gray-300 p-0 p-md-4 mb-4">
                    <div class="card-body">

                        <h3 class="h5 mb-0">사용자 정보</h3>
                        <form class="form mt-5" autocomplete="off">
                            <div class="mb-4">
                                <label for="InfoName">사용자 ID</label><br>

                                <a
                                        class="form-control"
                                        id="InfoName"
                                        required=""
                                > ${oneUser.id}</a>
                            </div>
                            <div class="mb-4">
                                <label for="InfoBirth">비번</label>
                                <a
                                        class="form-control"
                                        id="InfoBirth"
                                        required=""
                                > ${oneUser.pass} </a>

                            </div>
                            <div class="mb-4">
                                <label for="InfoOne">이름</label>
                                <a
                                        class="form-control"
                                        id="InfoOne"
                                        required=""
                                > ${oneUser.username} <a>

                            </div>
                            <div class="form-group">
                                <a href="userModify.com" type="submit" class="btn btn-dark" style="float:right" >수정
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- 상세정보 끝-->

                <!-- 사용자 정보 끝-->
            </div>
        </div>
        </div>
    </section>

</main>

<%@ include file="/views/components/script.jsp" %>


</body>

</html>