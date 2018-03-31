<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>裁判列表</title>
</head>
<body>
    
<div class="pd-20">
    <table class="table table-border table-bordered table-bg table-hover" >
        <thead>
            <tr>
                <th>评价条数</th>
                <th>运动员</th>               
                <th>评价</th>
                <th>评分</th>
                
                <th>等级</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${AdminScoreList }" var="AdminScore">
                <tr>
                    <td>${AdminScore.id }</td>
                    <td>${AdminScore.name }
                    </td>
                    <td>${AdminScore.evaluate }
                    </td><td>${AdminScore.score }
                    </td>
                    <td>
                    <c:if test="${AdminScore.score>=80}">A</c:if>
                    <c:if test="${AdminScore.score>=60&&AdminScore.score<80}">B</c:if>
                    <c:if test="${AdminScore.score<60}">C</c:if>
                    
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>