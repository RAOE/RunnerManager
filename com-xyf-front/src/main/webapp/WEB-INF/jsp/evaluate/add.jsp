<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>添加评价</title>
</head>

<%
if(request.getSession().getAttribute("adminUser")==null)
{
response.sendRedirect("../adminUser/login.do");	
}
 %>
<body>
<div class="pd-20">
    
    <form onsubmit="ajaxSubmitForm(this,true)" action="<%=ctxPath%>/evaluate/add.do?id=${user.id}&&adminId=${adminUser.id}"  method="post" class="form form-horizontal">
            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;运动员：${user.name}</p>
            
            
             &nbsp;&nbsp;&nbsp;&nbsp;<textarea  class="textarea" name="evaluate" rows="3" cols="20" style="width: 300px"
             >
                      
             </textarea>
     
            

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