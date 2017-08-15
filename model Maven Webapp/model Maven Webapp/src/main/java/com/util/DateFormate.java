package com.util;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateFormate {
	static SimpleDateFormat sdf = new SimpleDateFormat();
	/**
	 * 把日期转换为字符串格式。
	 * @param date
	 * @return
	 */
	public static String dateFormate(Date date){
		return sdf.format(date);
	}
	/**
	 * 把字符串转换为时间格式。
	 * @param str
	 * @return
	 */
	public static Date dateParse(String str){
		try {
			return  (Date) sdf.parse(str);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
