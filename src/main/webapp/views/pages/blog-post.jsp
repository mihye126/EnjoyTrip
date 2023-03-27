<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>
    <c:set value="${hotPlace}" var="hotPlace"/>
    <!-- Hero -->
    <jsp:include page="/views/components/blog-head.jsp" flush="false">
        <jsp:param value="${hotPlace.title}" name="title"/>
        <jsp:param value="${hotPlace.contentTypeID}" name="contentTypeID"/>
        <jsp:param value="${hotPlace.firstImage}" name="firstImage"/>
        <jsp:param value="${hotPlace.username}" name="username"/>
        <jsp:param value="${hotPlace.userID}" name="userID"/>
    </jsp:include>
    <jsp:include page="/views/components/blog-content.jsp" flush="false">
        <jsp:param value="${hotPlace.content}" name="content"/>
        <jsp:param value="${hotPlace.address}" name="address"/>
    </jsp:include>

    <div class="section section-md bg-white text-black pt-0 line-bottom-light">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div>
                        <jsp:include page="/views/components/blog-comment-input.jsp"/>

                        <div class="mt-5">
                            <jsp:include page="/views/components/blog-comment.jsp"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</main>
<%@ include file="/views/components/script.jsp" %>



</body>

</html>