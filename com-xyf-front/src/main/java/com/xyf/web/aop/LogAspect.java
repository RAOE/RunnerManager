package com.xyf.web.aop;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.validation.BindingResult;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.xyf.pojo.User;
import com.xyf.utils.JsonUtils;
/**
 *ڼ�¼��־
 * @author Ray
 *
 */
@Aspect
public class LogAspect {

    private static final Logger logger = LogManager.getLogger("日志");

    @Pointcut("@annotation(org.springframework.web.bind.annotation.RequestMapping)")
    public void controller() {

    }
    
    //环绕通知 面向切面编程־
    @Before("controller()")
    public void before(JoinPoint joinPoint) throws Throwable {

        if (!logger.isInfoEnabled()) {
            return;
        }
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Long userId = null;
        if (user != null) {
            userId = user.getId();
        }

        Object[] args = joinPoint.getArgs();
        for (int i = 0; i < args.length; i++) {
            if (args[i] instanceof ServletRequest) {
                args[i] = "request";
            } else if (args[i] instanceof ServletResponse) {
                args[i] = "response";
            } else if (args[i] instanceof MultipartFile) {
                args[i] = "MultipartFile";
            } else if (args[i] instanceof BindingResult) {
                args[i] = "BindingResult";
            }
        }

        logger.info("", userId, joinPoint.getSignature(), JsonUtils.toJson(args));
    }
}
