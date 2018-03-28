<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>管理员用户列表</title>
</head>
<body>
    
<div class="pd-20">
    <table class="table table-border table-bordered table-bg table-hover" >
        <thead>
            <tr>
                <th>管理员账号</th>
                <th>状态</th>
                <th>操作 <button class="btn size-M radius" onclick="showLayer('添加管理员','<%=ctxPath%>/adminUser/add.do')"> 添加</button></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${adminUserList }" var="adminUser">
                <tr>
                    <td>${adminUser.account }</td>
                    <td>
                        <c:if test="${adminUser.isDisabled }"><span class="label label-danger radius">已禁用</span></c:if>
                        <c:if test="${!adminUser.isDisabled }"><span class="label label-success radius">已启用</span></c:if>
                    </td>
                    <td>
                        <button class="btn size-MINI radius" onclick="ajaxDelete('<%=ctxPath%>/adminUser/delete.do','id=${adminUser.id }')">删除</button>
                        <button class="btn size-MINI radius" onclick="showLayer('重置密码','<%=ctxPath%>/adminUser/resetPassword.do?id=${adminUser.id }')">重置密码</button>
                        <button class="btn size-MINI radius" onclick="showLayer('分配角色','<%=ctxPath%>/adminUserRole/update.do?adminUserId=${adminUser.id }')">分配角色</button>
                        <button class="btn size-MINI radius" onclick="ajaxSubmit('<%=ctxPath%>/adminUser/toggleDisable.do','id=${adminUser.id }')">禁用/启用</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>