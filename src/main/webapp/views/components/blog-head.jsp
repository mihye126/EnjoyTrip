<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<c:set value="${title}" var="title"/>
<c:set  value="${contentTypeID}" var="contentTypeID"/>
<c:set  value="${firstImage}" var="firstImage"/>
<c:set  value="${username}" var="username"/>
<c:set  value="${userID}" var="userID"/>

<section class="section-header pb-5">
    <div class="container">
        <div class="row bg-img card text-white">
            <div class="col-12 mt-5 ">
                <div class=" mb-6">
                    <div class="card-body px-5 py-5 text-center">
                        <div class="row align-items-center">
                            <div class="col">
                                <h2 class="mb-3">${title}</h2>
                            </div>
                            <div class="mb-4">
                                <div class="badge bg-success text-uppercase me-2 px-3">${contentTypeID}</div> </div>
                            <div class="post-meta"><span class="fw-bold me-3">${username}</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>