package com.itour.convert;

import com.itour.entity.QuoteForm;
import com.itour.vo.QuoteFormVo;

public class QuoteFormKit {
	public static QuoteFormVo toVo(QuoteForm qf){
		QuoteFormVo qfv = new QuoteFormVo();
		qfv.setId(qf.getId());
		qfv.setAdults(qf.getAdults());
		qfv.setAsAdult(qf.isAsAdult());
		qfv.setBathcostAsadult(qf.isBathcostAsadult());
		qfv.setBathorseCost(qf.getBathorseCost());
		qfv.setBeriefTrip(qf.getBeriefTrip());
		qfv.setBigTraffic(qf.getBigTraffic());
		qfv.setBigtrafficeAsadult(qf.isBigtrafficeAsadult());
		qfv.setBigTrafficSum(qf.isBigTrafficSum());
		qfv.setChildren(qf.getChildren());
		qfv.setClimbncostAsadult(qf.isClimbncostAsadult());
		qfv.setClimbNexusCost(qf.getClimbNexusCost());
		qfv.setClimbrcostAsadult(qf.isClimbrcostAsadult());
		qfv.setClimbRegisterCost(qf.getClimbRegisterCost());
		qfv.setComphcostAsadult(qf.isComphcostAsadult());
		qfv.setComprehensiveCosts(qf.getComprehensiveCosts());
		qfv.setCreateBy(qf.getCreateBy());
		qfv.setCreateTime(qf.getCreateTime());
		qfv.setDinner(qf.getDinner());
		qfv.setDinnerAsadult(qf.isDinnerAsadult());
		qfv.setElseCost(qf.getElseCost());
		qfv.setElsecostAsadult(qf.isElsecostAsadult());
		qfv.setHotel(qf.getHotel());
		qfv.setHotelAsadult(qf.isHotelAsadult());
		qfv.setInsurance(qf.getInsurance());
		qfv.setInsuranceAsadult(qf.isInsuranceAsadult());
		qfv.setItemGuide(qf.getItemGuide());
		qfv.setItemguideAsadult(qf.isItemguideAsadult());
		qfv.setPresented(qf.getPresented());
		qfv.setRecreation(qf.getRecreation());
		qfv.setRecreationAsadult(qf.isRecreationAsadult());
		qfv.setRemark(qf.getRemark());
		qfv.setRentCar(qf.getRentCar());
		qfv.setRentcarAsadult(qf.isRentcarAsadult());
		qfv.setRidehorseCost(qf.getRidehorseCost());
		qfv.setRidecostAsadult(qf.isRidecostAsadult());
		qfv.setRouteTemplate(qf.getRouteTemplate());
		qfv.setTicketAsadult(qf.isTicketAsadult());
		qfv.setTicketBlock(qf.getTicketBlock());
		qfv.setTourGuide(qf.getTourGuide());
		qfv.setTourguideAsadult(qf.isTourguideAsadult());
		qfv.setTraveldocAsadult(qf.isTraveldocAsadult());
		qfv.setTravelDocs(qf.getTravelDocs());
		qfv.setUpdateBy(qf.getUpdateBy());
		qfv.setUpdateTime(qf.getUpdateTime());
		qfv.setValid(qf.isValid());
		return qfv;
	}
	
	public static QuoteForm toRecord(QuoteFormVo vo){
		QuoteForm qfv = new QuoteForm();
		qfv.setId(vo.getId());
		qfv.setAdults(vo.getAdults());
		qfv.setAsAdult(vo.isAsAdult());
		qfv.setBathcostAsadult(vo.isBathcostAsadult());
		qfv.setBathorseCost(vo.getBathorseCost());
		qfv.setBeriefTrip(vo.getBeriefTrip());
		qfv.setBigTraffic(vo.getBigTraffic());
		qfv.setBigtrafficeAsadult(vo.isBigtrafficeAsadult());
		qfv.setBigTrafficSum(vo.isBigTrafficSum());
		qfv.setChildren(vo.getChildren());
		qfv.setClimbncostAsadult(vo.isClimbncostAsadult());
		qfv.setClimbNexusCost(vo.getClimbNexusCost());
		qfv.setClimbrcostAsadult(vo.isClimbrcostAsadult());
		qfv.setClimbRegisterCost(vo.getClimbRegisterCost());
		qfv.setComphcostAsadult(vo.isComphcostAsadult());
		qfv.setComprehensiveCosts(vo.getComprehensiveCosts());
		qfv.setCreateBy(vo.getCreateBy());
		qfv.setCreateTime(vo.getCreateTime());
		qfv.setDinner(vo.getDinner());
		qfv.setDinnerAsadult(vo.isDinnerAsadult());
		qfv.setElseCost(vo.getElseCost());
		qfv.setElsecostAsadult(vo.isElsecostAsadult());
		qfv.setHotel(vo.getHotel());
		qfv.setHotelAsadult(vo.isHotelAsadult());
		qfv.setInsurance(vo.getInsurance());
		qfv.setInsuranceAsadult(vo.isInsuranceAsadult());
		qfv.setItemGuide(vo.getItemGuide());
		qfv.setItemguideAsadult(vo.isItemguideAsadult());
		qfv.setPresented(vo.getPresented());
		qfv.setRecreation(vo.getRecreation());
		qfv.setRecreationAsadult(vo.isRecreationAsadult());
		qfv.setRemark(vo.getRemark());
		qfv.setRentCar(vo.getRentCar());
		qfv.setRentcarAsadult(vo.isRentcarAsadult());
		qfv.setRidehorseCost(vo.getRidehorseCost());
		qfv.setRidecostAsadult(vo.isRidecostAsadult());
		qfv.setRouteTemplate(vo.getRouteTemplate());
		qfv.setTicketAsadult(vo.isTicketAsadult());
		qfv.setTicketBlock(vo.getTicketBlock());
		qfv.setTourGuide(vo.getTourGuide());
		qfv.setTourguideAsadult(vo.isTourguideAsadult());
		qfv.setTraveldocAsadult(vo.isTraveldocAsadult());
		qfv.setTravelDocs(vo.getTravelDocs());
		qfv.setUpdateBy(vo.getUpdateBy());
		qfv.setUpdateTime(vo.getUpdateTime());
		qfv.setValid(vo.isValid());
		return qfv;
	}
}
