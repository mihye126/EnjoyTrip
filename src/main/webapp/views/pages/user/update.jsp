<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/navigation/head.jsp" %>

<body>
<%@ include file="/views/components/navigation/header.jsp" %>
<main>
    <!-- Hero -->
    <section class="section-header">
        <div class="container">
            <div class="row justify-content-center">
                <!-- 사용자 정보 시작-->
                <jsp:include page="/views/components/user/userInfo.jsp"/>

                <!-- 상세정보 시작-->
                <div class="col-8 card border-gray-300 p-0 p-md-4 mb-4">
                    <div class="card-body">
                        <h3 class="h5 mb-0">사용자 정보 수정</h3>
                        <form action="/account/updateUserProcess" method="post" class="form mt-5" autocomplete="off">
                            <div class="mb-4">
                                <label for="id">사용자 ID</label><br>

                                <input type="text" class="form-control" id="id" name="id" required="" value="${user.id}" disabled />
                            </div>
                            <div class="mb-4">
                                <label for="pass">비밀번호</label><br>

                                <input type="text" class="form-control" id="pass" name="pass" required="" value="${user.pass}" />
                            </div>
                            <div class="mb-4">
                                <label for="InfoName">사용자 이름</label><br>

                                <input type="text" class="form-control" id="InfoName" required="" name="username" value="${user.username}" />
                            </div>

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
                                                <div class="modal-footer"><a href="/account/deleteAccount" type="button" class="btn btn-outline-danger">탈퇴</a>
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

<%@ include file="/views/components/navigation/script.jsp" %>


</body>

</html>