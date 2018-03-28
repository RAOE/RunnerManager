<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>项目列表</title>
</head>
<body>

<br/>
<br/>

<h1>比赛<small>项目列表</small></h1>
 <form action="<%=ctxPath%>/project/showscore.do">
      <div>   
           <select class="select-box" id="country_select" class="col-md-6" name="project">
                    <c:forEach items="${projectList}" var="project">    
                            <option value="${project.name}">  
                                ${project.name}</option>
                    </c:forEach>                                   
          </select>      
     
        <br/>
        
      </div>   
         <div class="row cl">
            <div class="col-9 col-offset-2">
                <input class="btn btn-primary radius" type="submit" value="选择" />
            </div>
        </div>  
</form>


</body>
</html>