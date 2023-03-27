<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>


<body>
<%@ include file="/views/components/header.jsp" %>
<main>


    <!-- Hero -->
    <section class="section-header">
        <div class="container">
            <!-- 글 작성 시작-->
            <div class="container text-center">
                <h1>MVC 게시판</h1>

                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>날짜</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list }" var="b">
                        <tr>
                            <td>${b.num }</td>
                            <td><a href="read?num=${b.num }">${b.title }</a></td>
                            <td>${b.wdate}</td>
                            <td>${b.content }</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <br>
                <a href="insertForm">새글쓰기</a>
                <br><br>
            </div>
        </div>
    </section>
</main>

<%@ include file="/views/components/script.jsp" %>


</body>

</html>