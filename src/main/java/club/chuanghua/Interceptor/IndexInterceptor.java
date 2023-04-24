package club.chuanghua.Interceptor;


import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexInterceptor implements HandlerInterceptor {

    //首页拦截
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        request.getRequestDispatcher("allTopic").forward(request,response);
        return false;
    }

}
