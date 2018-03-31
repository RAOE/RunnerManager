<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>添加评价</title>
<script src="<%=ctxPath%>/js/jquery.min.js"> </script>
<script src="<%=ctxPath%>/js/jquery.ratyli.min.js"></script>        

</head>


<body>
<div class="pd-20">
    
    <form onsubmit="ajaxSubmitForm(this,true)" action="<%=ctxPath%>/evaluate/useradd.do?id=${user.id}&&adminId=${admin.id}"  method="post" class="form form-horizontal">
            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;裁判姓名：${admin.realname}</p>
            
            <label class="form-label col-2">评价</label>
             &nbsp;&nbsp;&nbsp;&nbsp;<textarea  class="textarea" name="evaluate" rows="3" cols="20" style="width: 300px"
             >
      </textarea>
      <p>评分</p>
     <input type="text" class="input-text"  name="score" style="width: 100px"/>
      
      
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