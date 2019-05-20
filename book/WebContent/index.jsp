<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<%
String username=(String)session.getAttribute("username");
if(username==null){
	out.print("<script>alert('您还没有登录，请登录...'); window.location='login.jsp'</script>");
}
%>
<head>
    <meta charset="UTF-8">
    <title>蔚蓝网首页</title>
    <link href="css/global.css" rel="stylesheet"/>
    <link href="css/layout.css" rel="stylesheet"/>
    <link href="css/template.css" rel="stylesheet" />
</head>
<body>
<!--随滚动条滚动可关闭广告-->
<div id="right" class="right">
    <div class="dd_close" id="dd_close"><a href="javascript:void(0);">关闭</a></div>
    <img src="images/scroll.jpg" id="right1" />
</div>
<!--头部-->
<header id="header">
    <div class="header_top">
        <div class="header_top_left">您好!${username}欢迎光临蔚蓝网 [<a href="login.jsp" target="_parent">注销</a> | <a href="register.html" target="_parent">免费注册</a>]</div>
        <div class="header_top_right">
            <ul>
                <li><a href="#" target="_self">客户服务</a></li>
                <li>|</li>
                <li id="menu"><a href="#" target="_self">新手入门</a> <img src="images/arrow_down.gif" alt="arrow" />
                    <div id="dd_menu_top_down">
                        <a href="#" target="_self">购物保障</a><br />
                        <a href="#" target="_self">购物流程</a><br />
                        <a href="#" target="_self">会员介绍</a><br />
                        <a href="#" target="_self">常见问题</a><br />
                    </div>
                </li>
                <li>|</li>
                <li><a href="#" target="_self">礼品卡</a></li>
                <li>|</li>
                <li><a href="#" target="_self">我的订单</a></li>
                <li>|</li>
                <li><a href="#" target="_self">我的账户</a></li>
                <li>|</li>
                <li><a href="BookServlet?action=shoppingcar&username=${username}" target="_parent">购物车</a></li>
                <li><img src="images/header_shop.gif" alt="shopping"/></li>
            </ul>
        </div>
    </div>
</header>
<div class="header_middle">
    <div class="logo"><img src="images/logo.png" alt="logo"/></div>
    <div class="search"><input type="text" placeholder="请输入搜索关键字"><input type="button"></div>
</div>
<nav id="nav">
    <ul>
        <li><a href="#"> 全部商品分类</a></li>
        <li><a href="#"> 首页</a></li>
        <li><a href="#"> 图书</a></li>
        <li><a href="#"> 特价</a></li>
        <li><a href="#"> 团购</a></li>
    </ul>
