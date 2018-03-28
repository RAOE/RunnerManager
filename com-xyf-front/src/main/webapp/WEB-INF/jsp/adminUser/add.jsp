<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>添加管理员账号</title>
</head>
<body>
<div class="pd-20">
    <form onsubmit="ajaxSubmitForm(this,true)" action="<%=ctxPath %>/adminUser/add.do" class="form form-horizontal">
    
        <div class="row cl">
            <label class="form-label col-2">裁判账号</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="name" />
            </div>
            <div class="col-5"></div>
        </div>
            
        
        <div class="row cl">
            <label class="form-label col-2">密码</label>
            <div class="formControls col-5">
                <input type="password" class="input-text"  name="password" />
            </div>
            <div class="col-5"></div>
        </div>
            
        <div class="row cl">
            <label class="form-label col-2">裁判名称</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="realname" />
            </div>
            <div class="col-5"></div>
        </div>    
            
            
       <div class="row cl">
            <label class="form-label col-2">联系方式</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="phone" />
            </div>
            <div class="col-5"></div>
        </div>    
        
        <div class="row cl">
            <label class="form-label col-2">详细描述</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="description" />
            </div>
            <div class="col-5"></div>
        </div>  
        
         
        <div class="row cl">
        
            <label class="form-label col-2">所属角色</label>
            <div class="formControls col-5">
              <input id="role" type="checkbox" name="role" value="裁判"/><label for="role" style="margin-right: 10px;">提升为裁判长</label>
           
           
            </div>
            <div class="col-5"></div>
        </div>

        <div class="row cl">
            <div class="col-9 col-offset-2">
                <input class="btn btn-primary radius" type="submit" value="添加" />
                <input class="btn btn-default radius" type="button" value="关闭" onclick="parent.location.reload()" style="margin-left: 30px;" />
            </div>
        </div>
    </form>
</div>
</body>
</html>