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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.annotation.Auth;
import com.itour.base.easyui.DataGridAdapter;
import com.itour.base.easyui.EasyUIGrid;
import com.itour.base.json.JsonUtils;
import com.itour.base.page.BasePage;
import com.itour.base.util.DateUtil;
import com.itour.base.util.HtmlUtil;
import com.itour.base.util.IDGenerator;
import com.itour.base.util.SessionUtils;
import com.itour.base.util.email.EmailService;
import com.itour.base.web.BaseController;
import com.itour.convert.OrderDetailKit;
import com.itour.convert.TravelOrderKit;
import com.itour.entity.LogOperation;
import com.itour.entity.LogSetting;
import com.itour.entity.OrderDetail;
import com.itour.entity.SysUser;
import com.itour.entity.TravelOrder;
import com.itour.service.LogOperationService;
import com.itour.service.LogSettingDetailService;
import com.itour.service.LogSettingService;
import com.itour.service.OrderDetailService;
import com.itour.service.TravelOrderService;
import com.itour.vo.OrderDetailVo;
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
	@Autowired
	private LogSettingService logSettingService;
	
	@Autowired
	private LogSettingDetailService logSettingDetailService;
	
	@Autowired
	private LogOperationService logOperationService;
	@Autowired  
	private OrderDetailService<OrderDetail> orderDetailService; 
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
		 */	
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelOrderController的list方法");
		return forward("server/sys/travelOrder"); 
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
	public EasyUIGrid  datalist(TravelOrderVo vo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		//List<TravelOrder> dataList = travelOrderService.queryByList(page);
		BasePage<TravelOrderVo> pagination = travelOrderService.pagedQuery(vo);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelOrderController的dataList方法");
		return dataGridAdapter.wrap(pagination); 
	}
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String save(TravelOrderVo entity,HttpServletRequest request,HttpServletResponse response) throws Exception{
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
		String id = "";
		TravelOrder to = null;
		TravelOrder record = null;
		if(StringUtils.isNotEmpty(entity.getId())){
			entity.setOrderNo(IDGenerator.getUUID());
			entity.setOrderStatus(1);
			entity.setCustomerId(IDGenerator.getUUID());
			entity.setOrderName(entity.getOrderNo()+"_"+entity.getOrderName()+"_"+(StringUtils.isNotEmpty(entity.getCustomerId())?entity.getCustomerId():IDGenerator.code(16))+"_"+DateUtil.dateToString(DateUtil.fromStringToDate(DateUtil.y_m_d,entity.getExpectedDepart()),DateUtil.longTimePlusMill)+IDGenerator.number(4));
			record = TravelOrderKit.toRecord(entity);
			id = travelOrderService.add(record);
		}else{
				to = travelOrderService.queryById(entity.getId());
			if(to == null){
				entity.setOrderNo(IDGenerator.getUUID());
				entity.setOrderStatus(1);
				entity.setCustomerId(IDGenerator.code(16));
				entity.setOrderName(entity.getOrderNo()+"_"+entity.getOrderName()+"_"+(StringUtils.isNotEmpty(entity.getCustomerId())?entity.getCustomerId():IDGenerator.code(16))+"_"+DateUtil.dateToString(DateUtil.fromStringToDate(DateUtil.y_m_d,entity.getExpectedDepart()),DateUtil.longTimePlusMill)+IDGenerator.number(4));
				record = TravelOrderKit.toRecord(entity);
				id = travelOrderService.add(record);
			}else{
				travelOrderService.update(record);
			}
		}
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelOrderController的save方法");
		if(StringUtils.isNotEmpty(id)){			
			String logid = logSettingService.add(new LogSetting("travel_order","订单管理","travelOrder/save",sessionuser.getId(),"",""));
			logOperationService.add(new LogOperation(logid,"新增",id,JsonUtils.encode(entity),"","travelOrder/save",sessionuser.getId()));
		}else{
			String logid = logSettingService.add(new LogSetting("travel_order","订单管理","travelOrder/save(update)",sessionuser.getId(),"",""));
			logOperationService.add(new LogOperation(logid,"更新",to!= null?to.getId():"",JsonUtils.encode(to),JsonUtils.encode(entity),"travelOrder/save(update)",sessionuser.getId()));
		}
		return sendSuccessResult(response, "保存成功~");
	}
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@Auth(verifyLogin=false,verifyURL=false)
	@ResponseBody
	@RequestMapping(value="/booking", method = RequestMethod.POST)
	public String booking(@RequestBody OrderDetailVo entity,HttpServletRequest request,HttpServletResponse response) throws Exception{
		String vcode = SessionUtils.getHappyValidateCode(request);
		SessionUtils.removeHappyValidateCode(request);//清除验证码，确保验证码只能用一次
		String receiveremail = entity.getReceiveremail();
	 	if(StringUtils.isEmpty(entity.getVerifyCode())){
	 		return sendFailureResult(response, "验证码不能为空.");
		}
		//判断验证码是否正确
	 	if(!entity.getVerifyCode().toLowerCase().equals(vcode)){   
	 		return sendFailureResult(response, "验证码输入错误.");
		} 
	 	TravelOrderVo to = new TravelOrderVo();
	 	to.setBudget(entity.getBudget());
	 	if(StringUtils.isNotEmpty(entity.getExpectedBack())){
	 		to.setExpectedBack(entity.getExpectedBack());
	 	}
		if(StringUtils.isNotEmpty(entity.getExpectedDepart())){
			to.setExpectedDepart(entity.getExpectedDepart());
		}
		to.setOrderNo(IDGenerator.getUUID());
		to.setRoutename(entity.getRoutename());
		to.setReceiver(entity.getReceiver());
		to.setReceiveremail(entity.getReceiveremail());
		to.setReceiverMobile(entity.getReceiverMobile());
		to.setGender(entity.isGender());
		to.setOrderStatus(1);
		to.setTotalStaff(entity.getAdults()+entity.getChildren());
		to.setOrderName(IDGenerator.getUUID()+"_"+entity.getRoutename()+"_"+IDGenerator.code(16)+"_"+DateUtil.dateToString(DateUtil.fromStringToDate(DateUtil.y_m_d,entity.getExpectedDepart()),DateUtil.longTimePlusMill)+IDGenerator.number(4));
		String travelOrderId = travelOrderService.add(TravelOrderKit.toRecord(to));
		String odId="";
		OrderDetail od = null;
		if(entity.getId()==null||StringUtils.isEmpty(entity.getId().toString())){
			entity.setStatus(1);
			entity.setTravelOrder(StringUtils.isNotEmpty(travelOrderId)?travelOrderId:"");
			odId = orderDetailService.add(OrderDetailKit.toEntity(entity));
		}else{
			   od = orderDetailService.queryById(entity.getId());
			if(od == null){
				entity.setStatus(1);
				entity.setTravelOrder(StringUtils.isNotEmpty(travelOrderId)?travelOrderId:"");
				odId = orderDetailService.add(OrderDetailKit.toEntity(entity));
			}else{
				orderDetailService.update(OrderDetailKit.toEntity(entity));
			}
		}
		String title="主角旅行itours网站";
		String content = "尊敬的客户您好：您的预定信息已收到，预定成功信息将于24小时内发送到您的邮箱，请留意查看";
		if(EmailService.sendEmail(title,receiveremail, title, content)){
			String result = sendSuccessResult(response, "预定成功，请稍后查看邮箱预定成功信息！");
			return result;
		}else{
			String result = sendSuccessResult(response, "预定成功，邮件未发送成功！");
			return result;
		}
	}
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/getId", method = RequestMethod.POST)
	public String getId(String id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = getRootMap();
		TravelOrder entity  = travelOrderService.queryById(id);
		if(entity  == null){
			return sendFailureResult(response, "没有找到对应的记录!");
		}
		context.put(SUCCESS, true);
		context.put("data",TravelOrderKit.toEditVo(entity));
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelOrderController的getId方法");
		String logId = logSettingService.add(new LogSetting("travel_order","订单管理","travelOrder/getId",sessionuser.getId(),"",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"查看",entity.getId(),JsonUtils.encode(entity),"","travelOrder/getId",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		return JsonUtils.encode(context);
	}
	
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String delete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		travelOrderService.delete(id);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelOrderController的delete方法");
		String logId = logSettingService.add(new LogSetting("travel_order","订单管理","travelOrder/delete",sessionuser.getId(),"delete from travel_order where id in("+JsonUtils.encode(id)+")",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"物理删除",JsonUtils.encode(id),JsonUtils.encode(id),JsonUtils.encode(id),"travelOrder/delete",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		return removeSuccessMessage(response);
	}
	/**
	 * 
	 * @param id
	 * @param response
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Auth(verifyLogin=true,verifyURL=true)
	@ResponseBody
	@RequestMapping(value="/logicdelete", method = RequestMethod.POST)
	public String logicdelete(String[] id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		travelOrderService.logicdelete(id);
		SysUser sessionuser = SessionUtils.getUser(request);
		logger.info("#####"+(sessionuser != null?("id:"+sessionuser .getId()+"email:"+sessionuser.getEmail()+",nickName:"+sessionuser.getNickName()):"")+"调用执行TravelOrderController的logicdelete方法");
		String logId = logSettingService.add(new LogSetting("travel_order","订单管理","travelOrder/logicdelete",sessionuser.getId(),"update travel_order set is_valid=0 where id in("+JsonUtils.encode(id)+")",""));//String tableName,String function,String urlTeimplate,String creater,String deletescriptTemplate,String updatescriptTemplate
		logOperationService.add(new LogOperation(logId,"逻辑删除",JsonUtils.encode(id),JsonUtils.encode(id),JsonUtils.encode(id),"travelOrder/logicdelete",sessionuser.getId()));//String logCode,String operationType,String primaryKeyvalue,String content,String url,String creater
		return removeSuccessMessage(response);
	}
}
