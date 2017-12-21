package com.blog.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * @author Parker
 * 获取时间（格式化时间）
 */

public class TimeFormat {
	public static String getCurrentTime(){
		//获取当前日期时间
		Date currtime = new Date(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String datetime = sdf.format(currtime);
		return datetime;
	}
}
