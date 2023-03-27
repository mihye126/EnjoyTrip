<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<c:set var="attraction" value="${attraction}"/>
<main>
    <section class="section-header pb-0">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-8 text-center"><h1 class="display-2 mb-3">${attraction.title}</h1>
            </div>
        </div>
    </section>
  <div class="section section-md pt-4 mt-3">
    <div class="container">
        <!-- Button Modal -->
        <div class="row align-items-center pt-4 mb-3">
            <!-- kakao map start -->
            <div class="col">

            <div id="map"  style="width: 100%; height: 400px"></div>
            <!-- kakao map end -->
            </div>
            <div class="col">
                <table class="table table-hover" style="table-layout: fixed">
                    <tbody >
                    <tr>
                        <td colspan="1"><b>대표 이미지</b></td> <td  colspan="3"><img src="${attraction.firstImage}"  style="max-width: 350px; height: 100%"/></td>
                    </tr>
                    <tr>
                        <td  colspan="1"><b>주소</b></td> <td  colspan="3">${attraction.address}</td>
                    </tr>
                    <tr >
                        <td><b>위도</b></td> <td><fmt:formatNumber value="${attraction.latitude}" pattern=".00"/></td>
                        <td><b>경도</b></td> <td><fmt:formatNumber value="${attraction.longitude}" pattern=".00"/></td>
                    </tr>

                    </tbody>
                </table>

            </div>
        </div>
            <div class="row justify-content-center pt-3">
                <div class="col-12 ">
            <p>${attraction.overview}</p>
                </div>
            </div>
    </div>

  </div>
  </div>

</main>

<%@ include file="/views/components/script.jsp" %>
<%@ include file="/views/components/map.jsp" %>
<%@ include file="/views/components/footer.jsp" %>


</body>

</html>