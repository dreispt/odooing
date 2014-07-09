<%inherit file="_templates/site.mako" />

<div class="blog-header">
<h1 class="blog-title">${bf.config.blog.name}</h1>
<p class="lead blog-description">${bf.config.blog.description}</p>
</div>

% for post in bf.config.blog.iter_posts_published(bf.config.blog.posts_per_page):
<%include file="blog/post.mako" args="post=post" />
% endfor
