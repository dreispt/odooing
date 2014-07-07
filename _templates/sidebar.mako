<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Odooing - faixa2 -->
<ins class="adsbygoogle"
    style="display:inline-block;width:300px;height:250px"
    data-ad-client="ca-pub-3675930181846077"
    data-ad-slot="7287219321"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>


<div class="sidebar-module">
  <h4>Latest Posts</h4>

    <ul>
      % for post in bf.config.blog.iter_posts_published(5):
      <li><a href="${post.path}">${post.title}</a></li>
      % endfor
    </ul>
</div>

