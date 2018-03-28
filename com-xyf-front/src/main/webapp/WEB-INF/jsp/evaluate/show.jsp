<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>学科列表</title>
</head>
<body>

<div class="pd-20">

    <table class="table table-border table-bordered table-bg table-hover" >
        <thead>
            <tr>
                <th>裁判名称</th>
                <th>运动员名称</th>
                <th>裁判评价</th>
                               <th>操作</th>
               
        </thead>
        <tbody>
            <c:forEach items="${evaluateList }" var="evaluate">
                <tr >
                    <td>${evaluate.admin_name }</td>
                    <td>${evaluate.user_name }</td>
                
                    <td>${evaluate.evaluate }</td>
                    <td>
                        <button class="btn btn-danger radius" onclick="ajaxDelete('<%=ctxPath%>/evaluate/delete.do','id=${evaluate.id}')">删除</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>