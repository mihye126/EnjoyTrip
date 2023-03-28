<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/navigation/head.jsp" %>
<SCRIPT>
    console.log("${user}")
</SCRIPT>
<body>
<%@ include file="/views/components/navigation/header.jsp" %>
<main>
    <!-- Hero -->
    <section class="section-header">
        <div class="container">
            <div class="row justify-content-center">

                <jsp:include page="/views/components/user/userInfo.jsp"/>
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
                                > ${user.id}</a>
                            </div>
                            <div class="mb-4">
                                <label for="InfoBirth">비번</label>
                                <a
                                        class="form-control"
                                        id="InfoBirth"
                                        required=""
                                > ${user.pass} </a>

                            </div>
                            <div class="mb-4">
                                <label for="InfoOne">이름</label>
                                <a
                                        class="form-control"
                                        id="InfoOne"
                                        required=""
                                > ${user.username} </a>

                            </div>
                            <div class="form-group">
                                <a href="/account/updateUser" type="submit" class="btn btn-dark" style="float:right" >수정
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

<%@ include file="/views/components/navigation/script.jsp" %>


</body>

</html>