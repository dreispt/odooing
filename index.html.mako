<%inherit file="_templates/site.mako" />


      <div class="blog-header">
        <h1 class="blog-title">${bf.config.blog.name}</h1>
        <p class="lead blog-description">${bf.config.blog.description}</p>
      </div>

<!--
<article class="page_box">
<%self:filter chain="markdown">

Welcome to Blogofile
====================

This is an example [Blogofile](http://www.blogofile.com) site that is
optimized for HTML5 browsers.

Please see the [Documentation](http://www.blogofile.com/documentation)
for getting started and for customizing your site.

Specific customization points for this example:

 * ``_templates/theme.mako`` imports the stylesheet and a few custom web fonts from [Google's CDN](http://www.google.com/webfonts).
 * To change the twitter search for the widget on the right, see ``js/site.js`` and ``_templates/sidebar.mako``.
</%self:filter>
</article>
-->

    Latest posts:
    <ul>
      % for post in bf.config.blog.iter_posts_published(5):
      <li>
        <a href="${post.path}">${post.title}</a>
        ${post.excerpt}
      </li>
      % endfor
    </ul>

