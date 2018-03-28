<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html><head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
</head>
<body>
<div class="head">
  <div class="wrap clearfix">
    <a href="index.do" class="logo indent">logo</a>
    <div class="headr fr">
      <form action="active.do" method="post" class="headsearch">
        <label class="label">
          <input type="text" value="" name="" class="key">
          <span class="text">搜索地址、名称、时间等</span>
        </label>
        <button type="submit" class="button btn-search">&#xe628;</button>
      </form>
      <a href="login.do">登录</a><a href="reg.do">注册</a><a href="#">发布我的饭局</a>
    </div>
  </div>
</div>
<div class="loginwrapper">
  <div class="wrap pr">
    <div class="loginbox">
      <h1 class="hd">用户登录</h1>
      <div class="tc">
        <a href="#" target="_blank" class="ico dou">豆</a>
        <a href="#" target="_blank" class="ico sina">新浪</a>
        <a href="#" target="_blank" class="ico qq">QQ</a>
      </div>
      <div class="Prompt">使用以上社交网络帐号登录</div>
   <form action="<%=ctxPath%>/login.do" method="post" name="login">   
      <div class="boxbd">
        <div class="ohter"><span class="ohtertxt">邮箱和密码</span></div>
        <label class="label">
          <input type="text" name="user" value="" class="loginipt user">
        </label>
        <label class="label">
          <input type="password" name="pwd" value="" class="loginipt pwd">
        </label>
        <button type="submit" name="login" value="" class="button btn-login" >登录</button>
        <p class="mt20"><label for="remember"><input name="" type="checkbox" id="remember" value="" checked> 记住我</label><a href="forgot.do" class="fr"> 忘记密码？</a></p>
        <p class="mt10 tr">还没有账号？<a href="reg.do" class="o">注册</a></p>
      </div>
  </form>
    </div>    
  </div>
</div>
<div class="foot2">
  <div class="wrap clearfix">
    <div class="txt fl">
     <div class="foot-nav"> <a href="#">关于17素材</a>/<a href="#">加入我们</a>/<a href="#">联系我们</a>/<a href="#">媒体报道</a>/<a href="#">会员条款</a>/<a href="#">版权声明</a></div>
     Copyright © 2003-2015 17素材, All Rights Reserved　
    </div>
    <div class="orc fr"><img src="images/img3.jpg" width="63"></div>
  </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/Action.js"></script>
</html>