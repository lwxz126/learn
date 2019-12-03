<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>主页</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <p>导航</p>
           <ul class="nav nav-tabs">
    <li role="presentation" class="active"><a href="/lwxz/list">主页</a></li>
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        其他功能 <span class="caret"></span>
      </a>
      <ul class="dropdown-menu">
        <li role="presentation"><a href="/lwxz/add">新增</a></li>
        <li class="divider"></li>
        <li role="presentation"><a href="/lwxz/search">搜索</a></li>
      </ul>
    </li>
  </ul>
 </div>

  <table class="table">
  <caption>所有电影</caption>
   <thead>
          <th>编号</th><th>电影名</th><th>年份</th><th>导演</th><th>主演</th><th>获奖</th><th>电影海报</th><th>删除</th><th>修改</th><th>电影海报</th>
          </thead>
          <tbody>
          <#list movies as movie>
          <tr> <td>${movie.id}</td><td>${movie.moviename}</td> <td>${movie.year}</td> <td>${movie.director}</td><td>${movie.protagonist}</td><td>${movie.prize}</td><td>${movie.avatar}</td>
          <td><a href="/lwxz/delete/${movie.id}">删除</a></td>
          <td><a href="/lwxz/modify/${movie.id}">修改</a></td>
          <td><a href="/lwxz/add_avatar/${movie.id}">上传</a></td>
          </tr>
          </#list>
          </tbody>
</table>

<caption>电影推荐</caption>
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="/src/main/resources/templates/泰坦尼克.jpg"  alt="泰坦尼克号"/>
        </div>
        <div class="item">
            <img src="/src/main/resources/templates/狩猎.jpg" alt="狩猎">
        </div>
        <div class="item">
            <img src="/src/main/resources/templates/小丑.jpeg" alt="小丑">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
       data-slide="prev"> <span _ngcontent-c3="" aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
    <a class="carousel-control right" href="#myCarousel" 
       data-slide="next">&rsaquo;</a>
</div>


    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  </body>
</html> 

