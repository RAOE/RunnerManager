<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>修改自己的密码</title>
</head>
<body>
<div class="pd-20">
    <form onsubmit="ajaxSubmitForm(this,true)" action="<%=ctxPath %>/user/updatePassword.do?id=${user.id}" class="form form-horizontal">
    
        <div class="row cl">
            <label class="form-label col-2">旧密码</label>
            <div class="formControls col-5">
                <input type="password" class="input-text"  name="password" />
            </div>
            <div class="col-5"></div>
        </div>

        <div class="row cl">
            <label class="form-label col-2">新密码</label>
            <div class="formControls col-5">
                <input type="password" class="input-text"  name="newpassword" />
            </div>
            <div class="col-5"></div>
        </div>
        
        <div class="row cl">
            <label class="form-label col-2">重复新密码</label>
            <div class="formControls col-5">
                <input type="password" class="input-text"  name="renewpassword" />
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