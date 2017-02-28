package com.itour.dao;

import org.apache.ibatis.annotations.Param;

import com.itour.base.dao.BaseDao;

public interface ShowHappyDao<ShowHappy> extends BaseDao<ShowHappy> {
	/*public default void addShowHappy(){
		shCode
	}*/
	public ShowHappy queryByCode(@Param(value="shCode")String shCode);
}
