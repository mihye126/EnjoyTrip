<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>
    <!-- Hero -->

    <c:set var="currentPage" value="${param.pageNumber != null ? param.pageNumber : 1}" />
    <c:set var="startPage" value="${(currentPage - 1) / 5 * 5 + 1}" />
    <c:set var="endPage" value="${startPage + 4}" />
    <c:set var="startContent" value="${(currentPage - 1) * 10}" />
    <c:set var="endContent" value="${startContent + 9}" />
    <section class="section-header overflow-hidden pb-0 my-5">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">

                    <h1 class="display-2 mb-3">어디로 떠나고 싶나요?</h1>
                    <p> 여행을 떠나요</p>
                </div>
            </div>


        </div>
    </section>




    <div class="section section-md pt-4 mt-3">
        <div class="container">
            <div class="row mb-4 mb-lg-5">

            <jsp:include page="/views/components/search.jsp" flush="false">
                <jsp:param value="${sidos}" name="sidos"/>
            </jsp:include>
            </div>
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

                        <c:forEach items="${attractions}" var="attraction" begin="${startContent}" end="${endContent}">

                        <tr>
                                <td><img style="height: 100px;width: 200px" src="${attraction.firstImage}"/></td>
                                <td><a href="read.com?contentID=${attraction.contentID}">${attraction.title}</a></td>
                                <td>${attraction.address}</td>
                                <td><fmt:formatNumber value="${attraction.latitude}" pattern=".00"/></td>
                                <td><fmt:formatNumber value="${attraction.longitude}" pattern=".00"/></td>
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

                                <c:if test="${endPage > totalPage}">
                                    <c:set var="endPage" value="${totalPage}" />
                                </c:if>
                                <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                    <a class="page-link" href="?sidoCode=${param.sidoCode}&contentTypeID=${param.contentTypeID}&pageNumber=${currentPage - 1}" tabindex="-1">Previous</a>
                                </li>
                                <c:forEach var="pageNumber" begin="${startPage}" end="${endPage}">
                                    <c:set var="startContent" value="${(pageNumber - 1) * 10}" />
                                    <c:set var="endContent" value="${startContent + 9}" />
                                    <li class="page-item ${currentPage == pageNumber ? 'active' : ''}">
                                        <a class="page-link" href="?sidoCode=${param.sidoCode}&contentTypeID=${param.contentTypeID}&pageNumber=${pageNumber}">
                                                ${pageNumber}
                                        </a>
                                    </li>
                                </c:forEach>
                                <li class="page-item ${currentPage == totalPage ? 'disabled' : ''}">
                                    <a class="page-link" href="?sidoCode=${param.sidoCode}&contentTypeID=${param.contentTypeID}&pageNumber=${currentPage + 1}">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                </div>

            </div>
        </div>
    </div>


</main>

<%@ include file="/views/components/script.jsp" %>


</body>

</html>