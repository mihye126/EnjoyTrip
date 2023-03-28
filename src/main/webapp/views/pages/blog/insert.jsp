<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/navigation/head.jsp" %>

<body>
<%@ include file="/views/components/navigation/header.jsp" %>
<c:set var="hotPlace" value="${hotPlace}"/>
<main>
    <section class="section-header pb-0">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-8 text-center"><h2 class="display-2 mb-3">나만의 핫플레이스를
                    입력해보세요!</h2>
                </div>
            </div>
    </section>

    <section class="section section-lg pt-6">
        <div class="container">
            <div class="row justify-content-center mb-5 mb-lg-6">
                <div class="col-12 col-lg-8">
                    <div class="card border-0 p-2 p-md-3 p-lg-5">
                        <div class="card-body px-0 pt-0">
                            <form action="/hotPlace/insertProcess" method="post">
                              <div class="mb-4">
                                <label for="name">대표 이미지</label>
                                <div class="input-group">
                                  <input type="file" class="form-control" placeholder="대표 이미지를 입력해주세요" id="firstImage" >
                                </div>
                              </div>
                                <div class="mb-4">
                                  <label for="name">핫플 이름</label>
                                    <div class="input-group">
                                      <input type="text" class="form-control" placeholder="핫플 이름을 입력해주세요" id="name" required="" name="title">
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label for="search-content-id">장소유형</label>
                                    <div class="input-group">
                                      <select class="form-select" id="search-content-id"
                                              aria-label="검색 할 지역 선택" name="contentTypeID">
                                      <option value="12">관광지</option>
                                      <option value="14">문화시설</option>
                                      <option value="15">축제공연행사</option>
                                      <option value="25">여행코스</option>
                                      <option value="28">레포츠</option>
                                      <option value="32">숙박</option>
                                      <option value="38">쇼핑</option>
                                      <option value="39">음식점</option>
                                    </select>
                                </div>

                              </div>

                                <div class="mb-4">
                                    <label for="name">핫플 주소</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="핫플 주소를 입력해주세요" id="address" required="" name="address">
                                    </div>
                                </div>
                                <div id="map" style="width: 100%; height: 400px"></div>

                                <div class="mb-4"><label for="overview">핫플 상세 설명</label>
                                    <textarea placeholder="Your message" class="form-control"
                                              id="overview" rows="4" name="overview" required=""></textarea></div>
                                <div class="d-grid">
                                    <button type="submit" class="btn rounded btn-secondary">Send
                                        message
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
       </div>
    </section>
    </div>

</main>

<%@ include file="/views/components/navigation/script.jsp" %>
<%@ include file="/views/components/map/map-search.jsp" %>
<%@ include file="/views/components/navigation/footer.jsp" %>


</body>

</html>