</nav>
<!--网站中间内容开始-->
<section id="main">
    <!--左侧菜单开始-->
    <div id="catList">
        <!--图书商品分类开始-->
        <div class="book_sort">
            <div class="book_sort_bg"><img src="images/dd_book_cate_icon.gif" alt="图书" /> 图书商品分类</div>
            <div class="book_sort_bottom">悬疑 | 言情 | 职场 | 财经</div>
            <div class="book_sort_bottom">文学 | 传记 | 艺术 | 摄影</div>
            <div class="book_sort_bottom">青春文学 | 动漫 | 幽默</div>
            <div class="book_sort_bottom">修养 | 成功 | 职场 | 沟通</div>
            <div class="book_sort_bottom">0-2 | 3-6 | 7-10 | 11-14<br />文学 | 科普 | 图画书</div>
            <div class="book_sort_bottom">教材 | 中小学教辅 | 外语</div>
            <!--<div class="book_sort_bottom">保健 | 家教 | 美丽装扮 | 育儿 | 美食 | 旅游 | 收藏 | 生活 | 体育 | 地图 | 个人理财</div>
            <div class="book_cate">[个人社科]</div>
            <div class="book_sort_bottom">文化 | 历史 | 哲学/宗教 | 古籍 | 政治/历史 | 法律 | 经济 | 社会科学 | 心理学</div>
            <div class="book_cate">[管理]</div>
            <div class="book_sort_bottom">管理 | 金融 | 营销 | 会计</div>
            <div class="book_cate">[科技]</div>
            <div class="book_sort_bottom">科普 | 建筑 | 医学 | 计算机 | 农林 | 自然科学 | 工业 | 通信</div>
            <div class="book_cate">[教育]</div>

            <div class="book_cate">[工具书]</div>
           <div class="book_cate">[图外原版书]</div>
             <div class="book_cate">[期刊]</div> -->
        </div>
        <!--图书商品分类结束-->
    </div>
    <!--左侧菜单结束-->
    <!--中间部分开始-->
    <div id="content">
        <!--轮换显示的横幅广告图片-->
        <div class="scroll">
            <ul id="scroll_img">
                <li><img src="images/scroll-01.jpg"/></li>
                <li><img src="images/scroll-02.jpg"/></li>
                <li><img src="images/scroll-03.jpg"/></li>
                <li><img src="images/scroll-04.jpg"/></li>
            </ul>
            <ul id="scroll_number">
                <li>1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
            </ul>
        </div>
    </div>
    <!--中间部分结束-->
    <!--右侧部分开始-->
    <section id="silder">
        <!--书讯快递-->
        <div class="book_sort">
            <div class="book_sort_bg"><img src="images/dd_book_mess.gif" alt="mess" style=" vertical-align:text-bottom;"/>书讯快递</div>
            <div class="book_class">
                <div id="dome">
                    <div id="dome1">
                        <ul id="express">
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书&gt;&gt;</li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书&gt;&gt;</li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书&gt;&gt;</li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书&gt;&gt;</li>
                            <li>・弗洛伊德作品精选集59折</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!--右侧部分结束-->
    <section class="book">
        <h1>电子书</h1>
        <ul id="book_ul">       
            <li><a href="BookServlet?action=choose&id=01"><img src="images/dianzi01.jpg" style="cursor: pointer;" name="1"></a></li>
            <li><a href="BookServlet?action=choose&id=02"><img src="images/dianzi02.jpg" style="cursor: pointer;" name="2"></a></li>
            <li><a href="BookServlet?action=choose&id=03"><img src="images/dianzi03.jpg" style="cursor: pointer;" name="3"></a></li>
            <li><a href="BookServlet?action=choose&id=04"><img src="images/dianzi04.jpg" style="cursor: pointer;" name="4"></a></li>
            <li><a href="BookServlet?action=choose&id=05"><img src="images/dianzi05.jpg" style="cursor: pointer;" name="5"></a></li>
            <li><a href="BookServlet?action=choose&id=06"><img src="images/dianzi06.jpg" style="cursor: pointer;" name="6"></a></li>
        </ul>
    </section>
    <section class="tab">
        <ol>
            <li>图书畅销榜</li>
            <li>图书上新书榜</li>
        </ol>
        <ul>
            <li><span>1</span><p>追风筝的人</p><dl><dt><img src="images/selling01.jpg"></dt><dd><h1>追风筝的人</h1>中文版，快乐大本营高圆圆感动推荐，奥巴马送给女儿的新年礼物</dd></dl></li>
            <li><span>2</span><p>解忧杂货店</p><dl><dt><img src="images/selling02.jpg"></dt><dd><h1>解忧杂货店</h1>《白夜行》后东野圭吾备受欢迎作品：不是推理小说，却更扣人心弦</dd></dl></li>
            <li><span>3</span><p>天才在左疯子在右</p><dl><dt><img src="images/selling03.jpg"></dt><dd><h1>天才在左疯子在右</h1>新增10个被封杀篇章！看高智商疯子如何调戏和羞辱正常人！继高圆圆后，女神陈乔恩芒果台盛情推荐！</dd></dl></li>
            <li><span>4</span><p>白夜行</p><dl><dt><img src="images/selling04.jpg"></dt><dd><h1>白夜行</h1>东野圭吾推理小说无冕之王。全新精装典藏版</dd></dl></li>
            <li><span>5</span><p>阮/陈恩静 吕亦涵 著</p><dl><dt><img src="images/selling05.jpg"></dt><dd><h1>阮/陈恩静 吕亦涵 著</h1>商战风云诡谲X情场暗潮汹涌。这一生幸运的是—— 以你之名，冠我之姓</dd></dl></li>
            <li><span>6</span><p>摆渡人</p><dl><dt><img src="images/selling06.jpg"></dt><dd><h1>摆渡人</h1>畅销欧美33个国家，荣获多项图书大奖。如果命运是一条孤独的河流，谁会是你灵魂的摆渡人？如果我真的存在，也是因为你需要我。</dd></dl></li>
            <li><span>7</span><p>岛上书店</p><dl><dt><img src="images/selling07.jpg"></dt><dd><h1>岛上书店</h1>每个人的生命中，都有无比艰难的那一年，将人生变得美好而辽阔</dd></dl></li>
            <li><span>8</span><p>百年孤独</p><dl><dt><img src="images/selling08.jpg"></dt><dd><h1>百年孤独</h1>加西亚马尔克斯代表作，中文版首次授权！</dd></dl></li>
            <li><span>9</span><p>我们仨</p><dl><dt><img src="images/selling09.jpg"></dt><dd><h1>我们仨</h1>《我们仨》是杨绛先生撰写的家庭生活回忆录，三联书店出版，影响几代人的作品，杨绛先生经典散文！</dd></dl></li>
            <li><span>10</span><p>从你的全世界路过</p><dl><dt><img src="images/selling10.jpg"></dt><dd><h1>从你的全世界路过</h1>从你的全世界路过 2014中国好书榜获奖图书</dd></dl></li>
        </ul>
        <ul>
            <li><span>1</span><p>好吗好的</p><dl><dt><img src="images/newBook01.jpg"></dt><dd><h1>好吗好的</h1>凡8月12日20:00前下单顾客，100%有大冰亲笔签名，之后下单顾客先到先得签名。各仓到货时间不一致，请各位耐心等待。</dd></dl></li>
            <li><span>2</span><p>永无止尽的约会</p><dl><dt><img src="images/newBook02.jpg"></dt><dd><h1>永无止尽的约会</h1>永无止尽的约会</dd></dl></li>
            <li><span>3</span><p>你的坚持，终将美好</p><dl><dt><img src="images/newBook03.jpg"></dt><dd><h1>你的坚持，终将美好</h1>无论正在经历什么，都请你不要轻言放弃，因为从来没有一种坚持会被辜负</dd></dl></li>
            <li><span>4</span><p>茧</p><dl><dt><img src="images/newBook04.jpg"></dt><dd><h1>茧</h1>阔别十年，张悦然与我们再度重逢。真正的爱，是知道爱你有多困难还选择爱你；真正的长大，是知道生活的真相还热爱生活</dd></dl></li>
            <li><span>5</span><p>就喜欢你看不惯我 </p><dl><dt><img src="images/newBook05.jpg"></dt><dd><h1>就喜欢你看不惯我 </h1>霸气吾皇率蠢萌巴扎黑、伪深邃的牛能强势归来！</dd></dl></li>
            <li><span>6</span><p>遇见美好系列</p><dl><dt><img src="images/newBook06.jpg"></dt><dd><h1>遇见美好系列</h1>全8册，3-7岁心灵成长绘本。</dd></dl></li>
            <li><span>7</span><p>八万四千问</p><dl><dt><img src="images/newBook07.jpg"></dt><dd><h1>八万四千问</h1>宗萨蒋扬钦哲仁波切四年来首部作品：“佛法能够解决你们的所有问题。</dd></dl></li>
            <li><span>8</span><p>极简生活：简而美地活</p><dl><dt><img src="images/newBook08.jpg"></dt><dd><h1>极简生活：简而美地活</h1>极简是风靡全球的一种生活态度与理念。告别繁杂，拥有简而美的生活。</dd></dl></li>
            <li><span>9</span><p>好妈妈胜过好老师</p><dl><dt><img src="images/newBook09.jpg"></dt><dd><h1>好妈妈胜过好老师</h1>好妈妈胜过好老师2：自由的孩子最自觉</dd></dl></li>
            <li><span>10</span><p>我们始终独自行走在这个世界</p><dl><dt><img src="images/newBook10.jpg"></dt><dd><h1>我们始终独自行走在这个世界</h1>十点读书、二更食堂、清华南都等各大微信阅读平台，简书、豆瓣千万读者口碑相传作品。</dd></dl></li>
        </ul>
    </section>
</section>
<!--网站版权部分开始-->
<footer id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">正版保障</a> | <a href="#" target="_parent" class="footer_dull_red">满额免运</a> | <a href="#" target="_parent" class="footer_dull_red">货到付款</a> | <a href="#" target="_parent" class="footer_dull_red">品种最全</a> | <a href="#" target="_parent" class="footer_dull_red">免费退换</a></div>
    <div class="footer_end">Copyright (C) 蔚蓝网 2006-2016, All Rights Reserved  <img src="images/validate.gif"  alt="版权" style="vertical-align:middle;" /> 京ICP证100488号 出版物经营许可证 京批100160号</div>
</footer>
<script  src="js/jquery-1.12.4.js"></script>
<script src="js/index.js"></script>
<script src="js/header.js"></script>
</body>
</html>

