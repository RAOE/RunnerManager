<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="">
<meta name="description" content="mezz">
<meta name="author" content="mezz">
<link href="css/css.css" rel="stylesheet">
<link href="css/chosen.css" rel="stylesheet">
<!--[if lt IE 9]>
    <link href="css/ie.css" rel="stylesheet" type="text/css" >
    <meta http-equiv="X-UA-Compatible" content="IE=8" >
<![endif]-->
<!--[if lte IE 6]><meta http-equiv="refresh" content="0;url=IE6/IE6.html"><![endif]-->
<link href="favicon.ico" rel="SHORTCUT ICON">
<title>17素材·私厨 - 为你推荐遍布全球最新鲜，最与众不同的顶级生活方式</title>
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
    <div class="location tr"><a href="Dinner.html">参加的饭局</a><a href="Host.html">主办的饭局</a><a href="Release.html" class="current">发布饭局</a></div>
    <div class="Participate pd30">
      <table class="baseinfo participate-tab">
        <tr>
          <th>活动标题：</th>
          <td><input type="text" name="" value="" class="baseipt"></td>
        </tr>
        <tr>
          <th>活动价格：</th>
          <td><select data-placeholder="200" style="width:185px;" class="chosen-select-no-single" tabindex="9">
              <option>200</option>
              <option>200</option>
            </select> 人/元</td>
        </tr>
        <tr>
          <th>报名人数：</th>
          <td><input type="text" name="" value="" class="baseipt" style="width:185px"> 人</td>
        </tr>
        <tr>
          <th>活动时间：</th>
          <td><input id="" class="Wdate" type="text" onfocus="WdatePicker({minDate:'%y-%M-{%d+1}',isShowClear:false,isShowToday:false,readOnly:true})"/>&nbsp;&nbsp;&nbsp;&nbsp;截至报名时间：<input id="" class="Wdate" type="text" onfocus="WdatePicker({minDate:'%y-%M-{%d+1}',isShowClear:false,isShowToday:false,readOnly:true})"/></td>
        </tr>
        <tr>
          <th>活动玩法：</th>
          <td>
            <label><input type="radio" name="RadioGroup1" value="先到先得" id="RadioGroup1_0"> 先到先得 </label>
            <label><input type="radio" name="RadioGroup1" value="双向选择" id="RadioGroup1_1">  双向选择 </label>
            <label><input type="radio" name="RadioGroup1" value="大数据匹配" id="RadioGroup1_2">  大数据匹配 </label>
          </td>
        </tr>
        <tr>
          <th valign="top">活动标签：</th>
          <td class="label-active">
            <a href="javascript:;" class="label-name">标签</a><a href="javascript:;" class="label-name">标签</a><a href="javascript:;" class="label-name">标签</a><a href="javascript:;" class="label-name">标签</a><a href="javascript:;" class="label-name">标签</a>
            <p class="mt10"><input type="text" name="" value="" class="baseipt"> 多个标签请用“空格”分开</p>
          </td>
        </tr>
      </table>
      活动照片：
      <div class="photo clearfix">
        <div class="photo-control fl">
          <div class="active-photo img"><img id="ImgPr"></div>
          <p class="mt10 clearfix"><a href="javascript:;" class="button dele fr">删除图片</a><label class="btn-upfiles"><input type="file" name="photo" id="up" />修改图片</label></p>
        </div>
        <div class="photo-info fl">
          <textarea name="" cols="" rows="" class="area"></textarea>
        </div>
      </div>
      <div class="photo clearfix">
        <div class="photo-control fl">
          <div class="active-photo img "><img id="ImgPr2"></div>
          <p class="mt10 tc"><label class="btn-upfiles"><input type="file" name="photo" id="up2" />添加</label></p>
          
        </div>
        <div class="photo-info fl">
          <textarea name="" cols="" rows="" class="area"></textarea>
        </div>
      </div>
      <p class="mt30">活动照片：</p>
      <textarea name="" cols="" rows="" class="area2"></textarea>
      <div class="Release-submit">
        <input name="" type="checkbox" value="">  我已阅读并同意<a href="#" class="o">《17素材服务条款》</a>
        <p class="mt20"><button type="button" name="" value="" class="button btn-submit">提交</button><button type="button" name="" value="" class="button btn-reset">取消</button></p>
      </div>
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
<script src="date/WdatePicker.js"></script>
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
	$("#up2").uploadPreview({
		Img: "ImgPr2",
	});
});
</script>
</html>