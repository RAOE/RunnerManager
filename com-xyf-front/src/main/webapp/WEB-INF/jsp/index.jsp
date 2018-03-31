<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>




<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<link href="<%=ctxPath%>/skin/default/skin.css" rel="stylesheet" type="text/css" id="skin" />
<title>智慧大校园乒乓球裁判管理系统</title>
</head>
<body>
<header class="Hui-header cl"> 
    <a class="Hui-logo l" title="乒乓球裁判系统">智慧大校园乒乓球裁判管理系统</a> 
	<ul class="Hui-userbar">
		<li class="dropDown dropDown_hover"><a class="dropDown_A">${sessionScope.adminUser.realname } <i class="Hui-iconfont">&#xe6d5;</i></a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a onclick="showLayer('修改密码','<%=ctxPath%>/adminUser/updatePassword.do',600,371)">修改密码</a></li>
				<li><a href="<%=ctxPath%>/adminUser/logout.do">退出</a></li>
			</ul>
		</li>
		<li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:;" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
				<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
				<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
				<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
				<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
				<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
			</ul>
		</li>
	</ul>
	<a aria-hidden="false" class="Hui-nav-toggle" href="#"></a> </header>
    <aside class="Hui-aside">
    	<input runat="server" id="divScrollValue" type="hidden" value="" />
    	<div class="menu_dropdown bk_2">
   <c:if test="${user!=null}">
    		
    		<dl id="menu-picture">
    		<dt><i class="Hui-iconfont">&#xe613;</i> 运动员栏目<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
    			<dd>
    				<ul>
    				
    				    <li><a _href="<%=ctxPath %>/user/showScore.do?id=${user.id}" href="javascript:void(0)">查看比赛成绩</a></li>    					
    				    <li><a _href="<%=ctxPath %>/user/showProject.do?id=${user.id}" href="javascript:void(0)">查看比赛项目</a></li>
    				        				    <li><a _href="<%=ctxPath %>/adminUser/evaluate.do?id=${user.id}" href="javascript:void(0)">对裁判进行评价评分</a></li>
    				                        				    
    				</ul>
    			</dd>
    			
    		</dl>
    		</c:if>
    		
    		<c:if test="${adminUser!=null}">
    		<dl id="menu-picture">
    		<dt><i class="Hui-iconfont">&#xe613;</i> 运动员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
    			<dd>
    				<ul>
    				    <li><a _href="<%=ctxPath %>/user/userManager.do" href="javascript:void(0)">运动员信息管理</a></li>    					
    				    <li><a _href="<%=ctxPath %>/user/add.do" href="javascript:void(0)">添加运动员</a></li>
    				                        				    
    				</ul>
    			</dd>
    		</dl>
    			<dl id="menu-picture">
    		<dt><i class="Hui-iconfont">&#xe613;</i> 裁判栏目<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
    			<dd>
    				<ul>
    				    <li><a _href="<%=ctxPath %>/adminUser/adminscore.do" href="javascript:void(0)">查看等级信息</a></li>    					
    				                        				    
    				</ul>
    			</dd>
    		</dl>
    		
    		
    		
    		
    	<dl id="menu-picture">
    		
    		<dt><i class="Hui-iconfont">&#xe613;</i> 比赛项目管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
    			<dd>
    				<ul>
    				                       
    				    <li><a _href="<%=ctxPath %>/project/list.do" href="javascript:void(0)">比赛项目管理</a></li>
    				    <li><a _href="<%=ctxPath %>/project/score.do" href="javascript:void(0)">比赛项目成绩</a></li>
    				    
    				</ul>
    			</dd>
    		</dl>
    		<c:if test="${adminUser.roleid==true}">
    		<dl id="menu-comments">
    			<dt><i class="Hui-iconfont">&#xe62e;</i>裁判长管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
    			<dd>
    				<ul>
                        <li><a _href="<%=ctxPath %>/project/verify.do" href="javascript:void(0)">审核比赛成绩</a></li>
                        <li><a _href="<%=ctxPath %>/adminUser/add.do" href="javascript:void(0)">添加裁判信息</a></li>    					
    				    <li><a _href="<%=ctxPath %>/user/userManager.do" href="javascript:void(0)">运动员信息管理</a></li>    					
    				    <li><a _href="<%=ctxPath %>/evaluate/show.do" href="javascript:void(0)">查看评价</a></li>    					
    				    
    				</ul>
    			</dd>
    			
    		</dl>
    		</c:if>
    		</c:if>
    		<dl id="menu-comments">
    			<dt><i class="Hui-iconfont">&#xe62e;</i>系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
    			<dd>
    				<ul>
    		<c:if test="${user!=null}">
				<li><a onclick="showLayer('修改密码','<%=ctxPath%>/user/updatePassword.do',600,371)">修改密码</a></li>
			</c:if>	    		   	
					<ul>
    		<c:if test="${adminUser!=null}">
    					    				    <li><a _href="<%=ctxPath%>/system/list.do" href="javascript:void(0)">系统信息</a></li>    					
    		
				<li><a onclick="showLayer('修改密码','<%=ctxPath%>/adminUser/updatePassword.do',600,371)">修改密码</a></li>
			
			</c:if>	
			   	
				<li><a href="<%=ctxPath%>/adminUser/logout.do">退出</a></li>
    				    
    				</ul>
    			</dd>
    		</dl>
    	</div>
    </aside>
<div class="dislpayArrow"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="我的桌面" data-href="welcome.jsp">我的桌面</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="<%=ctxPath %>/welcome.do"></iframe>
		</div>
	</div>
</section>

</body>
</html>