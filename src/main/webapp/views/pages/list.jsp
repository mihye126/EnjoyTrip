<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>
    <!-- Hero -->


    <section class="section-header overflow-hidden ">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">

                    <h1 class="display-2 mb-3">어디로 떠나고 싶나요?</h1>
                    <!-- Button Modal -->
                    <div class="row align-items-center">
                    <jsp:include page="/views/components/search.jsp" flush="false">
                        <jsp:param value="${sidos}" name="sidos"/>
                    </jsp:include>
                    </div>
                    <div class="row align-items-center pt-4">
                        <!-- kakao map start -->
                        <div id="map"  style="width: 100%; height: 400px"></div>
                        <!-- kakao map end -->

                    </div>
                </div>
            </div>


        </div>
    </section>




    <div class="section section-md pt-4 mt-3">
        <div class="container">
            <div class="row mb-4 mb-lg-5">
                <div class="col-12">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>대표이미지</th>
                            <th>관광지명</th>
                            <th>주소</th>
                            <th>위도</th>
                            <th>경도</th>
                        </tr>
                        </thead>
                        <tbody id="trip-list">
                        <c:forEach items="${attractions}" var="attraction">
                            <tr>
                                <td><img src="${attraction.firstImage}"/></td>
                                <td><a href="read?num=${attraction.contentID }">${attraction.title}</a></td>
                                <td>${attraction.addr1 }</td>
                                <td>${attraction.latitude}</td>
                                <td>${attraction.longitude }</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>


            </div>
        </div>
    </div>

    <div class="section section-md pt-4 mt-3">
        <div class="container">
            <div class="row mb-4 mb-lg-5">
                <div class="col-12">
                    <div class="d-flex justify-content-center">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                        </nav>
                    </div>

                </div>

            </div>
        </div>
    </div>


</main>

<%@ include file="/views/components/script.jsp" %>
<%@ include file="/views/components/map.jsp" %>


</body>

</html>