package com.atguigu.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

/*
 * 发布会json字符串的工具类
 */
public class ResponseUtil {
	
	public static void write(HttpServletResponse response,Object object)throws Exception{
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        out.println(object);
        out.flush();
        out.close();
    }
}
