package com.itour.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itour.base.dao.BaseDao;
import com.itour.entity.Areas;
import com.itour.entity.LevelArea;

public interface LevelAreaDao extends BaseDao<LevelArea> {
	List<LevelArea> queryAll();
	List<LevelArea> queryLevel1();
	List<LevelArea> queryLevel2ByLevel1(@Param("aliasCode")String aliasCode);
}
