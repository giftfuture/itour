package com.itour.service;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.base.Joiner;
import com.google.common.collect.Lists;
import com.itour.base.page.BasePage;
import com.itour.base.service.BaseService;
import com.itour.base.util.FilePros;
import com.itour.convert.RouteTemplateKit;
import com.itour.dao.RouteTemplateDao;
import com.itour.dao.TravelItemDao;
import com.itour.dao.TravelStyleDao;
import com.itour.entity.RouteTemplate;
import com.itour.entity.TravelItem;
import com.itour.entity.TravelStyle;
import com.itour.vo.RouteTemplateVo;

/**
 * 
 * <br>
 * <b>功能：</b>RouteTemplateService<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
@Service("routeTemplateService")
public class RouteTemplateService<T> extends BaseService<T> {
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	/**
	 * 分页查询
	 * 
	 * @param pageQuery 查询条件
	 * @return 查询结果
	 */
	@SuppressWarnings("unchecked")
	public BasePage<RouteTemplateVo> pagedQuery(RouteTemplateVo vo) {
		vo.setOrder("starLevel");
		List<RouteTemplateVo> list = (List<RouteTemplateVo>) mapper.queryByList(vo);
		int count = mapper.queryByCount(vo);
		List<RouteTemplateVo> records = Lists.newArrayList();
		String rtCoverPath = FilePros.httprtCoverPath();
		for(RouteTemplateVo fb:list) {
			if(StringUtils.isNotEmpty(fb.getTravelItems())){
				 String[] params = fb.getTravelItems().split(",");
				String travelItems = tiDao.travelItems(Arrays.asList(params));
				fb.setTravelItems(travelItems);
			}
			if(StringUtils.isNotEmpty(fb.getSimilars())){
				String[] similars = fb.getSimilars().split(",");
				List<RouteTemplate> simlist = mapper.queryByRelated(Arrays.asList(similars));
				List<String> sims = Lists.newArrayList();
				for(RouteTemplate rt:simlist){
					sims.add(rt.getTitle());
				}
				fb.setSimilars(StringUtils.join(sims.toArray(), ","));
			}
			String coverpath = rtCoverPath+File.separatorChar+fb.getRouteCode()+"_"+fb.getTitle()+File.separatorChar;
			fb.setCover(coverpath+fb.getCover());
			records.add(fb);
		}
		return new BasePage<RouteTemplateVo>(vo.getStart(), vo.getLimit(), records,count);
	}
	
	/**
	 * 
	 * @param vo
	 * @return
	 */
	public BasePage<RouteTemplateVo> searchpagedQuery(RouteTemplateVo vo) {
		vo.setOrder("starLevel");
		List<RouteTemplateVo> list = (List<RouteTemplateVo>) mapper.searchRts(vo);
		int count = mapper.searchRtsByCount(vo);
		List<RouteTemplateVo> records = Lists.newArrayList();
		String rtCoverPath = FilePros.httprtCoverPath();
		for(RouteTemplateVo fb:list){
		/*	if(StringUtils.isNotEmpty(fb.getTravelItems())){
				String[] params = fb.getTravelItems().split(",");
				String travelItems = tiDao.travelItems(Arrays.asList(params));
				fb.setTravelItems(travelItems);
			}
			if(StringUtils.isNotEmpty(fb.getSimilars())){
				String[] similars = fb.getSimilars().split(",");
				List<RouteTemplate> simlist = mapper.queryByRelated(Arrays.asList(similars));
				List<String> sims = Lists.newArrayList();
				for(RouteTemplate rt:simlist){
					sims.add(rt.getTitle());
				}
				fb.setSimilars(StringUtils.join(sims.toArray(), ","));
			}*/
			String coverpath = rtCoverPath+File.separatorChar+fb.getRouteCode()+"_"+fb.getAlias()+File.separatorChar;
			fb.setCover(coverpath+fb.getCover());
			records.add(fb);
		}
		return new BasePage<RouteTemplateVo>(vo.getStart(), vo.getLimit(), list,count);
	}
	/**
	 * 
	 * @param style
	 * @return
	 * @throws Exception
	 */
	public List<RouteTemplateVo> queryByStyle(String style)throws Exception{
		List<RouteTemplate> list = mapper.queryByStyle(style);
		List<RouteTemplateVo> vos = Lists.newArrayList();
		String rtCoverPath = FilePros.httprtCoverPath();
		for(RouteTemplate rt :list){
			String coverpath = rtCoverPath+File.separatorChar+rt.getRouteCode()+"_"+rt.getAlias()+File.separatorChar;
			rt.setCover(coverpath+rt.getCover());
			vos.add(RouteTemplateKit.toRecord(rt));
		}
		return vos;
	}
	/**
	 * 
	 * @param related
	 * @return
	 * @throws Exception
	 */
	public List<RouteTemplateVo> queryByRelated(List<String> related)throws Exception{
		List<RouteTemplate> list = mapper.queryByRelated(related);
		List<RouteTemplateVo> vos = Lists.newArrayList();
		for(RouteTemplate rt:list){
			vos.add(RouteTemplateKit.toRecord(rt));
		}
		return vos;
	}
	
	/**
	 * 
	 * @param travelItems
	 * @return
	 * @throws Exception
	 */
	public List<RouteTemplateVo> queryByItems(String travelItems)throws Exception{
		List<RouteTemplate> list = mapper.queryByItems(travelItems);
		List<RouteTemplateVo> vos = Lists.newArrayList();
		String rtCoverPath = FilePros.httprtCoverPath();
		for(RouteTemplate rt:list){
			String coverpath = rtCoverPath+File.separatorChar+rt.getRouteCode()+"_"+rt.getAlias()+File.separatorChar;
			rt.setCover(coverpath+rt.getCover());
			vos.add(RouteTemplateKit.toRecord(rt));
		}
		return vos;
	}
	/**
	 * 
	 * @param alias
	 * @return
	 * @throws Exception
	 */
	public RouteTemplateVo queryByAlias(String alias)throws Exception{
		RouteTemplate rt = mapper.queryByAlias(alias);
		return RouteTemplateKit.toRecord(rt);
	}
	/**
	 * 
	 * @param vo
	 */
	public void uploadCover(RouteTemplate vo){
		mapper.uploadCover(vo);
	};
	/**
	 * 
	 * @param vo
	 */
	public void uploadMap(RouteTemplate vo){
		mapper.uploadMap(vo);
	};
	/**
	 * 
	 * @param id
	 * @param quoteForm
	 */
	/*public void updateQuoteForm(RouteTemplate entity){
		mapper.update(entity);
	};*/
	/**
	 * 
	 * @param entity
	 */
	public void updateQuotoForm(RouteTemplate entity){
		mapper.update(entity);
	};
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	public RouteTemplateVo selectById(String id){
		RouteTemplateVo vo =  mapper.selectById(id);
		String ts = vo.getTravelItems();
		List<TravelItem> list = tiDao.queryByIds(Arrays.asList(ts.split(",")));
		List<String> alias = Lists.newArrayList();
		for(TravelItem ti:list){
			alias.add(ti.getAlias());
		}
		//StringUtils.collectionToDelimitedString(list, ",");  
		//StringUtils.join(list.toArray(), ","); 
		vo.setTravelItems(Joiner.on(",").join(alias));
		String related = vo.getRelated();
		List<RouteTemplate> rts = mapper.queryByRelated(Arrays.asList(related.split(",")));
		List<String> relates = Lists.newArrayList();
		for(RouteTemplate rt:rts){
			relates.add(rt.getRouteCode());
		}
		TravelStyle tstyle =(TravelStyle)tsDao.queryById(vo.getTravelStyle());
		vo.setTravelStyle(tstyle!=null?tstyle.getAlias():"");
		vo.setRelated(Joiner.on(",").join(relates));
		return vo;
	}

	/**
	 * 
	 * @param routeCode
	 * @return
	 */
	public RouteTemplate selectByRouteCode(String routeCode){
		return mapper.selectByRouteCode(routeCode);
	}
	/**
	 * 
	 * @param map
	 * @return
	 */
/*	public List<RouteTemplateVo> searchRts(Map map)throws Exception{
		return mapper.searchRts(map);
	};*/
	public 	List<RouteTemplateVo> queryAll()throws Exception{
		return mapper.queryAll();
	};
	@Autowired
    private RouteTemplateDao<T> mapper;
		
	public RouteTemplateDao<T> getDao() {
		return mapper;
	}
	@Autowired
	private TravelItemDao<T> tiDao;
	public TravelItemDao<T> gettiDao() {
		return tiDao;
	}
	@Autowired
	private TravelStyleDao<T> tsDao;
	public TravelStyleDao<T> gettsDao(){
		return tsDao;
	}
	
	
}
