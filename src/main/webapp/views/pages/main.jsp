<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>
  <!-- Hero -->
  <section
          class="section-header overflow-hidden mt-5 pt-7 pt-lg-8 pb-9 pb-lg-12 bg-img text-white">
    <div class="container">
      <div class="row">
        <div class="col-12 text-center">

          <h1 class="fw-bolder display-2">Enjoy Trip</h1>
          <h2 class="lead fw-normal text-muted mb-4 px-lg-10">Let Enjoy Trip be your
            compass to
            discovering new horizons.</h2>
          <jsp:include page="/views/components/search.jsp" flush="false">
            <jsp:param value="${sidos}" name="sidos"/>
          </jsp:include>
        </div>
      </div>
    </div>
    </div>
  </section>


  <div class="section section-sm pb-0 mb-n4">
    <div class="container">
      <div class="row justify-content-center">
        <h3 class="text-center">어디로 떠나고 싶나요?</h3>
      </div>
    </div>
  </div>

  <!--End of Title section-->
  <div class="section section-md">
    <div class="container">
      <div class="row mb-5">

        <c:forEach items="${categories}" var="category">

          <div class="col-6 col-lg-3 mb-5">
            <a href="list.com?sidoCode=${category.code}" target="_blank"
               class="page-preview scale-up-hover-2">
              <img class="shadow-lg rounded scale"
                   src="${category.img}"
                   alt="${category.name}">
              <div class="text-center show-on-hover">
                <h3 class="h6 m-0 text-center text-white">${category.name}<span
                        class="fas fa-external-link-alt ms-2"></span></h3>
              </div>
            </a>

          </div>
        </c:forEach>


      </div>
    </div>
  </div>

  <section class="section bg-tertiary pt-0 pb-0">

    <!-- Section -->
    <div class="section section-md ">
      <div class="container">
        <div class="row justify-content-between align-items-center mb-5 mb-lg-7 text-white">
          <div class="col-lg-5 order-lg-2 mb-5 mb-lg-0">
            <h2 class="h1">Let's Go on A Trip</h2>
            <p class="mb-4 lead fw-bold">전국의 여행지를 더 보고 싶다면</p>
            <p class="mb-4">Get started building your project using a collection of over
              1000 premium web
              components such as buttons, alerts, cards, modals, and many more</p>
            <a href="list.com" class="btn btn-warning mt-2 animate-up-2">

              Show More
              <span class="me-1">
                                        <i class="fa-solid fa-angles-right"></i>
                                    </span>
            </a>
          </div>
          <div class="col-lg-6 order-lg-1"><img src="./assets/img/sections/about-us-1.jpg"
                                                alt="MapBox Leaflet.js Custom Integration Mockup">
          </div>
        </div>

      </div>
    </div>
  </section>
  <section class="section ">

    <div class="section section-sm pb-0 mb-n4 ">
      <div class="container">
        <div class="row justify-content-center">
          <h3 class="text-center">나만의 여행코스를 찾아보세요</h3>
        </div>
      </div>
    </div>

    <!-- Section -->
    <div class="section section-md">
      <div class="container">
        <div class="row">
          <div class="col-md-10 mx-auto">
            <div id="Carousel2" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100"
                       src="./assets/img/carousel/image-1.jpg"
                       alt="First slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100"
                       src="./assets/img/carousel/image-2.jpg"
                       alt="Second slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100"
                       src="./assets/img/carousel/image-3.jpg"
                       alt="Third slide">
                </div>
              </div>
              <a class="carousel-control-prev" href="#Carousel2" role="button"
                 data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#Carousel2" role="button"
                 data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

  </section>
  <!-- End of Section -->

</main>

<%@ include file="/views/components/script.jsp" %>

<%@ include file="/views/components/footer.jsp" %>

</body>

</html>