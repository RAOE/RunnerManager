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
                    <th>性别</th>
                    <th>描述</th>                   
                    <th>操作 </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${userList }" var="user">
                    <tr>
                        <td>${user.name }</td>
                         <c:if test="${user.isMale==true}"><td>男</td></c:if>
                        <c:if test="${user.isMale==false}"><td>女</td></c:if>                        <td>${user.team }</td>                       
                     
                        <td>
	                            <button class="btn size-MINI radius" onclick="showLayer('成员管理','<%=ctxPath%>/user/addscore.do?projectId=${projectId}&&userId=${user.id}',600,371)">评分</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
</div>
</body>
</html>