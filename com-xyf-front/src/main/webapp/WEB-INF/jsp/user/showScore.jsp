<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>学生（老师）列表</title>
</head>
<body>
<div class="pd-20">
    
	<div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover">
            <thead>
                <tr>
                    <th>比赛项目</th>
                    <th>裁判姓名</th>
                    <th>运动员姓名</th>                   
                    <th>所在队伍</th>
                    <th>最终成绩</th>                                                        
                    <th>结果</th>                                                        
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${userScoresList}" var="userScore">
                    <tr>
                        <td>${userScore.project_name}</td>
                                             
                        <td>${userScore.admin_name }</td>    
                         <td>${userScore.user_name }</td>
                                           
                        <td>${userScore.user_team }</td>                       
                       <td>${userScore.score }</td>                       
                       <td> <c:if test="${userScore.isDeleted=true}">通过</c:if>
                       
                       <c:if test="${userScore.isDeleted=false}">未通过</c:if>
                       </td>                       
                        
                      
                    </tr>
                </c:forEach>

            </tbody>
        </table>
       
	</div>
</div>
 
</body>
</html>