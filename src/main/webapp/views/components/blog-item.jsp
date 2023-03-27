<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="card shadow bg-white border-gray-300 p-4 rounded">
    <a href="read.blog?contentID=${param.contentID}">
        <img src="${param.firstImage}" class="card-img-top rounded" alt="our desk">
    </a>
    <div class="card-body p-0 pt-4">
        <a href="read.blog?contentID=${param.contentID}" class="h4">"${param.title}"</a>
        <div class="d-flex align-items-center my-3">
            <img class="avatar avatar-sm rounded-circle" src="../../assets/img/team/profile-picture-2.jpg" alt="${param.userName}">
            <h3 class="h6 small ms-2 mb-0">

            </h3>
        </div>
        <p class="mb-0">"${param.address}"</p>
    </div>
</div>
