<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html><head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
</head>
<body>
  <div class="indexban" style="background-image:url(images/img1.jpg);">
    <div class="wrap">
      <div class="medium-right"><a href="<%=ctxPath%>/login.do">登陆</a><a href="reg.do">注册</a><a href="#">发布我的饭局</a></div>
      <div class="txt"><span class="hd">美食与生活的完美演绎</span><a href="#">早餐</a><a href="#">午餐</a><a href="#">晚餐</a><a href="#">一键搞定</a></div>
    </div>
    <div class="p1-hero-search-form">
      <div class="wrap clearfix">
        <form action="#" method="post" class="search_form clearfix">
          <div class="box-wrapper">
            <input type="text" class="input-large eat" autocomplete="off" id="eat" name="eat" placeholder="您想要吃什么？">
            <span id="enter_location_error_message" class="bad hide">请告诉我您要吃什么？</span>
          </div>
          <div class="box-wrapper">
            <select data-placeholder="地点" style="width:150px;" class="chosen-select-no-single" tabindex="9">
              <option>地点</option>
              <option>地点</option>
            </select>
          </div>
          <div class="box-wrapper bd0">
            <select data-placeholder="就餐人数" style="width:150px;" class="chosen-select-no-single" tabindex="9">
              <option>就餐人数</option>
              <option>2人</option>
              <option>2人</option>
            </select>
          </div>
          <button type="submit" class="button search-button" id="submit_search">搜索</button>
        </form>
        <div class="hot-key fl">热门搜索： <a href="active.do">早餐</a><a href="active.do">午餐</a><a href="active.do">晚餐</a><a href="active.do">西餐</a><a href="active.do">午餐</a><a href="active.do">西餐</a><a href="active.do">西餐</a></div>
      </div>
    </div>
  </div>
  
  <div class="wrap">
    <div class="row-space tc"><a href="active.do"><img src="images/txt1.png"></a></div>
    
    <div class="Activity clearfix">
      <a href="#" class="item">
        <div class="img"><img src="upload/img1.jpg"></div>
        <div class="txt">活动名称</div>
      </a>
      <div class="item large fr">
        <div id="full-screen-slider">
          <ul id="slides">
            <li><a href="#" target="_blank"><img src="upload/img2.jpg"></a></li>
            <li><a href="#" target="_blank"><img src="upload/img2.jpg"></a></li>
            <li><a href="#" target="_blank"><img src="upload/img2.jpg"></a></li>
          </ul>
        </div>
      </div>
    </div>
    
    <div class="Activity mt36 clearfix">
      <a href="#" class="item">
        <div class="img"><img src="upload/img3.jpg"></div>
        <div class="txt" style="padding:10px 0">活动名称<p class="f14">不管是跨洋过海还是跨城郊游，<br>Alice & Chris总是寻找着最本真最<br>当地化的体验。</p></div>
      </a>
      <a href="#" class="item mid">
        <div class="img"><img src="upload/img4.jpg"></div>
        <div class="txt">活动名称</div>
      </a>
      <a href="#" class="item mid last">
        <div class="img"><img src="upload/img5.jpg"></div>
        <div class="txt">活动名称</div>
      </a>
      
    </div>
   
  </div>
  
  <div class="slideshow">
    <div class="m_banner">
      <div class="ban" style=" background-image:url(upload/img6.jpg);"></div>
      <div class="ban" style=" background-image:url(upload/img6.jpg);"></div>
      <a href="javascript:;" class="ico prev"></a>
      <a href="javascript:;" class="ico next"></a>
    </div>
  </div>
  
  <div class="community">
    <div class="row-space tc"><img src="images/txt2.png"></div>
    <ul class="community-wrapper clearfix">
      <li><a href="#"><img src="upload/img7.jpg"></a></li>
      <li><a href="#"><img src="upload/img8.jpg"></a></li>
      <li><a href="#"><img src="upload/img9.jpg"></a></li>
      <li><a href="#"><img src="upload/img10.jpg"></a></li>
    </ul>
  </div>
  
  <!--foot-->
  <div class="footmenu">
    <div class="wrap clearfix">
      <div class="item bd0">
        <h1 class="hd">产品理念</h1>
        <ul>
          <li><a href="#">食品安全</a></li>
          <li><a href="#">订购流程</a></li>
          <li><a href="#">修改订单</a></li>
          <li><a href="#">冷链配送</a></li>
          <li><a href="#">全程冷链</a></li>
        </ul>
      </div>
      <div class="item">
        <h1 class="hd">产品理念</h1>
        <ul>
          <li><a href="#">食品安全</a></li>
          <li><a href="#">订购流程</a></li>
          <li><a href="#">修改订单</a></li>
          <li><a href="#">冷链配送</a></li>
          <li><a href="#">全程冷链</a></li>
        </ul>
      </div>
      <div class="item">
        <h1 class="hd">产品理念</h1>
        <ul>
          <li><a href="#">食品安全</a></li>
          <li><a href="#">订购流程</a></li>
          <li><a href="#">修改订单</a></li>
          <li><a href="#">冷链配送</a></li>
          <li><a href="#">全程冷链</a></li>
        </ul>
      </div>
      <div class="item">
        <h1 class="hd">产品理念</h1>
        <ul>
          <li><a href="#">食品安全</a></li>
          <li><a href="#">订购流程</a></li>
          <li><a href="#">修改订单</a></li>
          <li><a href="#">冷链配送</a></li>
          <li><a href="#">全程冷链</a></li>
        </ul>
      </div>
      <div class="fr">
        <img src="images/img2.jpg">
        <img src="images/img3.jpg">
      </div>
    </div>
    <div class="gotop">&#xe608;</div>
  </div>
  <div class="foot tc">Copyright © 2003-2015 17素材, All Rights Reserved</div>  
    
</body>
<script src="js/jquery.js"></script>
<script src="js/Action.js"></script>

<script src="js/jquery.jslides.js"></script>

<script src="js/index.js"></script>

<script src="js/chosen.jquery.js"></script>
<script type="text/javascript">
    var config = {
		'.chosen-select-no-single' : {disable_search_threshold:10}
	}
	for (var selector in config) {
		$(selector).chosen(config[selector]);
	}
</script>
</html>