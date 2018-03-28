<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html><head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<body>
<div class="head">
  <div class="wrap clearfix">
    <a href="index.html" class="logo indent">logo</a>
    <div class="headr fr">
      <form action="active.do" method="post" class="headsearch">
        <label class="label">
          <input type="text" value="" name="" class="key">
          <span class="text">搜索地址、名称、时间等</span>
        </label>
        <button type="submit" class="button btn-search">&#xe628;</button>
      </form>
      <a href="login.html">登录</a><a href="reg.html">注册</a><a href="#">发布我的饭局</a>
    </div>
  </div>
</div>
<div class="loginwrapper">
  <div class="wrap pr">
    <div class="loginbox">
      <h1 class="hd">用户注册</h1>
      <div class="tc" style="margin-top:-10px;"><img src="images/regtxt.png"></div>
       <form action="<%=ctxPath%>/reg.do" method="post" name="register">   
    
      <div class="boxbd mt20">
        <label class="label">
          <input type="text" name="user" value="" class="loginipt key user">
          <span class="text">请输入您的邮箱</span>
        </label>
        <label class="label">
          <input type="text" name="Nickname" value="" class="loginipt key Nickname">
          <span class="text">请输入您的昵称</span>
        </label>
        <label class="label">
          <input type="password" name="pwd" value="" class="loginipt key pwd">
          <span class="text">请输入您的密码</span>
        </label>
        <button type="submit" name="login" value="" class="button btn-reg" ">立即注册</button>
        </form>
        <p class="mt20 tc">注册则表示同意<a href="#" class="o">《会员条款》</a></p>
        <div class="ohter"><span class="ohtertxt">或</span></div>
        <div class="Prompt" style="padding:0 0 10px">使用以上社交网络帐号登录</div>
      </div> 
      <div class="tc">
        <a href="#" target="_blank" class="ico dou">豆</a>
        <a href="#" target="_blank" class="ico sina">新浪</a>
        <a href="#" target="_blank" class="ico qq">QQ</a>
      </div>
      <p class="boxbd tr">已有帐号？<a href="login.html" class="o">注册</a></p>
    </div>    
  </div>
</div>
<div class="foot2">
  <div class="wrap clearfix">
    <div class="txt fl">
     <div class="foot-nav"> <a href="#">关于17素材</a>/<a href="#">加入我们</a>/<a href="#">联系我们</a>/<a href="#">媒体报道</a>/<a href="#">会员条款</a>/<a href="#">版权声明</a></div>
     Copyright © 2003-2015 17素材, All Rights Reserved　
    </div>
    <div class="orc fr"><img src="images/img2.jpg" width="63"><img src="images/img3.jpg" width="63"></div>
  </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/Action.js"></script>
</html>