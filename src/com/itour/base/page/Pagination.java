package com.itour.base.page;

import java.io.Serializable;

import com.itour.base.collect.Mapx;
import com.itour.base.collect.Mapxs;


/**
 * 分页查询条件参数 包含分页查询的页数，每页最大记录，查询条件，排序条件等信息
 * @author YaoYiLang
 * @version 2010-10-10
 */

@SuppressWarnings("serial")
public class Pagination implements Serializable {

	// =================================Fields=================================================
	/** 开始查询 的数据索引号 (从0开始) */
	private int start = 0;

	/** 每页条数 */
	private int limit = 25;

	/** 查询参数 */
	private Mapx filters = Mapxs.newMapx();

	// =================================Constructors===========================================
	/**
	 * 构造函数
	 */
	public Pagination() {
	}

	// =================================Methods================================================

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public Mapx getFilters() {
		return filters;
	}

	public void setFilters(Mapx filters) {
		this.filters = filters;
	}
}
