package com.itour.dao;

import java.util.List;

import com.itour.base.dao.BaseDao;
import com.itour.entity.Areas;

public interface AreasDao extends BaseDao<Areas> {
	List<Areas> queryAll();
}
