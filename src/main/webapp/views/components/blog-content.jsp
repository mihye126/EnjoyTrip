<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<c:set value="${address}" var="address"/>
<c:set value="${content}" var="content"/>

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
            <p>${address}</p>

            <p>${content}</p>
          </div>
        </div>


      </div>
    </div>

    <jsp:include page="/views/components/blog-share.jsp"/>
  </article>
  <jsp:include page="/views/components/map-search.jsp" flush="false">
    <jsp:param value="${address}" name="address"/>
  </jsp:include>
</div>
