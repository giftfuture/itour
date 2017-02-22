package com.itour.convert;

import com.itour.base.util.DateUtil;
import com.itour.entity.Feedback;
import com.itour.vo.FeedbackVo;
/**
 * 
 * <br>
 * <b>作者：</b>fred.zhao<br>
 * <b>日期：</b> Feb 2, 2016 <br>
 */
public class FeedbackKit{
	
	public static FeedbackVo toRecord(Feedback fb){
		FeedbackVo vo = new FeedbackVo();
		vo.setContent(fb.getContent());
		vo.setCreateTime(DateUtil.getDateYmdHs(fb.getCreateTime()));
		vo.setCustomerId(fb.getCustomerId());
		vo.setCustomerName(fb.getCustomerName());
		vo.setEmail(fb.getEmail());
		vo.setId(fb.getId());
		vo.setMobile(fb.getMobile());
		vo.setResult(fb.getResult());
		vo.setStatus(fb.getStatus());
		vo.setTitle(fb.getTitle());
		vo.setName(fb.getName());
		vo.setPreferedDate(DateUtil.getDateYmdHs(fb.getPreferedDate()));
		vo.setTeamPersons(fb.getTeamPersons());
		vo.setUpdateTime(DateUtil.getDateYmdHs(fb.getUpdateTime()));
		vo.setValid(fb.isValid());
		return vo;
	}
}

