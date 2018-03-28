<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>修改学科</title>
</head>
<body>
<div class="pd-20">
    <script type="text/javascript">
        $(function(){
            $("form").validate({
                'rules':{
                    'name':{
                        'required':true
                    }
                },
                submitHandler:function(form){
                	ajaxSubmitForm(form,true)
                }
            });
        });
    </script>
    <form action="<%=ctxPath%>/subject/update.do" class="form form-horizontal">
        <input type="hidden" name="id" value="${subject.id }" />
        <div class="row cl">
            <label class="form-label col-2">学科名称</label>
            <div class="formControls col-5">
                <input type="text" class="input-text"  name="name" value="${subject.name }" />
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