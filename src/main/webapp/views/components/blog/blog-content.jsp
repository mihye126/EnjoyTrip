<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<script>
  console.log("session","${sessionScope.user.id==hotPlace.userID}")
  console.log("hotPlace","${hotPlace.userID}")

</script>

<div class="section section-sm bg-white text-black pt-0">
  <article class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-8">
        <div class="section py-0">
          <div class="container">
            <div class="row">
              <div class="col-12">
                <div id="map" style="width: 100%; height: 400px"></div>
              </div>
            </div>
          </div>
        </div>
        </p>
        <div class="row">
          <div class="col-12">
            <h5>핫플 상세</h5>
            <p>${hotPlace.address}</p>

            <p>${hotPlace.overview}</p>
          </div>
        </div>
        <c:if test="${sessionScope.user.id==hotPlace.userID}">

        <div class="row justify-content-sm-center align-items-center py-3 mt-3">
            <div class="row mx-0 px-0">
              <div class="col">
              <h6 class="fw-bolder d-inline mb-0 me-3">Delete</h6>
                <a  class="btn btn-sm me-2 btn-icon-only btn-pill btn-danger d-inline text-white"
                      aria-label="twitter social link" href="/hotPlace/delete?contentID=${hotPlace.contentID}"><i class="fa-solid fa-trash"></i></a>
              </div>
            </div>
        </div>
        </c:if>

      </div>
    </div>

    <jsp:include page="/views/components/blog/blog-share.jsp"  >
      <jsp:param value="${hotPlace}" name="hotPlace"/>
    </jsp:include>
  </article>
  <jsp:include page="/views/components/map/map-address.jsp">
    <jsp:param value="${hotPlace}" name="hotPlace"/>
  </jsp:include>
</div>
