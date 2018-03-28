<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>项目成员列表</title>
</head>
<body>
<div class="pd-20">
   
	<div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover">
            <thead>
                <tr>
                
                    <th>姓名</th>
                    <th>性别</th>                   
                    <th>队伍</th>
                    <th>描述</th>                                                        
                    <th>操作 <button class="btn size-M radius" onclick="showLayer('添加比赛成员','<%=ctxPath%>/projectUser/add.do?projectId=${projectId}')"> 添加比赛成员</button>
                    
                                      
                    </th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td>${user.name }</td>
                        <c:if test="${user.isMale==true}"><td>男</td></c:if>
                        <c:if test="${user.isMale==false}"><td>女</td></c:if>
                                             
                        <td>${user.team }</td>                       
                        <td>${user.description }</td>
                        
                        <td>
                           <!-- <button class="btn size-MINI radius" onclick="showLayer('修改用户','<%=ctxPath%>/user/update.do?id=${user.id}')">修改</button> -->
                         <!--   <button class="btn size-MINI radius" onclick="ajaxSubmit('<%=ctxPath%>/user/delete.do', 'id=${user.id}')">删除</button> --> 
                            <button class="btn size-MINI radius" onclick="ajaxSubmit('<%=ctxPath%>/projectUser/delete.do', 'id=${user.id}&&projectId=${projectId}')">删除</button>
                            
                        </td>
                    </tr>
                </c:forEach>
  
            </tbody>
        </table>
       
	</div>
</div>
 <div class="row cl">
            <div class="col-9 col-offset-2">
                <input class="btn btn-default radius" type="button" value="返回上一级页面" onclick="parent.location.reload()" style="margin-left: 1000px;" />
            </div>
    </div>
</body>
</html>