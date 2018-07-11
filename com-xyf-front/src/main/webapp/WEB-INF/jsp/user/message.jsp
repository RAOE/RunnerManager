<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%String ctxPath=request.getContextPath(); %>
    <title>上传图片</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <script type="text/javascript" charset="utf-8" src="<%=ctxPath%>/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=ctxPath%>/utf8-jsp/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="<%=ctxPath%>/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
 <script type="text/javascript">
        //实例化编辑器
        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
        var ue = UE.getEditor('editor');
    </script>
    
    <style type="text/css">
        div{
            width:100%;
        }
    </style>
</head>
<body>

 <c:forEach items="${messagelist}" var="messages">
<p>用户:${messages.username}</p>
<p>评论:${messages.content}</p>
 </c:forEach>



<div>
    <form action="<%=ctxPath%>/UeditorServlet">
     <h1>提交你的评论</h1>
     <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
            <div class="col-5"></div>
        </div>
        
                <button type="submit">提交</button>
<input type="checkBox" value="是否匿名提交" name="checked">匿名提交 </input>      
    <div style="color:red">操作:提交成功用户积分+20</div></label>
   </div> 
</form>

</body>
</html>