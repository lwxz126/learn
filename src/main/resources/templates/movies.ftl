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
      <h1>小煊推电影</h1>
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

<body data-spy="scroll" data-target="#myScrollspy">
<div class="container">
   <div class="jumbotron">
        <h2 >周末放映室</h2>
    </div>
    <div class="row">
        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" id="myNav">
                <li class="active"><a href="#section-1">狩猎</a></li>
                <li><a href="#section-2">小丑</a></li>
                <li><a href="#section-3">音乐之声</a></li>
                <li><a href="#section-4">地心引力</a></li>
                <li><a href="#section-5">星际穿越</a></li>
            </ul>
        </div>
        <div class="col-xs-9">
            <h2 id="section-1" style="background-color:rgb(216,216,216) ">《狩猎》</h2>
            <p style="background-color:rgba(255,255,0,0.25)">刚刚和妻子离婚的卢卡斯（麦斯·米科尔森 Mads Mikkelsen 饰）目前在一家托儿所工作，心地善良个性温和的他很快就受到了同事和孩子们的喜爱，其中，一个名叫卡拉（安妮卡·韦德科普 Annika Wedderkopp 饰）的早熟女孩对卢卡斯尤为的亲近。面对女孩幼稚 而单纯的示好，卢卡斯只能婉转的拒绝，可令他没有想到的是，这一举动将他的生活推向了风口浪尖。 </p>
            <p style="background-color:rgba(255,255,0,0.25)">卡拉报复性的谎言让卢卡斯背负起了性侵女童的罪名，一时间，这个好好先生成为了整个小镇排挤和压迫的对象。好友的愤怒，前妻的不信任，爱犬的死亡和陌生人的恶意让卢卡斯几近崩溃，而当小小的卡拉吐露真相之后，恶意却并没有随着卢卡斯的重获清白而划下句点。</p>
            <hr>
            <h2 id="section-2" style="background-color:rgb(216,216,216) ">《小丑》</h2>
            <p style="background-color:rgba(255,255,0,0.25)">电影《小丑》以同名DC漫画角色为基础，由华纳兄弟影业公司发行，计划于2019年10月4日上映。本片的故事将独立于DCEU之外，故事背景设置在20世纪80年代，讲述了一位生活陷入困境的脱口秀喜剧演员渐渐走向精神的崩溃，在哥谭市开始了疯狂的犯罪生涯，最终成为了蝙蝠侠的宿敌“小丑”的故事。 </p>
　　         <p style="background-color:rgba(255,255,0,0.25)">本片由《宿醉》的导演托德菲利普斯执导，他与编剧斯科特西尔弗一起撰写了编剧。杰昆菲尼克斯本片中饰演主人公“小丑”，其他的主演包括罗伯特德尼罗、莎姬贝兹、马克马龙等。</p>
            <hr>
            <h2 id="section-3" style="background-color:rgb(216,216,216) ">《音乐之声》</h2>
             <p style="background-color:rgba(255,255,0,0.25)"> 玛利亚（朱丽·安德鲁斯 饰）是一个年轻活泼的修女，喜欢在大自然下高声歌唱，所以她常常忘记了修道院里的规矩。院长认为玛利亚并不属于规矩严格的修道院。院长与众嬷嬷商量后，决定安排玛利亚到一位名叫特拉普（克里斯托弗·普卢默 饰）上校家当家庭教师。</p> 
　　         <p style="background-color:rgba(255,255,0,0.25)">上校的妻子去世多年，留下7个孩子，他要求对孩子严格管教。他告诉玛利亚在他家的家庭教师都做不长久，都是因为孩子的恶作剧。玛利亚果然也遭到了恶作剧，可是这位善良的老师并没有告诉他们的父亲，而是像个母亲一样照顾孩子，很快跟孩子打成一片。上校也渐渐在玛利亚的引导下改变了对孩子们的态度。上校与玛利亚之间发生了感情，他们完婚后回到了已被纳粹占领的奥地利，上校并不想为纳粹办事，一家人准备逃跑……</p>
            <hr>
            <h2 id="section-4" style="background-color:rgb(216,216,216) ">《地心引力》</h2>
            <p style="background-color:rgba(255,255,0,0.25)">深邃浩瀚的外层空间，蔚蓝的地球与深不见底、漆黑一片的宇宙形成鲜明对比。一台隶属美国的空间站，数名宇航人员正进行太空漫步，对所属卫星做着例行检查。初上太空的瑞安·斯通博士（桑德拉·布洛克 Sandra Bullock 饰）在经验丰富的宇航员麦特·科沃斯基（乔治·克鲁尼 George Clooney 饰）的协助下，有条不紊地检查每一个部件。此次是科沃斯基退休前的最后一次飞行，他幽默风趣地活跃着团队的氛围。就在此时，休士顿总部传来骇人消息，不久前行将废弃俄罗斯卫星被导弹击毁，碎片以超过子弹的速度在地球轨道上散开，并意外击中其他卫星，引起连锁反应制造了新的碎片。 </p>
　         <p style="background-color:rgba(255,255,0,0.25)">瑞安一行遭到碎片重创，有的同伴不幸身亡，而她和科沃斯基失去控制坠入宇宙深处。幸存的二人不得不彼此信赖，拼尽全力朝向故土前进……</p>
            <hr>
            <h2 id="section-5" style="background-color:rgb(216,216,216) ">《星际穿越》</h2>
            <p style="background-color:rgba(255,255,0,0.25)">近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。多年以前土星附近出现神秘虫洞，NASA借机将数名宇航员派遣到遥远的星系寻找适合居住的星球。在布兰德教授（迈克尔·凯恩 Michael Caine 饰）的劝说下，库珀忍痛告别了女儿，和其他三名专家教授女儿艾米莉亚·布兰德（安妮·海瑟薇 Anne Hathaway 饰）、罗米利（大卫·吉雅西 David Gyasi 饰）、多伊尔（韦斯·本特利 Wes Bentley 饰）搭乘宇宙飞船前往目前已知的最有希望的三颗星球考察。 </p>
            <p style="background-color:rgba(255,255,0,0.25)">他们穿越遥远的星系银河，感受了一小时七年光阴的沧海桑田，窥见了未知星球和黑洞的壮伟与神秘。在浩瀚宇宙的绝望而孤独角落，总有一份超越了时空的笃定情怀将他们紧紧相连……</p>
        </div>
    </div>
</div>
</body>




    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  </body>
</html> 

