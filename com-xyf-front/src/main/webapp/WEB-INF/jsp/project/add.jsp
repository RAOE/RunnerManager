<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   

<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>添加项目</title>
</head>
<body>
<div class="pd-20">
    <form onsubmit="ajaxSubmitForm(this,true)" action="<%=ctxPath%>/project/add.do" method="post"  enctype="multipart/form-data" class="form form-horizontal">
    
        <div class="row cl">
            <label class="form-label col-2">项目名称</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="name" />
            </div>
            <div class="col-5"></div>
        </div>

       
        <div class="row cl">
            <label class="form-label col-2">项目描述</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="description" />
            </div>
            <div class="col-5"></div>
        </div>
        
          <div class="row cl">
            <label class="form-label col-2">比赛时间</label>
            <div class="formControls col-5">
    		<input type="text" onclick="WdatePicker()" name="beginTime" value="" class="input-text Wdate" style="width:120px;" />
            </div>
            <div class="col-5"></div>
        </div>
         
             <div class="row cl">
            <label class="form-label col-2">比赛地点</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="location" />
            </div>
            <div class="col-5"></div>
        </div>
        
        
       <div class="row cl">
            <label class="form-label col-2">承办方</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="country" />
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