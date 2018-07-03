<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp"%>
<title>添加运动员</title>
</head>
<body>
	<div class="pd-20">
		<form onsubmit="ajaxSubmitForm(this,true)"
			action="<%=ctxPath%>/user/addSubmit.do" class="form form-horizontal"
			method="post" name="form1">
		
             <div class="row cl">
				<label class="form-label col-2"><h3>用户添加模块</h3></label><br/>
				
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2" >姓名</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" name="name" value="" />
				</div>
				<div class="col-5"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-2">性别</label>
				<div class="col-10">
					<input id="male" name="isMale" type="radio" value="true"
						checked="checked"><label for="male">男</label>&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="female" name="isMale" type="radio" value="false" /><label
						for="female">女</label>
				</div>
			</div>

			<div class="row cl">
				<label class="form-label col-2">年龄(岁)</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" name="age" value="" />
				</div>
				<div class="col-5"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-2">手机(作为登陆账号)</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" name="phone" value="" />
				</div>
				<div class="col-5"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-2">密码</label>
				<div class="formControls col-5">
					<input type="password" class="input-text" name="password" value="" />
				</div>
				<div class="col-5"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-2">队伍</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" name="team" value="" />
				</div>
				<div class="col-5"></div>
			</div>


			<div class="row cl">
				<label class="form-label col-2">体重(kg)</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" name="weight" value="" />
				</div>
				<div class="col-5"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-2">身高(cm)</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" name="height" value="" />
				</div>
				<div class="col-5"></div>
			</div>


			<div class="row cl">
				<label class="form-label col-2">详细描述</label>
				<div class="formControls col-5">
					<input type="text" class="textarea" name="description" value="" />
				</div>
				<div class="col-5"></div>
			</div>




			<div class="row cl">
				<div class="col-9 col-offset-2">
					<input class="btn btn-primary radius" type="submit" value="添加" />
					<input class="btn btn-default radius" type="button" value="关闭"
						onclick="parent.location.reload()" style="margin-left: 30px;" />
				</div>
			</div>
		</form>
	</div>
</body>
</html>