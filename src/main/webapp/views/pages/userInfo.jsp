<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>
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
                            <a href="logout.com" class="btn btn-gray-300 btn-xs"
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