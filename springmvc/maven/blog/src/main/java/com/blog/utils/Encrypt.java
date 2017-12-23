package com.blog.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

/*
 * Parker
 * 加密算法
 * 
 */
public class Encrypt {
	
	/*
	 * MD5
	 */
	public static String Md5(String message) throws NoSuchAlgorithmException, UnsupportedEncodingException{
		MessageDigest md5 = MessageDigest.getInstance("MD5");
		BASE64Encoder base64en = new BASE64Encoder();
		String encryptStr = base64en.encode(md5.digest(message.getBytes("utf-8")));
		return encryptStr;
	}
}
