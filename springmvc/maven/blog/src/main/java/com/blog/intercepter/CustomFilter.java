package com.blog.intercepter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import com.blog.utils.Out;

/** 
 * @author Parker 
 * @description 过滤器Filter的工作原理 
 * {@linkplain https://www.cnblogs.com/coderland/p/5902878.html}
 */  
public class CustomFilter implements Filter{
	
	private FilterConfig filterconfig;
	
	public void init(FilterConfig filterConfig) throws ServletException{
		this.filterconfig = filterConfig;
		Out.println("Servlet Filter 初始化");
	}
	
	public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException{
		Out.println("Servlet Filter 过虑处理...");
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponseWrapper httpResponseWrapper = new HttpServletResponseWrapper((HttpServletResponse)response);
		
//		String getFilterName();//得到filter的名称。 
//		String getInitParameter(String name);//返回在部署描述中指定名称的初始化参数的值。如果不存在返回null. 
//		Enumeration getInitParameterNames();//返回过滤器的所有初始化参数的名字的枚举集合。 
//		public ServletContext getServletContext();//返回Servlet上下文对象的引用。
		//读取XML init-param 参数
		String loginStrings = filterconfig.getInitParameter("loginStrings");
		String allowStrings = filterconfig.getInitParameter("allowStrings");
		String redirectPath = filterconfig.getInitParameter("redirectPath");
		String disabletestfilter = filterconfig.getInitParameter("disabletestfilter");
		
		//是否设置过虑无效 Y是
		if(disabletestfilter.equals("Y")){
			chain.doFilter(request, response);
			return;
		}
		
		String[] loginStringsLists = loginStrings.split(";");
		String[] allowStringsLists = allowStrings.split(";");
		
		//当前uri
		String uri = httpRequest.getRequestURI();
		
		//需要过虑Uri
		if(!in_array(uri,allowStringsLists)){
			chain.doFilter(request, response);
			return;
		}
		
		//免过虑Uri
		if(in_array(uri,loginStringsLists)){
			chain.doFilter(request, response);
			return;
		}
		
		//登录验证
		//登录session
		String manager = (String) httpRequest.getSession().getAttribute("BlogManagerId");
		if(manager == null){
			httpResponseWrapper.sendRedirect(redirectPath);
			return;
		}else{
			chain.doFilter(request, response);
			return;
		}
	}
	
	private boolean in_array(String item, String[] Lists) {
		// TODO Auto-generated method stub
		if(Lists.length <=0){
			return false;
		}
		for(int i = 0;i<Lists.length;i++){
			if(item.indexOf(Lists[i])!=-1){
				return true;
			}
		}
		return false;
	}

	public void destroy(){
		filterconfig = null;
		Out.println("Servlet Filter 注销");
	}
}
