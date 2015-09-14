package cn.hfut.mam.utils;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author ZhangXu
 * 2015-4-12
 * 下午10:41:51
 */

/**
 * Servlet Filter implementation class AdminFilter
 */
@WebFilter("/MemeberFilter")
public class MemberFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public MemberFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse rsp = (HttpServletResponse) response;
		req.setCharacterEncoding("UTF-8");
		rsp.setCharacterEncoding("UTF-8");
		rsp.setHeader("contentType", "text/html; charset=utf-8");
		String requestURI = null;
		// 如果是登录页面不限制session
		try {
			requestURI = req.getRequestURI().substring(
					req.getRequestURI().lastIndexOf("/") - 6,
					req.getRequestURI().lastIndexOf("/"));
			if (requestURI.equals("member")) {
				if (req.getSession() == null
						|| req.getSession().getAttribute("email") == null) {
					((HttpServletResponse) response).sendRedirect(req
							.getContextPath() + "/index.action");
					return;
				}
			}

			chain.doFilter(req, rsp);
		} catch (Exception e) {
			chain.doFilter(req, rsp);
		}

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}

}