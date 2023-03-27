<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>

  <!-- Hero -->
  <section class="section-header pb-9 pb-lg-10 mb-4 mb-lg-6 bg-primary text-white">
    <div class="container">
      <div class="row justify-content-between align-items-center">
        <div class="col-12 col-lg-7">
          <h1 class="display-1 font-weight-extreme mb-4">Join our Blog</h1>
          <p class="lead mb-4 mb-lg-5 me-lg-5">
            당신만의 특별한 여행을 공유하세요!
          </p>
          <a class="btn btn-warning" href="insert.blog">Post   <i class="fa-solid fa-plus ms-2"></i></a>
        </div>
        <div class="col-12 col-md-5 d-none d-lg-block text-center"><img
                src="../../assets/img/illustrations/meditating.svg" alt="girl meditating"></div>
      </div>
    </div>
  </section>
  <section class="section section-lg line-bottom-light">
    <div class="container mt-n10 mt-lg-n12 z-2">
      <div class="row">
        <c:forEach items="${hotPlaces}" var="hotPlace">

          <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
            <c:import url="/views/components/blog-item.jsp" >
              <c:param value="${hotPlace.title}" name="title" />
              <c:param value="${hotPlace.address}" name="address" />
              <c:param value="${hotPlace.firstImage}" name="firstImage" />
              <c:param value="${hotPlace.contentID}" name="contentID" />
              <c:param value="${hotPlace.userName}" name="userName" />
            </c:import>
          </div>
        </c:forEach>

      </div>
    </div>
  </section>
</main>

<%@ include file="/views/components/script.jsp" %>


</body>

</html>