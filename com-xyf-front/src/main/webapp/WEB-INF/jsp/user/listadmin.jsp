<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>运动员列表</title>
</head>
<body>
<div class="pd-20">
    
	<div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover">
            <thead>
                <tr>
                    <th>姓名</th>
                    <th>手机</th>
                    <th>描述</th>                                                        
                    <th>操作</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${adminList}" var="admin">
                    <tr>
                        <td>${admin.realname }</td>
                        <td>${admin.phone }</td>
                                             
                        <td>${admin.description }</td>
                        
                        <td>
                           <!-- <button class="btn size-MINI radius" onclick="showLayer('修改用户','<%=ctxPath%>/user/update.do?id=${user.id}')">修改</button> -->
                         <!--   <button class="btn size-MINI radius" onclick="ajaxSubmit('<%=ctxPath%>/user/delete.do', 'id=${user.id}')">删除</button> --> 
                            <button class="btn size-MINI radius" onclick="showLayer('评价','<%=ctxPath%>/evaluate/useradd.do?id=${admin.id}',470,400)">评价该裁判</button>
                         
                            
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
       
	</div>
</div>
 
</body>
</html>