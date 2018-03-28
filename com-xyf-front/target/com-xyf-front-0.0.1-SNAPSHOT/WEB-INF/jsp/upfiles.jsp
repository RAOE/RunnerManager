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
<style>
  html,body{ background:none !important;}
</style>
</head>
<body>
  <div class="upfiles">
    <div class="hd"><span class="close">&#xe611;</span>上传头像</div>
    <div class="filesbody clearfix">
      <div class="user-photo img fl"><img id="ImgPr"></div>
        <div class="upfilebox f14 mt20">
          <label class="btn-upfiles"><input type="file" name="photo" id="up" />选择照片</label>
          <p class="mt10">支持jpg,gif,png格式，建议尺寸大于100*100。</p>
        </div>
    </div>
    <div class="controlbox tc"><button type="button" value="" name="" class="button btn-save">保存</button><button type="button" value="" name="" class="button btn-reset">取消</button></div>
  </div>
<script src="js/jquery.js"></script>
<script src="js/Action.js"></script>
<script src="js/upfiles.js"></script>
<script type="text/javascript">
$(document).ready(function($){
	$("#up").uploadPreview({
		Img: "ImgPr",
	});
});
</script>
</html>