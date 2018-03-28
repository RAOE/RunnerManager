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
       <table class="table table-border table-bordered">
       
       <tbody>
              <tr>
                <th>本地端口</th>
                <td>${system.port}</td>
              </tr>
              <tr>
                <th>访问者地址</th>
                <td>${system.address }</td>
              </tr>
              <tr>
                <th>服务器地址</th>
                <td>${system.servletURL }</td>
              </tr>
                <tr>
                <th>字符编码</th>
                <td>${system.character }</td>
              </tr>
            </tbody>
       
       </table>
       
       
	</div>
	
</div>
 
</body>
</html>