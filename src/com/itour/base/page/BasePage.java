package com.itour.base.page;

import java.io.Serializable;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.google.common.collect.Lists;
import com.itour.base.collect.Mapx;
import com.itour.base.collect.Mapxs;

public class BasePage<T> implements Serializable{
	// =================================Fields================================================
	private Integer page = 1;
	
	private Integer rows =10;
	
	private String sort;
	
	private String order;


	/** 开始查询 的数据索引号 (从0开始) */
	private int start = 0;
	/** 每页条数 */
	private int limit = 25;
	/** 总记录数 */
	private long total = 0;
	/** 当前页数据 */
	private List<T> records;
	
	/** 当前页脚数据 */
	private List<T> footer;
	
	/** 查询参数 */
	private Mapx filters = Mapxs.newMapx();
	/**
	 * 分页导航
	 */
	private Pager pager = new Pager();
	
	public Pager getPager() {
		pager.setPageId(getPage());
		pager.setPageSize(getRows());
		pager.doPage();
		String orderField="";
		if(StringUtils.isNotBlank(sort)){
			orderField = sort;
		}
		if(StringUtils.isNotBlank(orderField) && StringUtils.isNotBlank(order)){
			orderField +=" "+ order;
		}
		pager.setOrderField(orderField);
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}
	// =================================Constructors===========================================
		/**
		 * 构造函数
		 */
		public BasePage() {
			this.records = Lists.newArrayList();
		}

		/**
		 * 构造函数
		 * @param start 记录开始索引号
		 * @param limit 页面最大记录数
		 * @param records 当前页数据
		 * @param total 总记录数
		 */
		public BasePage(int start, int limit, List<T> records, long total) {
			this.start = start;
			this.limit = limit;
			this.records = records;
			this.total = total;
		}
		
		public BasePage(int start, int limit, List<T> records, long total,List<T> footer) {
			this.start = start;
			this.limit = limit;
			this.records = records;
			this.total = total;
			this.footer = footer;
		}

		// =================================Methods================================================
		/** 获取从第几条数据开始查询 */
		public int getStart() {
			return start;
		}

		/** 设置从第几条数据开始查询 */
		public void setStart(int start) {
			this.start = start;
		}

		/** 获取每页显示条数 */
		public int getLimit() {
			return limit;
		}

		/** 设置每页显示条数 */
		public void setLimit(int limit) {
			this.limit = limit;
		}

		/** 设置总条数 */
		public void setTotal(long total) {
			this.total = total;
		}

		/** 获取总条数 */
		public long getTotal() {
			return total;
		}

		/** 获取当前页数据 */
		public List<T> getRecords() {
			return records;
		}

		/** 设置当前页数据 */
		public void setRecords(List<T> records) {
			this.records = records;
		}

		public List<T> getFooter() {
			return footer;
		}

		public void setFooter(List<T> footer) {
			this.footer = footer;
		}

		public Mapx getFilters() {
			return filters;
		}

		public void setFilters(Mapx filters) {
			this.filters = filters;
		}
		
		public Integer getPage() {
			return page;
		}
	
		public void setPage(Integer page) {
			this.page = page;
		}
	
		public Integer getRows() {
			return rows;
		}
	
		public void setRows(Integer rows) {
			this.rows = rows;
		}
	
		public String getSort() {
			return sort;
		}
	
		public void setSort(String sort) {
			this.sort = sort;
		}
	
		public String getOrder() {
			return order;
		}
	
		public void setOrder(String order) {
			this.order = order;
		}
	
}
