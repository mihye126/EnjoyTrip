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
      <!-- 글 작성 시작-->
      <div class="card border-0 p-2 p-md-3 p-lg-5">
        <div class="card-header bg-white border-0 text-center">
          <h2>게시판 글 작성</h2>

        </div>
        <div class="card-body px-0 pt-0">
          <form action="/notice/insertProcess" method="post">
            <div class="mb-4">
              <label for="title">제목</label>
              <div class="input-group">

                <input
                        type="text"
                        class="form-control"
                        placeholder="제목을 작성해주세요"
                        id="title"
                        required=""
                        name="title"
                />
              </div>
            </div>

            <div class="mb-4">
              <label for="message">내용</label>
              <textarea
                      placeholder="내용을 입력해주세요"
                      class="form-control"
                      id="message"
                      rows="10"
                      required=""
                      name="content"
              ></textarea>
            </div>
            <div class="d-grid">
              <button type="submit" class="btn rounded btn-secondary" >
                작성 완료
              </button>
            </div>
          </form>
        </div>
      </div>
      <!-- 글 작성 완료-->
    </div>
  </section>
</main>
<%@ include file="/views/components/navigation/footer.jsp" %>

<%@ include file="/views/components/navigation/script.jsp" %>


</body>

</html>