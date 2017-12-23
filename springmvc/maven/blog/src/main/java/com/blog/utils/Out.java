package com.blog.utils;


public class Out {
	public static void println(Object x){
		String message = String.valueOf(x);
		String time = TimeFormat.getCurrentTime();
		System.out.println(time + ":" + message);
	}
}
