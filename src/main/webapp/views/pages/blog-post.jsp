<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/views/components/head.jsp" %>

<body>
<%@ include file="/views/components/header.jsp" %>
<main>
    <!-- Hero -->
    <section class="section-header pb-5">
        <div class="container">
            <div class="row bg-img card text-white">
                <div class="col-12 mt-5 ">
                    <div class=" mb-6">
                        <div class="card-body px-5 py-5 text-center">
                            <div class="row align-items-center">
                                <div class="col">
                                    <h2 class="mb-3">Blog Title</h2>
                                </div>
                                <div class="mb-4"><a href="./blog.html"
                                                     class="badge bg-success text-uppercase me-2 px-3">Seo</a> <a href="#"
                                                                                                                  class="badge bg-warning text-uppercase px-3">Marketing</a></div>
                                <div class="post-meta"><span class="fw-bold me-3">James Curran</span> <span
                                        class="post-date me-3">January 31, 2021</span> <span class="fw-bold">7 min
                                            read</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="section section-sm bg-white text-black pt-0">
        <article class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <p>Adding a dark mode is basically adding a theme. The principles are the same for adding a
                        light mode to a dark website or alternative styling based on user-defined variables, the
                        time of year or holidays.</p>
                    <p>I added theming with a mix of and CSS. In this post I’ll go step by step into the details of
                        how I did it and what I learned.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias expedita earum modi sint
                        voluptatum nemo assumenda explicabo laboriosam unde excepturi, necessitatibus consequatur
                        quo! Quis impedit excepturi ut, alias omnis harum?</p>
                    <p>
                    <div class="section py-0">
                        <div class="container">
                            <div class="row">
                                <div class="col-12"><iframe class="map rounded" id="gmap_canvas"
                                                            src="https://maps.google.com/maps?q=san%20francisco&amp;t=&amp;z=8&amp;ie=UTF8&amp;iwloc=&amp;output=embed"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    </p>
                    <h2>Setup</h2>
                    <p>The themes are <a href="#">activated by CSS classes</a> on the root element. When the page is
                        loaded, I want to apply the theme that most likely suits the visitor (you!) best. After all,
                        most people don’t like configuring websites before they can read a blog post, so the the
                        whole theming feature would likely remain unused otherwise. So I have to make a guess about
                        what the visitor wants and expects. I do that in this order:</p>
                    <ol>
                        <li>I assume people don’t want the theme to change when they navigate between pages. So if
                            the page loaded isn’t the first page they visit, I want to use the theme that was used
                            before.</li>
                        <li>If it’s the first page they view on my site, their browser may be able to tell their
                            preference.</li>
                        <li>If no preference is available, we can base the choice based on whether it’s day or
                            night.</li>
                    </ol>
                    <p>Every time a page is loaded, in the current or a new tab, it checks if a theme was set
                        previously. Because the preference for a light or dark theme can change during the day, with
                        every change, I add a time stamp to the saved setting. Only when the state was saved less
                        than two hours ago, it’s applied:</p>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eaque distinctio nemo tempora
                        similique necessitatibus asperiores inventore ipsum, nostrum velit, quasi vitae natus
                        numquam veritatis nobis, reiciendis deleniti facere molestias a.</p>

                </div>
            </div>
            <div class="row justify-content-sm-center align-items-center py-3 mt-3">
                <div class="col-12 col-lg-8">
                    <div class="row">
                        <div class="col-9 col-md-6">
                            <h6 class="fw-bolder d-inline mb-0 me-3">Share:</h6><button
                                class="btn btn-sm me-2 btn-icon-only btn-pill btn-twitter d-inline text-white"
                                aria-label="twitter social link"><span class="fab fa-twitter"></span></button>
                            <button class="btn btn-sm me-2 btn-icon-only btn-pill btn-facebook d-inline"
                                    aria-label="facebook social link"><span class="fab fa-facebook-f"></span></button>
                            <button class="btn btn-sm btn-icon-only btn-pill bg-orange d-inline text-white"
                                    aria-label="reddit social link"><span class="fab fa-reddit-alien"></span></button>
                        </div>
                        <div class="col-3 col-md-6 text-right"><span class="far fa-bookmark text-primary"
                                                                     data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                                                     data-original-title="Bookmark story" data-bs-original-title="Bookmark story"
                                                                     aria-label="Bookmark story"></span></div>
                    </div>
                </div>
            </div>
        </article>
    </div>

    <div class="section section-md bg-white text-black pt-0 line-bottom-light">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div><label class="h5 mb-4" for="exampleFormControlTextarea1"><span
                            class="badge badge-md bg-primary text-uppercase me-2">23</span> Comments</label>
                        <textarea class="form-control border border-gray-300-gray" id="exampleFormControlTextarea1"
                                  placeholder="Add your comment" rows="6"
                                  data-bind-characters-target="#charactersRemaining" maxlength="1000"></textarea>
                        <div class="d-flex justify-content-between mt-3"><small class="fw-light text-dark"><span
                                id="charactersRemaining">1000</span> characters remaining</small> <button
                                class="btn btn-primary animate-up-2">Send</button></div>
                        <div class="mt-5">
                            <div class="card bg-gray-200 border-gray-300 rounded p-4 mb-4">
                                <div class="d-flex justify-content-between mb-4"><span class="font-small"><a
                                        href="#"><img class="avatar-sm img-fluid rounded-circle me-2"
                                                      src="../../assets/img/team/profile-picture-1.jpg" alt="avatar">
                                                <span class="fw-bold">John Doe</span> </a><span class="ms-2">2 min
                                                ago</span></span>
                                    <div><button class="btn btn-link text-danger" aria-label="report button"><span
                                            class="far fa-flag"></span></button></div>
                                </div>
                                <p class="m-0">I really like that the Pixel uses a lot of Bootstrap 4's classes to
                                    position elements across the website. I also like the fact that we can get a
                                    version of the code without Sass if needed.<br><br>When is the next product
                                    coming? :)</p>
                                <div class="mt-4 mb-3 d-flex justify-content-between">
                                    <div><span class="far fa-thumbs-up text-action text-success me-3"
                                               data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                               data-original-title="Like comment" data-bs-original-title="Like comment"
                                               aria-label="Like comment"></span> <span
                                            class="far fa-thumbs-down text-action text-danger me-3"
                                            data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                            data-original-title="Dislike comment"
                                            data-bs-original-title="Dislike comment"
                                            aria-label="Dislike comment"></span> <span class="font-small fw-light">4
                                                likes</span></div><a class="text-action fw-light font-small"
                                                                     data-bs-toggle="collapse" role="button" href="#replyContainer1"
                                                                     aria-expanded="false" aria-controls="replyContainer1"><span
                                        class="fas fa-reply me-2"></span> Reply</a>
                                </div>
                                <div class="collapse" id="replyContainer1"><label class="mb-4 d-none"
                                                                                  for="exampleFormControlTextarea10">Replay</label> <textarea
                                        class="form-control border" id="exampleFormControlTextarea10"
                                        placeholder="Reply to John Doe" rows="6"
                                        data-bind-characters-target="#charactersRemainingReply"
                                        maxlength="1000"></textarea>
                                    <div class="d-flex justify-content-between mt-3"><small class="fw-light"><span
                                            id="charactersRemainingReply">1000</span> characters
                                        remaining</small> <button
                                            class="btn btn-primary btn-sm animate-up-2">Send</button></div>
                                </div>
                            </div>
                            <div class="card bg-gray-200 border-gray-300 rounded p-4 ms-5 mb-4">
                                <div class="d-flex justify-content-between mb-4"><span class="font-small"><a
                                        href="#"><img class="avatar-sm img-fluid rounded-circle me-2"
                                                      src="../../assets/img/team/profile-picture-2.jpg"
                                                      alt="Bonnie avatar"> <span class="fw-bold">Bonnie Green</span>
                                            </a><span class="ms-2">2 min ago</span></span>
                                    <div><button class="btn btn-link text-danger" aria-label="report button"><span
                                            class="far fa-flag"></span></button></div>
                                </div>
                                <p class="m-0">Hi John Doe,<br><br>We're happy to hear you like our product. A new
                                    one will come soon enough!</p>
                                <div class="mt-4 mb-3 d-flex justify-content-between">
                                    <div><span class="far fa-thumbs-up text-action text-success me-3"
                                               data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                               data-original-title="Like comment" data-bs-original-title="Like comment"
                                               aria-label="Like comment"></span> <span
                                            class="far fa-thumbs-down text-action text-danger me-3"
                                            data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                            data-original-title="Dislike comment"
                                            data-bs-original-title="Dislike comment"
                                            aria-label="Dislike comment"></span> <span class="font-small fw-light">2
                                                likes</span></div><a class="text-action fw-light font-small"
                                                                     data-bs-toggle="collapse" role="button" href="#replyContainer2"
                                                                     aria-expanded="false" aria-controls="replyContainer2"><span
                                        class="fas fa-reply me-2"></span> Reply</a>
                                </div>
                                <div class="collapse" id="replyContainer2"><label class="mb-4 d-none"
                                                                                  for="exampleFormControlTextarea11">Replay</label> <textarea
                                        class="form-control border" id="exampleFormControlTextarea11"
                                        placeholder="Reply to John Doe" rows="6"
                                        data-bind-characters-target="#charactersRemainingReply2"
                                        maxlength="1000"></textarea>
                                    <div class="d-flex justify-content-between mt-3"><small class="fw-light"><span
                                            id="charactersRemainingReply2">1000</span> characters
                                        remaining</small> <button
                                            class="btn btn-primary btn-sm animate-up-2">Send</button></div>
                                </div>
                            </div>
                            <div class="card bg-gray-200 border-gray-300 rounded p-4 mb-4">
                                <div class="d-flex justify-content-between mb-4"><span class="font-small"><a
                                        href="#"><img class="avatar-sm img-fluid rounded-circle me-2"
                                                      src="../../assets/img/team/profile-picture-3.jpg"
                                                      alt="James avatar"> <span class="fw-bold">James Curran</span>
                                            </a><span class="ms-2">2 min ago</span></span>
                                    <div><button class="btn btn-link text-danger" aria-label="report button"><span
                                            class="far fa-flag"></span></button></div>
                                </div>
                                <p class="m-0">Hey there! We want to say that <span class="text-tertiary">you're
                                            awesome</span> and we think you'll build great websites! Why not use Pixel
                                    to make things easier?</p>
                                <div class="mt-4 mb-3 d-flex justify-content-between">
                                    <div><span class="far fa-thumbs-up text-action text-success me-3"
                                               data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                               data-original-title="Like comment" data-bs-original-title="Like comment"
                                               aria-label="Like comment"></span> <span
                                            class="far fa-thumbs-down text-action text-danger me-3"
                                            data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                            data-original-title="Dislike comment"
                                            data-bs-original-title="Dislike comment"
                                            aria-label="Dislike comment"></span> <span class="font-small fw-light">4
                                                likes</span></div><a class="text-action fw-light font-small"
                                                                     data-bs-toggle="collapse" role="button" href="#replyContainer3"
                                                                     aria-expanded="false" aria-controls="replyContainer3"><span
                                        class="fas fa-reply me-2"></span> Reply</a>
                                </div>
                                <div class="collapse" id="replyContainer3"><label class="mb-4 d-none"
                                                                                  for="exampleFormControlTextarea12">Replay</label> <textarea
                                        class="form-control border" id="exampleFormControlTextarea12"
                                        placeholder="Reply to John Doe" rows="6"
                                        data-bind-characters-target="#charactersRemainingReply3"
                                        maxlength="1000"></textarea>
                                    <div class="d-flex justify-content-between mt-3"><small class="fw-light"><span
                                            id="charactersRemainingReply3">1000</span> characters
                                        remaining</small> <button
                                            class="btn btn-primary btn-sm animate-up-2">Send</button></div>
                                </div>
                            </div>
                            <div id="extraContent" style="display: none;">
                                <div class="card bg-gray-200 border-gray-300 p-4 mb-4">
                                    <div class="d-flex justify-content-between mb-4"><span class="font-small"><a
                                            href="#"><img class="avatar-sm img-fluid rounded-circle me-2"
                                                          src="../../assets/img/team/profile-picture-2.jpg"
                                                          alt="Neil avatar"> <span class="fw-bold">Neil Sims</span>
                                                </a><span class="ms-2">2 min ago</span></span>
                                        <div><button class="btn btn-link text-danger"
                                                     aria-label="report button"><span
                                                class="far fa-flag"></span></button></div>
                                    </div>
                                    <p class="m-0">I really like that the Pixel uses a lot of Bootstrap 4's classes
                                        to position elements across the website. I also like the fact that we can
                                        get a version of the code without Sass if needed.<br><br>When is the next
                                        product coming? :)</p>
                                    <div class="mt-4 mb-3 d-flex justify-content-between">
                                        <div><span class="far fa-thumbs-up text-action text-success me-3"
                                                   data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                                   data-original-title="Like comment"
                                                   data-bs-original-title="Like comment"
                                                   aria-label="Like comment"></span> <span
                                                class="far fa-thumbs-down text-action text-danger me-3"
                                                data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                                data-original-title="Dislike comment"
                                                data-bs-original-title="Dislike comment"
                                                aria-label="Dislike comment"></span> <span
                                                class="font-small fw-light">4 likes</span></div><a
                                            class="text-action fw-light font-small" data-bs-toggle="collapse"
                                            role="button" href="#replyContainer4" aria-expanded="false"
                                            aria-controls="replyContainer4"><span class="fas fa-reply me-2"></span>
                                        Reply</a>
                                    </div>
                                    <div class="collapse" id="replyContainer4"><label class="mb-4 d-none"
                                                                                      for="exampleFormControlTextarea13">Replay</label> <textarea
                                            class="form-control border" id="exampleFormControlTextarea13"
                                            placeholder="Reply to John Doe" rows="6"
                                            data-bind-characters-target="#charactersRemainingReply4"
                                            maxlength="1000"></textarea>
                                        <div class="d-flex justify-content-between mt-3"><small
                                                class="fw-light"><span id="charactersRemainingReply4">1000</span>
                                            characters remaining</small> <button
                                                class="btn btn-primary btn-sm animate-up-2">Send</button></div>
                                    </div>
                                </div>
                                <div class="card bg-gray-200 rounded border-gray-300 p-4 ms-5 mb-4">
                                    <div class="d-flex justify-content-between mb-4"><span class="font-small"><a
                                            href="#"><img class="avatar-sm img-fluid rounded-circle me-2"
                                                          src="../../assets/img/team/profile-picture-5.jpg"
                                                          alt="Jose avatar"> <span class="fw-bold">Jose Leos</span>
                                                </a><span class="ms-2">2 min ago</span></span>
                                        <div><button class="btn btn-link text-danger"
                                                     aria-label="report button"><span
                                                class="far fa-flag"></span></button></div>
                                    </div>
                                    <p class="m-0">Hi John Doe,<br><br>We're happy to hear you like our product. A
                                        new one will come soon enough!</p>
                                    <div class="mt-4 mb-3 d-flex justify-content-between">
                                        <div><span class="far fa-thumbs-up text-action text-success me-3"
                                                   data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                                   data-original-title="Like comment"
                                                   data-bs-original-title="Like comment"
                                                   aria-label="Like comment"></span> <span
                                                class="far fa-thumbs-down text-action text-danger me-3"
                                                data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                                data-original-title="Dislike comment"
                                                data-bs-original-title="Dislike comment"
                                                aria-label="Dislike comment"></span> <span
                                                class="font-small fw-light">2 likes</span></div><a
                                            class="text-action fw-light font-small" data-bs-toggle="collapse"
                                            role="button" href="#replyContainer5" aria-expanded="false"
                                            aria-controls="replyContainer5"><span class="fas fa-reply me-2"></span>
                                        Reply</a>
                                    </div>
                                    <div class="collapse" id="replyContainer5"><label class="mb-4 d-none"
                                                                                      for="exampleFormControlTextarea14">Replay</label> <textarea
                                            class="form-control border" id="exampleFormControlTextarea14"
                                            placeholder="Reply to John Doe" rows="6"
                                            data-bind-characters-target="#charactersRemainingReply5"
                                            maxlength="1000"></textarea>
                                        <div class="d-flex justify-content-between mt-3"><small
                                                class="fw-light"><span id="charactersRemainingReply5">1000</span>
                                            characters remaining</small> <button
                                                class="btn btn-primary btn-sm animate-up-2">Send</button></div>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-5 text-center"><button id="loadOnClick"
                                                                  class="btn btn-primary btn-loading-overlay me-2 mb-2"><span
                                    class="spinner"><span class="spinner-border spinner-border-sm" role="status"
                                                          aria-hidden="true"></span> </span><span class="ms-1 btn-inner-text">Load
                                            more comments</span></button>
                                <p id="allLoadedText" style="display: none;">That's all, Sparky!</p>
                            </div>
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