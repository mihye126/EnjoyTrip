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

    <jsp:include page="/views/components/blog-share.jsp"/>
  </article>
</div>
