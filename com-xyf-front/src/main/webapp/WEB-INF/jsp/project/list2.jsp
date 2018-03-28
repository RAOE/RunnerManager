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
<div class="pd-20">
        <table class="table table-border table-bordered table-bg table-hover">
            <thead>
                <tr>
                    <th>名称</th>
                    <th>举办时间</th>
                    <th>比赛地点</th>                   
                    <th>承办方</th>                  
                    <th>描述</th>                    
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${projectList }" var="project">
                    <tr>
                        <td>${project.name }</td>
                        <td><fmt:formatDate value="${project.begintime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${project.location }</td>
                        <td>${project.country }</td>
                        
                        <td>${project.description }</td>
                     
                        <td>
	                            <button class="btn size-MINI radius" onclick="showLayer('成员管理','<%=ctxPath%>/projectUser/showallscore.do?projectId=${project.id}')">审核当场比赛的分数</button>
                        
                       </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
</div>
</body>
</html>