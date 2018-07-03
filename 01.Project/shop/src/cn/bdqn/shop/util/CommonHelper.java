package cn.bdqn.shop.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonHelper {
	/**
	 * 把java中的data转成sql中的date
	 * 
	 * @param date
	 *            java Date
	 * @return sql中的date
	 */
	public static java.sql.Date dataFormat(Date date) {
		java.sql.Date da = new java.sql.Date(date.getTime());
		return da;
	}

	/**
	 * 获取带有日期和随机数的字符串
	 * 
	 * @return 一个带有日期的字符串(4位年+2位月+2日+2位时+2位分+2位秒+4位随机数)
	 */
	public static String getStringName() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String rand = Math.random() + "";
		rand = rand.substring(rand.length() - 4, rand.length());
		//System.out.println(rand);
		String str = sdf.format(new Date()) + rand;
		return str;
	}
}
