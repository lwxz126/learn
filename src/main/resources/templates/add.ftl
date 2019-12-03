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
        <ul class="nav nav-pills nav-stacked">
          <li role="presentation"><a href="/lwxz/list">主页</a></li>
          <li role="presentation" class="active"><a href="/lwxz/add">新增</a></li>
          <li role="presentation"><a href="/lwxz/search">搜索</a></li>
        </ul>
      </div>
      <div class="col-md-8">      
        <form action="/lwxz/do_add">
            <div class="form-group">
                <label for="moviename">电影名</label>
                <input type="text" class="form-control" id="moviename" name="moviename" placeholder="请输入电影名">
            </div>
            <div class="form-group">
                <label for="year">年份</label>
                <input type="text" class="form-control" id="year" name="year" placeholder="年份">
            </div>
            <div class="form-group">
                <label for="director">导演</label>
                <input type="text" class="form-control" id="director" name="director" placeholder="请输入导演名">
            </div>
            <div class="form-group">
                <label for="protagonist">主演</label>
                <input type="text" class="form-control" id="protagonist" name="protagonist" placeholder="请输入主演姓名">
            </div>
            <div class="form-group">
                <label for="prize">获奖</label>
                <input type="text" class="form-control" id="prize" name="prize" placeholder="获奖">
            </div>
            <button type="submit" class="btn btn-default">确认</button>
        </form>
      </div>
    </div>
  </div>

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  </body>
</html>