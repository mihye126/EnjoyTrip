<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set value="${param.title}" var="title"/>
<c:set value="${param.num}" var="num"/>
<c:set value="${param.content}" var="content"/>
<div class="accordion-item">
  <h2 class="accordion-header" id="heading-${num}">
    <button
            class="accordion-button collapsed"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#collapse-${num}"
            aria-expanded="false"
            aria-controls="collapseOne"
    >
      ${title}
    </button>
  </h2>
  <div id="collapse-${num}" class="accordion-collapse collapse" aria-labelledby="heading-${num}" data-bs-parent="#notice-list">
    <div class="accordion-body">

      <div class="row">
        ${content}
      </div>
<c:if test="${sessionScope.user.id=='admin123'}">
  <div class="row">
    <a type="button" class="btn btn-primary me-1 mt-3" href="/notice/delete?num=${num}">삭제</a>
  </div>
</c:if>



    </div>
  </div>
</div>
