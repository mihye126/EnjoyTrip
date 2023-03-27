<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>

    <jsp:include page="/views/components/blog-head.jsp" >
        <jsp:param value="${hotPlace}" name="hotPlace"/>
    </jsp:include>

    <jsp:include page="/views/components/blog-content.jsp" >
        <jsp:param value="${hotPlace}" name="hotPlace"/>
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
<%@ include file="/views/components/footer.jsp" %>


</body>

</html>