<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="${pageContext.request.contextPath }/user/register2.do" method="post">
        邮箱：<input type="text" name="email" value="${param.email }"/> <br/><br/>
        邮箱：<input type="password" name="password" value="${param.password }" /> <br/><br/>
        
        <c:if test="${not empty message }">
            <span style="color: red;">${message }</span><br/><br/>
        </c:if>
        
        <input type="submit" value="注册" />
        
    </form>
</body>
</html>