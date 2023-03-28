<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Form -->
<form class="row mb-4 mb-lg-5 pt-2" action="/trip/list" method="get">

    <div class="col-5">

        <div class="form-group">
            <div class="input-group">
                        <span class="input-group-text">
                            <i class="fa-solid fa-location-dot"></i></span>
                <select class="form-select" id="search-area" aria-label="검색 할 지역 선택" name="sidoCode">
                    <c:forEach var="sido" items="${sidos}">

                        <c:choose>

                            <c:when test="${sido.code==param.sidoCode}">
                                <option value="${sido.code}" selected>${sido.name}</option>

                            </c:when>

                            <c:otherwise>
                                <option value="${sido.code}">${sido.name}</option>
                            </c:otherwise>

                        </c:choose>
                    </c:forEach>

                </select>
            </div>
        </div>
    </div>

    <div class="col-5">

        <div class="form-group">
            <div class="input-group">
                <span class="input-group-text" id="basic-addonDate1">
                    <i class="fa-solid fa-caret-down"></i>
                </span>
                <select class="form-select" id="search-content-id"
                        aria-label="검색 할 지역 선택" name="contentTypeID">
            <c:forEach var="contentType" items="${contentTypes}">
                    <c:choose>
                        <c:when test="${contentType.contentTypeID==param.contentTypeID}">
                            <option value="${contentType.contentTypeID}" selected>${contentType.contentTypeName}</option>
                        </c:when>

                        <c:otherwise>
                            <option value="${contentType.contentTypeID}">${contentType.contentTypeName}</option>
                        </c:otherwise>

                    </c:choose>
            </c:forEach>
                </select>
            </div>
        </div>
    </div>
    <div class="col-2">
        <button class="btn btn-warning " type="submit" id="btn-search"
                style="width: 100%" >Search <i class="fa-solid fa-magnifying-glass m-1"
                                                 style="float: left;"></i></button>
    </div>

</form>


<!-- End of Form -->