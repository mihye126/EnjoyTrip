<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Form -->
<div class="row mb-4 mb-lg-5 pt-2">
    <div class="col-12 col-md-9">
        <div class="row align-items-center">

            <!-- Form -->
            <div class="col">

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-text">
                            <i class="fa-solid fa-location-dot"></i></span>
                        <select class="form-select" id="search-area"
                                aria-label="검색 할 지역 선택">

                        </select>
                    </div>
                </div>
            </div>

            <div class="col">

                <div class="form-group">
                    <div class="input-group">
                                                <span class="input-group-text"
                                                      id="basic-addonDate1">
                                                    <i
                                                            class="fa-solid fa-caret-down"></i></span>
                        <select class="form-select" id="search-content-id"
                                aria-label="검색 할 지역 선택">
                            <option value="0" selected="">관광지 유형</option>
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
            </div>
            <!-- End of Form -->
        </div>
    </div>
    <div class="col-12 col-md-2">
        <div class="col">
            <button class="btn btn-warning " type="button" id="btn-search"
                    style="width: 15rem;">Search <i class="fa-solid fa-magnifying-glass m-1"
                                                    style="float: left;"></i></button>
        </div>
    </div>
</div>


<!-- End of Form -->