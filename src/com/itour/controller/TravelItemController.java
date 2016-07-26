package com.itour.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itour.base.util.HtmlUtil;
import com.itour.base.util.RedProFile;
import com.itour.base.util.StringUtil;
import com.itour.base.web.BaseController;
import com.itour.entity.TravelItem;
import com.itour.page.TravelItemPage;
import com.itour.service.TravelItemService;
 
/**
 * 
 * <br>
 * <b>功能：</b>TravelItemController<br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */ 
@Controller
@RequestMapping("/travelItem") 
public class TravelItemController extends BaseController{
	
	private final static Logger log= Logger.getLogger(TravelItemController.class);
	
	// Servrice start
	@Autowired(required=false) //自动注入，不需要生成set方法了，required=false表示没有实现类，也不会报错。
	private TravelItemService<TravelItem> travelItemService; 
	
	
	
	
	
	/**
	 * 
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/list") 
	public ModelAndView list(TravelItemPage page,HttpServletRequest request) throws Exception{
		/*Map<String,Object>  context = getRootMap();
		List<TravelItem> dataList = travelItemService.queryByList(page);
		context.put("dataList", dataList);//设置页面数据
		 */	
		return forword("server/sys/travelItem"); 
	}
	
	
	/**
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/dataList") 
	public void  datalist(TravelItemPage page,HttpServletResponse response) throws Exception{
		List<TravelItem> dataList = travelItemService.queryByList(page);
		Map<String,Object> jsonMap = new HashMap<String,Object>();//设置页面数据
		jsonMap.put("total",page.getPager().getRowCount());
		jsonMap.put("rows", dataList);
		HtmlUtil.writerJSON(response, jsonMap);
	}
	
	
	
	/**
	 * 添加或修改数据
	 * @param url
	 * @param classifyId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/save")
	public void save(TravelItem entity,Integer[] typeIds,HttpServletResponse response) throws Exception{
	//	File[]  ff = fileselect;
		//System.out.println(ff != null ? ff.length:0);
		//Map<String,Object>  context = new HashMap<String,Object>();
		if(entity.getId()==null||StringUtils.isBlank(entity.getId().toString())){
			travelItemService.add(entity);
		}else{
			TravelItem ti = travelItemService.queryById(entity.getId());
			if(ti == null)
				travelItemService.add(entity);
			else
				travelItemService.update(entity);
		}
		sendSuccessMessage(response, "保存成功~");
	}
	//headers = "content-type=application/x-www-form-urlencoded",
	@RequestMapping(value="/uploadPhoto",  method = RequestMethod.POST)//,method = RequestMethod.POST
	//@ResponseBody
	public @ResponseBody Map<String,Object> uploadPhoto(String id,@RequestParam(value = "fileselect",required=false) MultipartFile fileselect,MultipartHttpServletRequest request) {
		Map<String,Object> resMap = new HashMap<String,Object>();
		try {
			//MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;            
			// 获得文件：   
			//MultipartFile file = (MultipartFile) request.getFileMap(); 
			if(request instanceof MultipartHttpServletRequest){
			InputStream is = fileselect.getInputStream();
			if (fileselect != null) {
					//FileIO.uploadPhoto(id,fileselect.getInputStream());
				//获取保存的路径，
				String realPath = RedProFile.uploadPath() ;//request.getSession().getServletContext().getRealPath("/upload/apk");
				String originFileName = fileselect.getOriginalFilename();
				File f = new File(realPath,originFileName);
				if (fileselect.isEmpty()) {
					// 未选择文件
					//resMap.put("status", StatusConstants.STATUS_PARM_IS_EMPTY);
				} else{
					// 文件原名称
					/*try {
						//这里使用Apache的FileUtils方法来进行保存
						FileUtils.copyInputStreamToFile(fileselect.getInputStream(),
								new File(realPath, originFileName));
						resMap.put("status",StatusConstants.STATUS_OK);
					} catch (IOException e) {
						System.out.println("文件上传失败");
						resMap.put("status", StatusConstants.STATUS_EXECPTION);
						e.printStackTrace();
					}*/
				}

			}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
			
		
		return resMap;
	}
	@RequestMapping("/getId")
	public void getId(String id,HttpServletResponse response) throws Exception{
		Map<String,Object>  context = new HashMap();
		TravelItem entity  = travelItemService.queryById(id);
		if(entity  == null){
			sendFailureMessage(response, "没有找到对应的记录!");
			return;
		}
		context.put(SUCCESS, true);
		context.put("data", entity);
		HtmlUtil.writerJSON(response, context);
	}
	
	
	
	@RequestMapping("/delete")
	public void delete(String[] id,HttpServletResponse response) throws Exception{
		travelItemService.delete(id);
		sendSuccessMessage(response, "删除成功");
	}
	
	

	
	/**
	* 返回项目在磁盘上的绝对路径
	* 
	* @param request
	* @param path
	* @return
	*/
	private static String getAppPath(HttpServletRequest request, String path) {
	if (StringUtil.isEmpty(path))
	return null;
	return request.getSession().getServletContext().getRealPath(path);

	}
}
