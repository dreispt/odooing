    <%
    def nav_class(path):
       render_path = bf.template_context.render_path.rsplit("index.html")[0]
       if path == "/" and render_path == "./":
           return " active"
       elif render_path == path or "/" + render_path == path:
          return " active"
       else:
          return ""
    %>
    <%
    def blog_nav_class():
       render_path = bf.template_context.render_path
       if render_path.startswith("/blog/") and "archive" not in render_path:
          return " active"
       return ""
    %>

    <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">

          <% path = bf.util.site_path_helper(trailing_slash=True) %>
          <a href="${path}" class="blog-nav-item${nav_class(path)}">${bf.config.blog.name}</a>

          <% path = bf.util.site_path_helper(bf.config.blog.path) %>
          <a href="${path}" class="blog-nav-item${blog_nav_class()}">Blog</a>
          
          <% path = bf.util.site_path_helper(bf.config.blog.path, "archive", trailing_slash=True) %>
          <a href="${path}" class="blog-nav-item">Archives</a>

        </nav>
      </div>
    </div>
    <!-- <h2>${bf.config.blog.description}</h2> -->


