<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>修改学生（老师）</title>
</head>
<body>
<div class="pd-20">
    <form onsubmit="ajaxSubmitForm(this,true)" action="<%=ctxPath%>/user/update.do" class="form form-horizontal">
        <input type="hidden" name="id" value="${user.id }"  />
        <div class="row cl">
            <label class="form-label col-2">姓名</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="name" value="${user.name }" />
            </div>
            <div class="col-5"></div>
        </div>

        <div class="row cl">
            <label class="form-label col-2">性别</label>
            <div class="col-10">
                <input id="male" name="isMale" type="radio" value="true" <c:if test="${user.isMale }">checked="checked"</c:if> /><label for="male">男</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="female" name="isMale" type="radio" value="false" <c:if test="${not user.isMale }">checked="checked"</c:if> /><label for="female">女</label>
            </div>
        </div>
        
        <div class="row cl">
            <label class="form-label col-2">邮箱</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="email" value="${user.email }" />
            </div>
            <div class="col-5"></div>
        </div>
  
        <div class="row cl">
            <label class="form-label col-2">手机</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="phone" value="${user.phone }" />
            </div>
            <div class="col-5"></div>
        </div>
        
        <div class="row cl">
            <label class="form-label col-2">学校</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="school" value="${user.school }" />
            </div>
            <div class="col-5"></div>
        </div>
        
        <div class="row cl">
            <div class="col-9 col-offset-2">
                <input class="btn btn-primary radius" type="submit" value="修改" />
                <input class="btn btn-default radius" type="button" value="关闭" onclick="parent.location.reload()" style="margin-left: 30px;" />
            </div>
        </div>
    </form>
</div>
</body>
</html>