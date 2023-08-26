package org.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SuppressWarnings("serial")
@WebFilter(urlPatterns = {"*.jsp"})
public class EncodingFilter extends HttpFilter implements Filter{
	//인코딩 필터
	private static final Logger logger = LoggerFactory.getLogger(EncodingFilter.class);
	
	@SuppressWarnings("unused")
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		logger.info("::::: 요청 전 setEncoding filter : {}", request.getServletPath());
		
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(req, resp);
	}
}
