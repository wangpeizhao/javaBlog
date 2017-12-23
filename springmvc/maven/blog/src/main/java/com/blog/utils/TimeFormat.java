package com.blog.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * @author Parker
 * 获取时间（格式化时间）
 */

public class TimeFormat {
	
	//String
	public static String getCurrentTime(){
		//获取当前日期时间
		Date currtime = new Date(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String datetime = format.format(currtime);
		return datetime;
	}
	
	//Date
	public static Date getCurrentDateTime(){
		//获取当前日期时间
		Date sqlDate = new java.sql.Date(new Date().getTime());
        return sqlDate;
	}
}
