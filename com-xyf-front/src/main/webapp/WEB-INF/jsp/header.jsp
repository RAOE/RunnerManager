<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="UTF-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="<%=ctxPath%>/lib/html5.js"></script>
<script type="text/javascript" src="<%=ctxPath%>/lib/respond.min.js"></script>
<script type="text/javascript" src="<%=ctxPath%>/lib/PIE_IE678.js"></script>
<![endif]-->
<link href="<%=ctxPath%>/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=ctxPath%>/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=ctxPath%>/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=ctxPath%>/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script type="text/javascript" src="<%=ctxPath%>/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=ctxPath%>/lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="<%=ctxPath%>/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="<%=ctxPath %>/lib/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=ctxPath %>/lib/validation/additional-methods.min.js"></script>
<script type="text/javascript" src="<%=ctxPath %>/lib/validation/localization/messages_zh.min.js"></script>
<script type="text/javascript" src="<%=ctxPath%>/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=ctxPath%>/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="<%=ctxPath%>/js/common.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=ctxPath%>/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=ctxPath%>/utf8-jsp/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="<%=ctxPath%>/utf8-jsp/lang/zh-cn/zh-cn.js"></script>