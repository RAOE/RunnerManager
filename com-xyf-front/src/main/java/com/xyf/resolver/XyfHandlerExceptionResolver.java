package com.xyf.resolver;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.xyf.utils.AjaxResult;
import com.xyf.utils.JsonUtils;

/**
 *
 * @author 徐塬峰
 */
@Component
public class XyfHandlerExceptionResolver implements HandlerExceptionResolver {
    private static final Logger logger = LogManager.getLogger(XyfHandlerExceptionResolver.class);

    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
            Exception ex) {

        logger.error("服务器出错了！", ex);

        //如果是ajax请求，就返回�?个json格式的出错提示信�?
        if (request.getHeader("X-Requested-With") != null) {
            try {
                response.getWriter().println(JsonUtils.toJson(AjaxResult.errorInstance("服务器出错了")));
            } catch (IOException e) {
                logger.error("服务器响应失败", e);
            }
            //返回�?个空的ModelAndView表示已经手动生成响应
            //return null表示使用默认的处理方式，等于没处�?
            return new ModelAndView();
        } else {
            return new ModelAndView("500");
        }
    }
}
