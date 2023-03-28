<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 사용자 정보 시작-->
<div class="col-4 col-lg-4 mb-3 ">
  <div class="card border-gray-300 p-2">
    <div
            class="card-header bg-white border-0 text-center d-flex flex-row flex-lg-column align-items-center justify-content-center px-1 px-lg-4"
    >
      <div
              class="profile-thumbnail dashboard-avatar mx-lg-auto me-3"
      >
        <img
                src="../../../assets/img/team/profile-picture-3.jpg"
                class="card-img-top rounded-circle border-white"
                alt="Bonnie Green Portrait"
        />
      </div>
      <span class="h5 my-0 my-lg-3 me-3 me-lg-0"
      >Hi, ${user.id}!</span
      >
      <a href="/account/logout" class="btn btn-gray-300 btn-xs"
      ><span class="me-2"
      ><span class="fas fa-sign-out-alt"></span></span
      >Log Out</a
      >
    </div>
    <div class="card-body p-2 d-none d-lg-block">
      <div class="list-group dashboard-menu list-group-sm">
        <a
                href="/account/info"
                class="d-flex list-group-item border-0 list-group-item-action active"
        >User </a
        ><a
              href="#"
              class="d-flex list-group-item border-0 list-group-item-action"
      >Settings</a
      ><a
              href="#"
              class="d-flex list-group-item border-0 list-group-item-action"
      >My Items</a
      ><a
              href="#"
              class="d-flex list-group-item border-0 list-group-item-action"
      >Security</a
      ><a
              href="#"
              class="d-flex list-group-item border-0 list-group-item-action"
      >Billing</a
      ><a
              href="#"
              class="d-flex list-group-item border-0 list-group-item-action border-0"
      >Messages</a>
      </div>
    </div>
  </div>
</div>
