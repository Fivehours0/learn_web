package test_filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 过滤器的使用例子
 */
public class AdminFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpSession session = httpServletRequest.getSession();
        // 如果登录成功了，会将user属性放入到session中
        Object user = session.getAttribute("user");
        // 如果为null说明还没有登录
        if (user == null) {
            servletRequest.getRequestDispatcher("/index.jsp").forward(servletRequest, servletResponse);
        } else {
            // 如果登录了，让程序继续执行下去
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    public void destroy() {

    }
}
