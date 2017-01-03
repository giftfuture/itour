package com.itour.base.convert;

import java.util.Map;

import com.itour.base.collect.HashMapx;
import com.itour.base.collect.Mapx;

/**
 * MAP映射表类型转换器
 * @author  
 */
public class MapxConverter implements Converter<Mapx> {

	public static final MapxConverter INSTANCE = new MapxConverter();

	@SuppressWarnings("rawtypes")
	@Override
	public Mapx convert(Object source, Class<? extends Mapx> toType, Mapx vDefault) {
		try {
			if (source instanceof Map) {
				Mapx result = new HashMapx();
				for (Object o : (((Map) source).entrySet())) {
					Map.Entry entry = (Map.Entry) o;
					result.put(String.valueOf(entry.getKey()), entry.getValue());
				}
				return result;
			}
		} catch (Exception e) {
			// Ignore//
		}
		return vDefault;
	}

	@Override
	public boolean support(Class<? extends Mapx> type) {
		return Mapx.class.isAssignableFrom(type);
	}
}
