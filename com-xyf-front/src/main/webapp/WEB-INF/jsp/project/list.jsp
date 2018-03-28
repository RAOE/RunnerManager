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
                    <th>操作 <button class="btn size-M radius" onclick="showLayer('添加比赛项目','<%=ctxPath%>/project/add.do')"> 添加新比赛项目</button></th>
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
                                <button class="btn size-MINI radius" onclick="ajaxDelete('<%=ctxPath%>/project/delete.do','id=${project.id}')">删除</button>
	                            <button class="btn size-MINI radius" onclick="showLayer('成员管理','<%=ctxPath%>/projectUser/update.do?projectId=${project.id}')">成员管理</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
</div>
</body>
</html>