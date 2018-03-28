<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String ctxPath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript" src="<%=ctxPath%>/lib/ueditor/ueditor.config.js"/></script>
    <script type="text/javascript" src="<%=ctxPath%>/lib/ueditor/ueditor.all.min.js"></script>   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form onsubmit="submitAsk(this)" action="<%=ctxPath %>/" method="post">
                 
                    
                    <br/>
                    <span class="label label-danger">全部！！报错信息：</span>
                    <script id="errorInfo" name="errorInfo"  type="text/plain"></script>
                    <script type="text/javascript">
                        <!-- 实例化编辑器 -->
                        var ue1 = UE.getEditor('errorInfo',{
                        	"serverUrl":"<%=ctxPath%>/upload.do",
                            "elementPathEnabled" : false,
                            "wordCount":false,
                            "initialFrameHeight":200,
                            "toolbars":[ ['simpleupload','emotion','attachment'] ]
                        });
                    </script>                        
                    
                    <br/>
                    <span class="label label-danger">相关代码：</span>
                    <script id="errorCode" name="errorCode"  type="text/plain"></script>
                    <script type="text/javascript">
                        <!-- 实例化编辑器 -->
                        var ue2 = UE.getEditor('errorCode',{
                        	"serverUrl":"<%=ctxPath%>/upload.do",

                            "elementPathEnabled" : false,
                            "wordCount":false,
                            "initialFrameHeight":200,
                            "toolbars":[ ['simpleupload','emotion','attachment'] ]
                        });
                    </script>                        
                    
                    <br/>
                    <span class="label label-danger">问题描述：</span>
                    <script id="description" name="description"  type="text/plain"></script>
                    <script type="text/javascript">
                        <!-- 实例化编辑器 -->
                        var ue3 = UE.getEditor('description',{
                        	"serverUrl":"<%=ctxPath%>/upload.do",

                            "elementPathEnabled" : false,
                            "wordCount":false,
                            "initialFrameHeight":200,
                            "toolbars":[ ['simpleupload','emotion','attachment'] ]
                        });
                    </script>
                    <br/>
                    <input type="submit"  class="btn btn-default" value="提交问题" />
                </form>
</body>
</html>