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
    <form action="<%=ctxPath%>/user/serach.do">
        <input type="hidden" id="curr" name="curr" />
    	<div class="text-c"> 
                   注册日期：
    		<input type="text" onclick="WdatePicker()" name="beginTime" value="${param.beginTime }" class="input-text Wdate" style="width:120px;" />
    		-
    		<input type="text" onclick="WdatePicker()" name="endTime" value="${param.endTime }" class="input-text Wdate" style="width:120px;" />
    		<input type="text" name="param" value="" placeholder="运动员的名称" style="width:250px" class="input-text" />
    		<button class="btn btn-success" type="submit">查找</button>
    	</div>
	</form>
	<div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover">
            <thead>
                <tr>
                    <th>注册时间</th>
                    <th>姓名</th>
                    <th>性别</th>                   
                    <th>队伍</th>
                    <th>手机</th>
                    <th>年龄(岁)</th> 
                    <th>体重(KG)</th>                   
                    <th>描述</th>                                                        
                    <th>操作</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td><fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${user.name }</td>
                        <c:if test="${user.isMale==true}"><td>男</td></c:if>
                        <c:if test="${user.isMale==false}"><td>女</td></c:if>
                                             
                        <td>${user.team }</td>                       
                        <td>${user.phone }</td>
                        <td>${user.age }</td>
                        <td>${user.weight }</td>
                        <td>${user.description }</td>
                        
                        <td>
                           <!-- <button class="btn size-MINI radius" onclick="showLayer('修改用户','<%=ctxPath%>/user/update.do?id=${user.id}')">修改</button> -->
                         <!--   <button class="btn size-MINI radius" onclick="ajaxSubmit('<%=ctxPath%>/user/delete.do', 'id=${user.id}')">删除</button> --> 
                            <button class="btn size-MINI radius" onclick="showLayer('评价','<%=ctxPath%>/evaluate/add.do?id=${user.id}',370,300)">评价</button>
                         
                            <button class="btn size-MINI radius" onclick="ajaxSubmit('<%=ctxPath%>/user/delete.do', 'id=${user.id}')">删除</button>
                            
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
       
	</div>
</div>
 
</body>
</html>