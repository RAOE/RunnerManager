<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<title>我的桌面</title>
</head>
<body>
<h1>简介</h1>

这个项目是一个简单的比赛管理系统，该练手小项目希望能帮助到大家，SSM的整合

<h1>使用技术</h1>

IOC容器：Spring

Web框架：SpringMVC

ORM框架：Mybatis

数据源：C3P0

日志：log4j AOP

前端框架：Hui

其他插件: Ueditor
<h1>快速上手</h1>

<h4>1.运行环境和所需工具</h4>

建议使用以下环境,避免版本带来的问题<br/>
编译器：Eclipse
项目构建工具：Maven
数据库：Mysql
JDK版本：jdk1.8
Tomcat版本：Tomcat8.x

<h4>2.初始化项目</h4>
*在你的Mysql中，创建一个数据库名称为 pingpongmanager 的数据库，并导入我提供的 .sql 文件。<br/>
*进入src/main/resources修改beans.xml配置文件,把数据库登录名和密码，改为你本地的<br/>
*使用 Eclipse 导入项目，选择Maven项目选项，一路点击next就行，导入项目后，如果src目录等，都没显示出来，别急先使用Maven构建该项目<br/>
*在 Eclipse 中，配置我们的 Tomcat， 然后把使用Maven构建好的项目添加到Tomcat中<br/>
Maven install 顺序 :
<br/><br/>
   com-xyf-parent <br/>
   com-xyf-pojo <br/>
  com-xyf-common <br/>
   com-xyf-mapper <br/>
   com-xyf-service <br/>
   com-xyf-front

运行com-xyf-front

登录账户
超级管理员账户：admin 密码为：123123<br/>
管理账户：admin3  密码为：123123<br/>
运动员账户：1550000  密码为：123456<br/>


<h1>功能模块介绍</h1>

<h3>1.登录模块功能</h3>
<br/>
实现登录验证和登录信息的储存，根据不同的登录账户，对不同页面url进行角色设置
 <img src="/other/login.jpg" alt="主页" style="max-width:100%;">

<h3>2.裁判模块功能</h3>
<br/>
 <img src="/other/admin3.jpg" alt="主页" style="max-width:100%;"><br/>

裁判，裁判长
<p>可对、运动员信息、比赛信息 进行 增删改查 操作，管理员账户，可以重置非裁判账户的密码</p>
比赛管理：增加删除修改比赛,添加运动员到比赛中，对比赛中的学生进行评分并审核
 <img src="/other/score.jpg" alt="主页" style="max-width:100%;"><br/>

运动员管理：添加运动员信息时，其信息也会添加到登录表中，可以对学生进行评价
 <img src="/other/runner.jpg" alt="主页" style="max-width:100%;"><br/>

账户密码重置：
修改密码： 

<h3>3.裁判长模块</h3>
<br/>
 <img src="/other/admin3.jpg" alt="主页" style="max-width:100%;"><br/>



拥有最高权限
可以添加裁判信息
拥有上述所有功能。

<h3>4.运动员模块</h3>
<br/>
 <img src="/other/look.jpg" alt="主页" style="max-width:100%;"><br/>

运动员可以查看所在的比赛项目
运动员可以查看比赛的评分

<h3>4.其他模块</h3>
 <img src="/other/message.jpg" alt="主页" style="max-width:100%;"><br/>
 <img src="/other/password.jpg" alt="主页" style="max-width:100%;"><br/>
<br/>

<h1>最后</h1>
项目以做学习交流为目的。希望多多指教。如果觉得不错，请为它STAR！
借鉴或参考请先联系作者    <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=986771570&site=qq&menu=yes">联系我</a>

(986771570@qq.com)，有项目或者其他技术上的问题可以随时联系我，我会尽力去为您解答，欢迎Star或Fork，您的star和Fork是对作品的认同与肯定，感谢！




</body>
</html>