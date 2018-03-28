<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html><head>
<%@include file="/WEB-INF/jsp/header.jsp" %>

</head>
<body>
<div class="head">
  <div class="wrap clearfix">
    <a href="index.html" class="logo indent">logo</a>
    <div class="headr fr">
      <form action="active.html" method="post" class="headsearch">
        <label class="label">
          <input type="text" value="" name="" class="key">
          <span class="text">搜索地址、名称、时间等</span>
        </label>
        <button type="submit" class="button btn-search">&#xe628;</button>
      </form>
      <a href="#"><em><img src="images/sb.png"></em>  &nbsp;&nbsp;发布我的饭局</a>
      <div class="user">
        <span class="clearfix"><span class="userimg"><img src="upload/img12.png"><i></i></span>
        <a href="javascript:;" class="fr">设计--麻  <em>&#xe607;</em></a></span>
        <ul class="topslide">
          <li><em>&#xe627;</em><a href="mem.html">个人设置</a></li>
          <li><em>&#xe63d;</em><a href="Message.html">消息中心<s>3</s></a></li>
          <li><em>&#xe63c;</em><a href="Dinner.html">饭局管理</a></li>
          <li><em>&#xe63e;</em><a href="fans.html">我的好友</a></li>
          <li><em>&#xe611;</em><a href="index.html">退出</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<div class="mem-banner" style="background-image:url(upload/img11.jpg);"></div>


<div class="memwrap wrap clearfix">
  <div class="section fl">
    <div class="location tr"><a href="mem.html" class="current">基本资料</a><a href="pwd.html">修改密码</a><a href="binding.html">帐号绑定</a></div>
    <div class="pd20">
      <table class="baseinfo">
        <tr>
          <th>账号：</th>
          <td>1499391250@qq.com</td>
        </tr>
        <tr>
          <th>昵称：</th>
          <td><input type="text" value="设计--麻" class="baseipt"></td>
        </tr>
        <tr>
          <th valign="top">头像：</th>
          <td>
            <div class="user-photo img fl"><img src="upload/img12.png"></div>
            <div class="upfilebox mt20">
              <a href="javascript:;" class="button btn-upfile" id="user-photo">选择照片</a>
              <p class="mt10">支持jpg,gif,png格式，建议尺寸大于100*100。</p>
            </div>
          </td>
        </tr>
        <tr>
          <th>性别：</th>
          <td><label><input type="radio" name="RadioGroup1" value="男" id="RadioGroup1_0" checked>  男</label>&nbsp;&nbsp;&nbsp;&nbsp;
              <label><input type="radio" name="RadioGroup1" value="女" id="RadioGroup1_1">  女</label></td>
        </tr>
        <tr>
          <th>职业：</th>
          <td><input type="text" value="" class="baseipt"></td>
        </tr>
        <tr>
          <th>所在城市：</th>
          <td><select data-placeholder="上海市" style="width:154px;" class="chosen-select-no-single" tabindex="9">
              <option>上海市</option>
              <option>上海市</option>
            </select><select data-placeholder="上海市" style="width:154px;" class="chosen-select-no-single" tabindex="9">
              <option>上海市</option>
              <option>上海市</option>
            </select><select data-placeholder="长宁区" style="width:154px;" class="chosen-select-no-single" tabindex="9">
              <option>长宁区</option>
              <option>长宁区</option>
            </select></td>
        </tr>
        <tr>
          <th valign="top">个人简介：</th>
          <td>
            <textarea name="" cols="" rows="" class="baseinfo-textarea"></textarea>
            <p class="mt30 tc"><button type="button" name="save" value="" class="button btn-save">保存</button></p>
          </td>
        </tr>
      </table>
    </div>
  </div>
  <div class="aside fr">
    <div class="pd15">
      <div class="userimg"><img src="upload/img12.png"><i></i></div>
      <div class="user-level tc">大郭郭呐 <em></em><em></em><em></em></div>
      <div class="tc"><a href="javascript:;" class="button btn-control btn-follow"> + 关注</a><a href="javascript:;" class="button btn-control btn-sent"><em class="myfont f18">&#xe63f;</em> 私信</a></div>
      <div class="Praise tc">老师，中国，陕西 <em>&#xe61d;</em><em>&#xe61d;</em><em>&#xe61d;</em></div>
      
      <div class="txtwrap tc"><h1 class="f16">个人简介</h1>既能安静又能活泼，既能淑女又能犯二，<br>既能女汉子又能小清新～～～</div>
      <h1 class="f16">关注 4</h1>
      <ul class="followlist clearfix">
        <li><a href="#"><img src="upload/img12.png"></a></li>
        <li><a href="#"><img src="upload/img12.png"></a></li>
        <li><a href="#"><img src="upload/img12.png"></a></li>
        <li><a href="#"><img src="upload/img12.png"></a></li>
      </ul>
      <h1 class="f16">粉丝 4</h1>
      <ul class="followlist bd0 clearfix">
        <li><a href="#"><img src="upload/img12.png"></a></li>
        <li><a href="#"><img src="upload/img12.png"></a></li>
        <li><a href="#"><img src="upload/img12.png"></a></li>
        <li><a href="#"><img src="upload/img12.png"></a></li>
      </ul>
    </div>
  </div>
</div>

<script src="js/jquery.js"></script>
<script src="js/Action.js"></script>
<script src="js/upfiles.js"></script>

<script src="js/chosen.jquery.js"></script>
<script type="text/javascript">
$(document).ready(function($){
	//select 样式美化
	 var config = {
		'.chosen-select-no-single' : {disable_search_threshold:10}
	}
	for (var selector in config) {
		$(selector).chosen(config[selector]);
	}
	$("#up").uploadPreview({
		Img: "ImgPr",
	});
});
</script>
</html>