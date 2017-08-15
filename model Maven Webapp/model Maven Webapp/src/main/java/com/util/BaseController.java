package com.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;


public class BaseController extends HttpServlet{
	public HttpServletRequest getRequest(){
		return this.getRequest();
	}
	public HttpServletResponse getResponse(){
		return this.getResponse();
	}
	public HttpSession getSession(){
		return this.getSession();
	}
	public Cookie getCookie(){
		return this.getCookie();
	}
	public void writeJson(Object obj){
		String string=JSON.toJSONString(obj);
		
		try {
			PrintWriter out= getResponse().getWriter();
			out.print(string);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
