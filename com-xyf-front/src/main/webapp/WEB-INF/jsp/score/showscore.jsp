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
                    <th>比赛项目</th>
                    <th>裁判名称</th>
                    <th>运动员名称</th>
                    <th>成绩</th>
                    <th>操作 </th>
                     <th>状态</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${userScoreList}" var="userScore">
                    <tr>
                        <td>${userScore.project_name }</td>
                        <td>${userScore.admin_name }</td>
                        <td>${userScore.user_name }</td>
                        <td>${userScore.score }</td>
                        
                        
                        <td>
                        
                      <c:if test="${userScore.isDeleted==false}">  <button class="btn btn-primary radius	" onclick="ajaxSubmit('<%=ctxPath%>/projectUser/scoreUp.do?id=${userScore.id}')">
                                                   通过</button>
                       </c:if>
                        </td>
                       <td>
                         <c:if test="${userScore.isDeleted==true}">  <button class="btn btn-success radius">
                                                   已通过</button>
                       </c:if>
                       
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
</div>
</body>
</html>