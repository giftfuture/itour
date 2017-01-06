package com.itour.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.page.BasePage;
import com.itour.base.util.DateUtil;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.IDGenerator;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelOrder;
import com.itour.service.TravelOrderService;
import com.itour.vo.TravelOrderVo;
import com.itour.vo.TravelStyleVo;
 
/**
 * 
 * <br>
 * <b>功能：</b>TravelOrderController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/travelOrder") 
public class TravelOrderController extends BaseController{
	
	protected final Logger logger =  LoggerFactory.getLogger(getClass());
	
	// Servrice start
	@Autowired //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private TravelOrderService<TravelOrder> travelOrderService; 
	@Autowired
	private DataGridAdapter dataGridAdapter;
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@RequestMapping(value="/list") 
	public ModelAndView  list(TravelOrderVo page,HttpServletRequest request) throws Exception{
		/*Map<String,Object>  context = getRootMap();
		List<TravelOrder> dataList = travelOrderService.queryByList(page);
		context.put("dataList", dataList);//设置页面数据
*/		return forword("server/sys/travelOrder"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return 
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/dataList.json", method = RequestMethod.POST) 
	public EasyUIGrid  datalist(TravelOrderVo vo,HttpServletResponse response) throws Exception{
		//List<TravelOrder> dataList = travelOrderService.queryByList(page);
		BasePage<TravelOrderVo> pagination = travelOrderService.pagedQuery(vo);
		return dataGridAdapter.wrap(pagination); 
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public void save(TravelOrder entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
/*		TravelOrder to = new TravelOrder();
		to.setId(entity.getId());
		to.setOrderNo(entity.getOrderNo());
		to.setOrderName(entity.getOrderName());
		to.setBank(entity.getBank());
		to.setBudget(entity.getBudget());
		to.setCustomerId(entity.getCustomerId());
		to.setExpectedBack(new Timestamp(DateUtil.parse(entity.getExpectedBack(), DateUtil.sdfLongTimePlus).getTime()));
		to.setExpectedDepart(new Timestamp(DateUtil.parse(entity.getExpectedDepart(), DateUtil.sdfLongTimePlus).getTime()));
		to.setIsPayed(entity.getIsPayed());
		to.setOrderStatus(entity.getOrderStatus());
		to.setPayAccount(entity.getPayAccount());
		to.setPayPlatform(entity.getPayPlatform());
		to.setPayTerminal(entity.getPayTerminal());
		to.setPayTime(new Timestamp(DateUtil.parse(entity.getPayTime(), DateUtil.sdfLongTimePlus).getTime()));
		to.setPayType(entity.getPayType());
		to.setReceiver(entity.getReceiver());
		to.setReceiverMobile(entity.getReceiverMobile());
		to.setRemark(entity.getRemark());
		to.setTotalStaff(entity.getTotalStaff());*/
		//Map<String,Object>  context = new HashMap<String,Object>();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			entity.setOrderNo(IDGenerator.getUUID());
			entity.setOrderStatus(1);
			entity.setCustomerId(IDGenerator.getUUID());
			entity.setOrderName(entity.getOrderNo()+"_"+"稻城亚丁--黄山景区端午轻旅行"+"_"+entity.getCustomerId()+"_"+DateUtil.format(entity.getExpectedDepart(), DateUtil.sdfShortLongTimePlusCn));
			travelOrderService.add(entity);
		}else{
			TravelOrder to = travelOrderService.queryById(entity.getId());
			if(to == null){
				entity.setOrderNo(IDGenerator.getUUID());
				entity.setOrderStatus(1);
				entity.setCustomerId(IDGenerator.getUUID());
				entity.setOrderName(entity.getOrderNo()+"_"+"稻城亚丁--黄山景区端午轻旅行"+"_"+entity.getCustomerId()+"_"+entity.getExpectedDepart());
				travelOrderService.add(entity);
			}else{
				travelOrderService.update(entity);
			}
		}
		sendSuccessMessage(response, "保存成功~");
	}
	
	
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		TravelOrder entity  = travelOrderService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return;
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		HtmlUtil.writerJSON(response, context);
	}
	
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		travelOrderService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}

}
