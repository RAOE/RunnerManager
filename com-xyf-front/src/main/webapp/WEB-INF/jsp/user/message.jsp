<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp"%>
<title>上传图片</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<script type="text/javascript" charset="utf-8"
	src="<%=ctxPath%>/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=ctxPath%>/utf8-jsp/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="<%=ctxPath%>/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	var ue = UE.getEditor('editor');
</script>

<style type="text/css">
div {
	width: 100%;
}
</style>
</head>
<body>
<c:forEach  items="${messageList}" var="M">
	<ul class="commentList">
		<li class="item cl"><a href="#"><i
				class="avatar size-L radius"><img alt="" src="<%=ctxPath%>/static-h-ui-net/h-ui/images/ucnter/avatar-default.jpg"></i></a>
			<div class="comment-main">
				<header class="comment-header">
					<div class="comment-meta">
						<a class="comment-author" href="#">${M.name}</a> 评论于
						<time title="${M.createTime}" datetime="2014-08-31T03:54:20">"${M.createTime}
							</time>
					</div>
				</header>
				<div class="comment-body">
					<p>
						<a href="#">@某人</a> ${M.message}
					</p>
				</div>
			</div></li>
	</ul>
</c:forEach>
	<ul class="commentList">
		<li class="item cl"><a href="#"><i
				class="avatar size-L radius"><img alt=""
					src="<%=ctxPath%>/static-h-ui-net/h-ui/images/ucnter/avatar-default.jpg"></i></a>
			<div class="comment-main">
				<header class="comment-header">
					<div class="comment-meta">
						<a class="comment-author" href="#">辉哥</a> 评论于
						<time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20">2014-8-31
							15:20</time>
					</div>
				</header>
				<div class="comment-body">
					<p>
						<a href="#">@某人</a> 你是猴子派来的救兵吗？
					</p>
				</div>
			</div></li>
	</ul>
<form action="<%=ctxPath%>/message/submit.do?id=${adminUser.id}">
      <div >
			<script id="editor" type="text/plain"
				style=" height: 200px; margin:0 auto;">提交你的评论</script>
			<div class="col-5"></div>
	 	&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary radius">提交</button>
	   <input type="checkBox" value="是否匿名提交" name="checked">是否匿名
	 </div>
</form>


<!-- 
	<div>
		<form action="<%=ctxPath%>/UeditorServlet">
			<h4>提交你的评论</h4>
			<script id="editor" type="text/plain"
				style="width: 1024px; height: 500px;"></script>
			<div class="col-5"></div>
	</div>
 -->


</body>
</html>