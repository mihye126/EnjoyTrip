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
                                class="card-header bg-white border-0 text-center d-flex flex-row flex-lg-column align-items-center justify-content-center px-1 px-lg-4">
                            <div class="profile-thumbnail dashboard-avatar mx-lg-auto me-3">
                                <img src="../../assets/img/team/profile-picture-3.jpg"
                                     class="card-img-top rounded-circle border-white" alt="Bonnie Green Portrait" />
                            </div>
                            <span class="h5 my-0 my-lg-3 me-3 me-lg-0">Hi, ${oneUser.id} !</span>
                            <a href=logout.com" class="btn btn-gray-300 btn-xs"><span class="me-2"><span
                                    class="fas fa-sign-out-alt"></span></span>Sign Out</a>
                        </div>
                        <div class="card-body p-2 d-none d-lg-block">
                            <div class="list-group dashboard-menu list-group-sm">
                                <a href="./account.html" class="d-flex list-group-item border-0 list-group-item-action active">User
                                </a><a href="./settings.html"
                                       class="d-flex list-group-item border-0 list-group-item-action">Settings</a><a href="./my-items.html"
                                                                                                                     class="d-flex list-group-item border-0 list-group-item-action">My Items</a><a href="./security.html"
                                                                                                                                                                                                   class="d-flex list-group-item border-0 list-group-item-action">Security</a><a href="./billing.html"
                                                                                                                                                                                                                                                                                 class="d-flex list-group-item border-0 list-group-item-action">Billing</a><a href="./messages.html"
                                                                                                                                                                                                                                                                                                                                                              class="d-flex list-group-item border-0 list-group-item-action border-0">Messages</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 상세정보 시작-->
                <div class="col-8 card border-gray-300 p-0 p-md-4 mb-4">
                    <div class="card-body">
                        <h3 class="h5 mb-0">사용자 정보 수정</h3>
                        <form action="modifySuccess.com" method="post" class="form mt-5" autocomplete="off">
                            <div class="mb-4">
                                <label for="id">사용자 ID</label><br>

                                <input type="text" class="form-control" id="id" name="id" required="" value="${oneUser.id}" />
                            </div>
                            <div class="mb-4">
                                <label for="pass">비밀번호</label><br>

                                <input type="text" class="form-control" id="pass" name="pass" required="" value="${oneUser.pass}" />
                            </div>
                            <div class="mb-4">
                                <label for="InfoName">사용자 이름</label><br>

                                <input type="text" class="form-control" id="InfoName" required="" name="username" value="${oneUser.username}" />
                            </div>
<%--                            <div class="mb-4">--%>
<%--                                <label for="InfoBirth">생년월일</label>--%>
<%--                                <input type="text" class="form-control" id="InfoBirth" required="" value="92.08.04" />--%>

<%--                            </div>--%>
<%--                            <div class="mb-4">--%>
<%--                                <label for="InfoOne">한 줄 소개</label>--%>
<%--                                <input type="text" class="form-control" id="InfoOne" required="" value="SSAFY 9기 서울 14반입니다!" />--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-md-2" style="float:left">
                                    <div class="d-grid">
                                        <button type="button" class="btn btn-danger mb-3" data-bs-toggle="modal"
                                                data-bs-target="#modal-default">탈퇴</button></div>
                                    <div class="modal fade" id="modal-default" tabindex="-1" aria-labelledby="modal-default"
                                         style="display: none;" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h2 class="h6 modal-title">정말로 탈퇴하시겠습니까?</h2><button type="button" class="btn-close"
                                                                                                         data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-footer"><a href="delete.com" type="button" class="btn btn-outline-danger">탈퇴</a>
                                                    <button type="button" class="btn btn-link ms-auto" data-bs-dismiss="modal">아니오</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-dark col-md-2" style="float:right">저장</button>
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