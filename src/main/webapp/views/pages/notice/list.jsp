<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/navigation/head.jsp" %>


<body>
<%@ include file="/views/components/navigation/header.jsp" %>
<main>

    <!-- Hero -->
    <section class="section-header">
        <div class="container">
            <!-- 게시판 시작-->

            <div class="row justify-content-center">
                <div class="col col-md-10">
                    <h2>공지사항 목록</h2>
                    <hr />
                    <c:if test="${sessionScope.user.id=='admin123'}">
                    <a href="/notice/insert">
                        <button type="button" class="btn btn-success me-1">글쓰기</button>
                    </a>
                    </c:if>
                    <br><br>
                    <div class="accordion bg-white rounded" id="notice-list">
                        <c:forEach items="${notices}" var="notice">
                            <jsp:include page="/views/components/notice/notice-item.jsp">
                                <jsp:param name="title" value="${notice.title}"/>
                                <jsp:param name="content" value="${notice.content}"/>
                                <jsp:param name="num" value="${notice.num}"/>
                            </jsp:include>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- 게시판 끝-->

        </div>
    </section>
    <!-- Hero -->
</main>

<%@ include file="/views/components/navigation/script.jsp" %>


</body>

</html>