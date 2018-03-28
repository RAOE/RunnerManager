<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>给运动员评分</title>
</head>
<%
if(request.getSession().getAttribute("adminUser")==null)
{
response.sendRedirect("../adminUser/login.do");	
}
 %>
<body>
<div class="pd-20">

  
    <form onsubmit="ajaxSubmitForm(this,true)" action="<%=ctxPath %>/user/addscoresubmit.do" class="form form-horizontal">
        <input type="hidden" name="id" value="${user.id}" />
                <input type="hidden" name="adminId" value="${adminUser.id}" />
                    <input type="hidden" name="projectId" value="${projectId}" />
        
          <div class="row cl">
            <label class="form-label col-2">裁判</label>
            <div class="formControls col-5">${adminUser.name}</div>
            <div class="col-5"></div>
        </div>
        <div class="row cl">
            <label class="form-label col-2">运动员</label>
            <div class="formControls col-5">${user.name}</div>
            <div class="col-5"></div>
        </div>
        <div class="row cl">
            <label class="form-label col-2">评分</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="score"/>
            </div>
            <div class="col-5"></div>
        </div>
        <div class="row cl">
            <div class="col-9 col-offset-2">
                <input class="btn btn-primary radius" type="submit" value="提交" />
                <input class="btn btn-default radius" type="button" value="关闭" onclick="parent.location.reload()" style="margin-left: 30px;" />
            </div>
        </div>
    </form>
</div>
</body>
</html>