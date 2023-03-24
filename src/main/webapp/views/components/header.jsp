<%--
  Created by IntelliJ IDEA.
  User: SSAFY
  Date: 2023-03-24
  Time: PM 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="header-global">
    <nav id="navbar-main" aria-label="navigation"
         class="navbar navbar-main navbar-expand-lg navbar-theme-primary headroom navbar-dark  bg-primary">
        <div class="container position-relative">
            <a class="navbar-brand me-lg-5" href="/index.jsp">
                <img class="navbar-brand-dark" src="/assets/img/brand/light.svg" alt="Logo light">
                <img class="navbar-brand-light" src="/assets/img/brand/dark.svg" alt="Logo dark">
            </a>
            <div class="navbar-collapse collapse me-auto" id="navbar_global">
                <div class="navbar-collapse-header">
                    <div class="row">
                        <div class="col-6 collapse-brand">
                            <a href="/index.jsp">
                                <img src="/assets/img/brand/dark.svg" alt="Themesberg logo">
                            </a>
                        </div>
                        <div class="col-6 collapse-close">
                            <a href="#navbar_global" class="fas fa-times" data-bs-toggle="collapse"
                               data-bs-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false"
                               title="close" aria-label="Toggle navigation"></a>
                        </div>
                    </div>
                </div>
                <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
                    <li class="nav-item"><a href="html/pages/noticeList.html" class="nav-link">Notice</a></li>
                    <li class="nav-item"><a href="html/pages/blog.html" class="nav-link">Blog</a></li>
                    <li class="nav-item"><a href="html/pages/userInfo.html" class="nav-link">Info</a></li>
                </ul>
            </div>
            <div class="d-flex align-items-center">
                <a href="./html/pages/sign-in.html" target="_blank"
                   class="btn btn-outline-gray-100 d-none d-lg-inline me-md-3">
                    Sign In</a>
                <a href="./html/pages/sign-up.html" target="_blank" class="btn btn-tertiary">
                    <i class="fa-solid fa-right-to-bracket"></i> Sign Up </a>
                <button class="navbar-toggler ms-2" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </nav>
</header>