package com.blog.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.blog.utils.Out;

public class CheckLoginStatusInterceptor extends HandlerInterceptorAdapter{
	//请求处理完成之后
	@Override
	public void afterCompletion (HttpServletRequest request,HttpServletResponse response,Object handler,Exception ex) throws Exception{
		Out.println("请求处理完成啦！");
		super.afterCompletion(request, response, handler, ex);
	}
	
	//处理器执行完毕之后
	@Override
	public void postHandle(HttpServletRequest request,HttpServletResponse response,Object handler,ModelAndView modelAndView) throws Exception{
		Out.println("处理器执行完毕啦！");
		super.postHandle(request, response, handler, modelAndView);
	}
	
	//处理器实际执行之前
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws Exception{
		Out.println("处理器实际执行之前！");
		HttpSession session = request.getSession();
		if(session.getAttribute("BlogManagerAccount") == null){
			Out.println("请先登录");
			response.sendRedirect("/blog/unlogin");
		}else{
			Out.println("系统已登录："+session.getAttribute("BlogManagerAccount"));
		}
		return super.preHandle(request, response, handler);
	}
}
