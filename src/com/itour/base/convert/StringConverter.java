package com.itour.base.convert;

import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * 字符串类型转换器
 * @author  
 */
public class StringConverter implements Converter<String> {

	public static final StringConverter INSTANCE = new StringConverter();

	@Override
	public String convert(Object source, Class<? extends String> toType, String vDefault) {
		String result = vDefault;
		try {
			if (source == null) {
				/* do not handle */
			} else if (source instanceof Date) {
				result = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format((Date) source);
			} else {
				return String.valueOf(source);
			}
		} catch (Exception e) {
			// Ignore//
		}
		return result;
	}

	@Override
	public boolean support(Class<? extends String> type) {
		return String.class.isAssignableFrom(type);
	}
}
