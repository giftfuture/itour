$package('itour.quoteEdit');
itour.quoteEdit = function(){
	var _box = null;
	var _this = {
		saveQuoteForm:function(){
			var formData = new Object();
			var actionurl=basePath+"routeTemplate/updateQuoteForm";
			formData["routeTemplate"]  = $('input[name="rtId"]').val();
			//formData.quoteEditForm = $("form[name='quoteEditForm']").html();
			formData["adults"] = $("input[name='adults']").val();
			formData["children"]=$("input[name='children']").val();
			formData["isAsAdult"] = $("input[name='isAsAdult'][value='isAsAdult']").attr("checked")||$("input[name='isAsAdult'][value='isAsAdult']").attr("checked")=="checked"?true:false;
			formData["ticketBlock"]= $("#addsightdiv").html();
			formData["ticketAsadult"]=$("input[name='ticketAsadult']").is(':checked');
			formData["travelDocs"]=$("#addcarddiv").html();
			formData["traveldocAsadult"]=$("input[name='traveldocAsadult']").is(':checked');	
			formData["tourGuide"]=$("#addGuideDiv").html();
			formData["tourguideAsadult"]=$("input[name='tourguideAsadult']").is(':checked');	
			//formData.hotel=
			//formData.hotelAsadult=$("input[name='hotelAsadult']").is(':checked');	
			formData["rentCar"]=$("#addcardiv").html();
			formData["rentcarAsadult"]=$("input[name='rentcarAsadult']").is(':checked');	
			formData["bigTrafficSum"]=$("input[name='train-ticket'][value='bigTrafficSum']").attr("checked")||$("input[name='train-ticket'][value='bigTrafficSum']").attr("checked")=="checked"?true:false;
			formData["bigTraffic"]=$("#addbigtrafficdiv").html();
			formData["bigtrafficeAsadult"]=$("input[name='bigtrafficeAsadult']").is(':checked');
			formData["dinner"]=$("#dinnerblock").html();
			formData["insurance"]=$("#insurancediv").html();
			formData["insuranceAsadult"]=$("input[name='insuranceAsadult']").is(':checked');	
			formData["comprehensiveCosts"]=$("#allfeesdiv").html();
			formData["comphcostAsadult"]=$("input[name='comphcostAsadult']").is(':checked');	
			formData["recreation"]=$("#addjoysdiv").html();
			formData["recreationAsadult"]=$("input[name='recreationAsadult']").is(':checked');	
			formData["itemGuide"]=$("#hikingguidediv").html();
			formData["itemguideAsadult"]=$("input[name='itemguideAsadult']").is(':checked');	
			formData["bathorseCost"]=$("#bathorseCostdiv").html();
			formData["bathcostAsadult"]=$("input[name='bathcostAsadult']").is(':checked');	
			formData["ridehorseCost"]=$("#ridehorseCostdiv").html();
			formData["ridecostAsadult"]=$("input[name='ridecostAsadult']").is(':checked');	
			formData["climbRegisterCost"]=$("#climbregisterdiv").html();
			formData["climbrcostAsadult"]=$("input[name='climbrcostAsadult']").is(':checked');	
			formData["climbNexusCost"]=$("#climbnexusdiv").html();
			formData["climbncostAsadult"]=$("input[name='climbncostAsadult']").is(':checked');	
			formData["elseCost"]=$("#elseitemdiv").html();
			formData["elsecostAsadult"]=$("input[name='elsecostAsadult']").is(':checked');	
			formData["presented"]=$("input[name='presented']").val();
			var showTrip="<table name='showTrip' width='80%' cellspacing='1' cellpadding='5' border='0' align='center'><thead><tr>"+
          "<td class='STYLE129' valign='middle' bgcolor='#F0F0F0' height='31'><div class='style18' align='center'><div align='center'><strong><strong>天数</strong></strong></div></div></td>"+
          "<td class='STYLE23' valign='middle' bgcolor='#F0F0F0'>日期</td>"+
          "<td class='STYLE23' valign='middle' bgcolor='#F0F0F0'>星期</td>"+
          "<td class='STYLE129' valign='middle' bgcolor='#F0F0F0'><div class='STYLE18' align='center'><div align='center'><strong><strong>行程</strong></strong></div></div></td>"+
          "<td class='STYLE129' valign='middle' bgcolor='#F0F0F0'><div class='STYLE18' align='center'><div align='center'>里程</div></div></td>"+
          "<td class='STYLE129' valign='middle' bgcolor='#F0F0F0'><div class='STYLE18' align='center'><div align='center'>景点</div></div></td>"+
          "<td class='STYLE23' valign='middle' bgcolor='#F0F0F0'><div align='center' style='width:267px'>餐食</div></td>"+
          "<td class='STYLE129' valign='middle' bgcolor='#F0F0F0'><div class='STYLE18' align='center'><div align='center'>住宿(城镇)</div></div></td>"+
          "<td class='STYLE23' valign='middle' bgcolor='#F0F0F0'><div align='center'>酒店</div></td>"+
          "<td class='STYLE23' valign='middle' bgcolor='#F0F0F0'><div align='center'>元/间</div></td></tr></thead>"+
          "<tbody>";
	    var beriefTrip="";
			var showTriptrs =$("table[name='routetable'] tbody tr");//$("#routetablediv").html();	
			$.parser.parse($(showTriptrs).parent());
			$(showTriptrs).each(function(i,e){
				  if(i!=showTriptrs.length-1){
					 // var beriefTr= document.getElementById("routetablediv").innerHTML;
					  //$("#routetablecopydivtr");
					  var beriefTr="<tr id=beriefTr_"+i+"><td class=STYLE126 width=34 valign=middle><div align=center><select name='tourdays'><option value='1'>1</option>"+
				        "<option value='2'>2</option>"+
				        "<option value='3'>3</option>"+
				        "<option value='4'>4</option>"+
				        "<option value='5'>5</option>"+
				        "<option value='6'>6</option>"+
				        "<option value='7'>7</option>"+
				        "<option value='8'>8</option>"+
				        "<option value='9'>9</option>"+
				        "<option value='10'>10</option>"+
				        "<option value='11'>11</option>"+
				        "<option value='12'>12</option>"+
				        "<option value='13'>13</option>"+
				        "<option value='14'>14</option>"+
				        "<option value='15'>15</option></select></div></td>"+
				        "<td class=STYLE126 width=55 valign=middle>"+
				        "<input name='tourTime' class='easyui-datebox' data-options=\"validType:'dateValided',editable:false,required:true,split:true,border:false,region:'north'\" style='width:100px;'/></td>"+
				        "<td class=STYLE126 width=35 valign=middle>"+
				        "<select name='tourWeekday'><option value='周日'>周日</option>"+
				        "<option value='周一'>周一</option>"+
				        "<option value='周二'>周二</option>"+
				        "<option value='周三'>周三</option>"+
				        "<option value='周四'>周四</option>"+
				        "<option value='周五'>周五</option>"+
				        "<option value='周六'>周六</option></select></td>"+
				        "<td class=STYLE126 width=308 valign=middle><input type=text name='tourDesc'></td>"+
				        "<td class=STYLE126 width=50 valign=middle><input name='mileage' type='number' min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v()></td>"+
				        "<td class=STYLE126 width=124 valign=middle><select name='travelItem' class='easyui-combobox'  style='width:100px;' data-options=\"url:'travelItem/allItems',valueField:'alias',textField:'item',multiple:true,method:'get',editable:false,region:'north',split:true,border:false,required:true,width:151,height:22," +
			            "formatter:function(row){return '<span><input type=checkbox class=selectId style=vertical-align: middle name=selectId_"+new Date().getTime()+"'+row.alias+' value='+row.alias+'>'+row.item+'<span>';},onSelect:function(record){$('input[name=selectId_"+new Date().getTime()+"'+record.alias+']').attr('checked', true);},onUnselect:function(record){$('input[name=selectId_"+new Date().getTime()+"'+record.alias+']').attr('checked', false);}\"></select></td>"+
				        "<td class=STYLE126 width=67 valign=middle>早餐：<input name='breakfast' checked=checked type=checkbox>"+
				        "中餐：<input name='lunch' checked=checked type=checkbox>"+
				        "晚餐：<input name='dinner' checked=checked type=checkbox></td>"+
				        "<td class=STYLE126 width=57 valign=middle><input type=text name='stayposition'></td>"+
				        "<td class=STYLE126 width=171 valign=middle><select name='hotel' >"+
				          "<option >选择该城市酒店</option>"+
				          "<option value='贵山商务酒店'>贵山商务酒店</option>"+
				          "<option value='嘉绒酒店'>嘉绒酒店</option></select>"+
				          "<input name='selfhotel' size=10 type=text>"+
				          "<br>*也可自己填写</td>"+
				          "<td class=STYLE126 width=88 valign=middle><input name='hotelprice' size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v()>" +
				        "</td><td><a name='routeminus' onclick='javascript:itour.quoteEdit.routeMinus(this)'><img alt='' style='height:16px;height:16px;' src='images/minus.png' ></a></td>"+
				      "</tr>";
					  var travelItem = "";
					  $("input[name='travelItem']",$(e)).each(function(i,e){
						  travelItem += $(this).val() + ",";
					  });
					 // console.log($("select[name='travelItem']",$(e)).combobox('getValue'));
					 // travelItem = travelItem.substr(0, travelItem.length - 1);
					  var newtr="<tr><td class='STYLE126' width='34' valign='middle'><div align='center'>"+$("select[name='tourdays'] option:selected",$(e)).val()+"</div></td>"+
			          "<td class='STYLE126' width='55' valign='middle'><span name='tourTime'>"+$("input[name='tourTime']",$(e)).val()+"</span></td>"+
			          "<td class='STYLE126' width='35' valign='middle'><span  name='tourWeekday'>"+$("select[name='tourWeekday'] option:selected",$(e)).text()+"</span></td>"+
			          "<td class='STYLE126' width='308' valign='middle'><span name='tourDesc'>"+$("input[name='tourDesc']",$(e)).val()+"</span></td>"+
			          "<td class='STYLE126' width='50' valign='middle'><span name='mileage'>"+$("input[name='mileage']",$(e)).val()+"</span></td>"+
			          "<td class='STYLE126' width='124' valign='middle'><span name='travelItem'>"+$($("div.panel.combo-p")[i]).find(".combobox-item.combobox-item-selected").text()+"</span></td>"+
			          "<td class='STYLE126' width='267' valign='middle'>" +	//$($("div.panel.combo-p")[i]).find(".combobox-item.combobox-item-selected").text()
			          ($("input:checked[name='breakfast']",$(e)).is(':checked') ?"<span name='breakfast'>早餐</span>":"") +
	        		  ($("input:checked[name='lunch']",$(e)).is(':checked') ?"<span name='lunch'>中餐</span>" :"")+
    				  ($("input:checked[name='dinner']",$(e)).is(':checked') ?"<span name='dinner'>晚餐</span>":"") +
    				  "</td>"+
			          "<td class='STYLE126' width='57' valign='middle'><span name='stayposition'>"+$("input[name='stayposition']",$(e)).val()+"</span></td>"+
			          "<td class='STYLE126' width='171' valign='middle'><span  name='hotel'>"+
			          ($("input[name='selfhotel']",$(e)).val()?$("input[name='selfhotel']",$(e)).val():($("select[name='hotel'] option:selected",$(e)).val()=="选择该城市酒店"?"":$("#hotel option:selected",$(e)).val()))+"</span>"+
			          "</td><td class='STYLE126' width='88' valign='middle'><span  name='hotelprice'>"+$("input[name='hotelprice']",$(e)).val()+"</span></td></tr>";
			          showTrip+=newtr;
			          $("select[name='tourdays']",$(beriefTr)).val($("select[name='tourdays']",$(e)).find("option:selected").val());	
			          //$("input[name='tourTime']",$(beriefTr)).datebox('setValue',$("input[name='tourTime']",e).datebox('getValue'));
			          $("select[name='tourWeekday']",$(beriefTr)).val($("select[name='tourWeekday']",$(e)).find("option:selected").val());
			          $("input[name='tourDesc']",$(beriefTr)).val($("input[name='tourDesc']",$(e)).val());
			          $("input[name='mileage']",$(beriefTr)).val($("input[name='mileage']",$(e)).val());
			          $("input[name='breakfast']",$(beriefTr)).attr("checked",$("input:checked[name='breakfast']",$(e)).is(':checked'));
	        		  $("input[name='lunch']",$(beriefTr)).attr("checked",$("input:checked[name='lunch']",$(e)).is(':checked'));
    				  $("input[name='dinner']",$(beriefTr)).attr("checked",$("input:checked[name='dinner']",$(e)).is(':checked'));
			          $("input[name='stayposition']",$(beriefTr)).val($("input[name='stayposition']",$(e)).val());
			        //  $("select[name='travelItem']",$(beriefTr)).combobox('setValue',travelItem);
			          if($("input[name='selfhotel']",$(e)).val()){
			        	  $("input[name='selfhotel']",$(beriefTr)).val($("input[name='selfhotel']",$(e)).val());
			          }else{			        	  
			        	  $("select[name='hotel']",$(beriefTr)).val($("select[name='hotel']",$(e)).find("option:selected").val()=="选择该城市酒店"?"":$("select[name='hotel']option:selected",$(e)).val());
			          }
			          $("input[name='hotelprice']",$(beriefTr)).val($("input[name='hotelprice']",$(e)).val());
			           
			          beriefTrip+=beriefTr;   
	        		 // formData["travelItems"]=travelItem;
				  }
			});
			showTrip+="<tr><td class='STYLE126' valign='middle'>&nbsp;</td>"+
          "<td class='STYLE126' valign='middle'>&nbsp;</td>"+
          "<td class='STYLE126' valign='middle'>&nbsp;</td>"+
          "<td class='STYLE126' valign='middle'>&nbsp;</td>"+
          "<td class='STYLE126' valign='middle'>&nbsp;</td>"+
          "<td class='STYLE126' valign='middle' colspan='3'><input name='route_checkall' checked='checked' type='checkbox'>全选/全不选 </td>"+
          "<td class='STYLE126' valign='middle'>*没选则表示不含</td>"+
          "<td class='STYLE126' valign='middle'>&nbsp;</td>"+
         "<td class='STYLE126' valign='middle'>&nbsp;</td>"+
         "</tr></tbody></table>";
			formData["showTrip"]=showTrip;
			formData["beriefTrip"]=beriefTrip;
			 
			//console.log(formData["showTrip"]);
			__.post(actionurl, formData, function(result) {
				//console.log("data.success="+data.success);
				if (result.success) {
					_this.showSuccess(result.msg);
				} else {
					_this.showError(result.msg);
				}
			});
		
		},	
/*		addLensRow:function ()
		{   
		    var newTr = lens_spec_tb.insertRow(-1);   
		    
		    var newTd0 = newTr.insertCell();//添加两列
		    var newTd1 = newTr.insertCell();
		    var newTd2 = newTr.insertCell();
		    var newTd3 = newTr.insertCell();
		    var newTd4 = newTr.insertCell();
		    var newTd5 = newTr.insertCell();
		    var newTd6 = newTr.insertCell();
		    var newTd7 = newTr.insertCell();
		    //设置列内容和属性
		     
		    var id = lens_spec_tb.rows.length-1;
		    newTd6.innerHTML = '<input id="qiujing'+id+'" type="text" />';
		    newTd5.innerHTML = '<input id="zhujing'+id+'" type="text" />';
		    newTd4.innerHTML = '<input id="shangguang'+id+'" type="text" />';
		    newTd3.innerHTML = '<input id="xiaguang'+id+'" type="text" />';
		    newTd2.innerHTML = '<input id="zhouwei'+id+'" type="text" />';
		    newTd1.innerHTML = '<input id="jiwan'+id+'" type="text" />';
		    newTd0.innerHTML = '<input id="add'+id+'" type="text" />';
		    newTd7.innerHTML = '<input id="shuliang'+id+'" type="text" value="1" onBlur="onlyNum(this);"/>';
		     
		},*/
		dinnerPlus:function(){
			var insertDinner="<tbody><tr><td><a name='addspecialdinner'><img src=images/add.gif width=16 height=16 ></a></td><td rowspan=3>安排特色餐： <select name=province><option>四川</option> <option>云南</option> <option>西藏</option><option>新疆</option> </select></td></tr></tbody>"+
			"<tbody><tr><td><input name=district size=10 type=text></td>"+
	    	"<td><span class=style126>餐名：<input name=dinnername size=10 type=text>&nbsp;"+
	        "<input name=dinnerprice size=6 style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>元/人 </span></td>"+
	        "<td><a name='addsingledinner'><img src=images/add.gif width=16 height=16 ></a></td></tr></tbody>"+
	    	"<tbody><tr><td><input name=district size=10 type=text></td><td>餐名：<input name=dinnername size=10 type=text>&nbsp;"+
	        "<input name=dinnerprice size=6 style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
	 		 "元/人</td><td><a name='addsingledinner'><img src=images/add.gif width=16 height=16 ></a></td> </tr></tbody>";
			$("#specialdinnerblock table").append(insertDinner);
		},
		dinnerMinus:function(){
			
		},
		specialDinnerPlus:function(obj){
			var specialDinner="<tbody><tr><td><input name=district size=10 type=text></td>"+
			"<td><span class=style126>餐名：<input name=dinnername size=10 type=text>&nbsp;"+
			"<input name=dinnerprice size=6  style='width:50px'  type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>元/人 </span></td>"+
			"<td><a name='addsingledinner' ><img src=images/add.gif width=16 height=16 ></a></td></tr></tbody>";
			$(obj).parent().parent().parent().after(specialDinner);		
		},specialDinnerMinus:function(){
											
		},singleDinnerPlus:function(obj){
			var singledinner = " <td>餐名：<input name=dinnername size=10 type=text>&nbsp;"+
			"<input name='dinnerprice' size=6  style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>元/人</td>";
			$(obj).parent().before(singledinner);
		},singleDinnerMinus:function(){
			
		},
		sightPlus:function(){
			var insertBlock = "<span class=STYLE126><br> 景点名称"+
			"<input name=sight size=20 type=text>"+
			"<input name=sightprice size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
			"元/人<a name=minusSight><img src=images/minus.png onclick='javascript:itour.quoteEdit.sightMinus(this)' width=20 height=20 ></a></span>";
			$("#addsightdiv").append(insertBlock);
		},
		sightMinus:function(e){
			 $(e).parent().parent().remove();
		},
		routePlus:function(){
			var lastTr = $("table[name='routetable'] tbody>tr:last"); 
			var insertTr ="<tr>"+
					"<td class=STYLE126 width=34 valign=middle><div align=center><select name='tourdays'><option value='1'>1</option>"+
			          "<option value='2'>2</option>"+
			          "<option value='3'>3</option>"+
			          "<option value='4'>4</option>"+
			          "<option value='5'>5</option>"+
			          "<option value='6'>6</option>"+
			          "<option value='7'>7</option>"+
			          "<option value='8'>8</option>"+
			          "<option value='9'>9</option>"+
			          "<option value='10'>10</option>"+
			          "<option value='11'>11</option>"+
			          "<option value='12'>12</option>"+
			          "<option value='13'>13</option>"+
			          "<option value='14'>14</option>"+
			          "<option value='15'>15</option></select></div></td>"+
			          "<td class=STYLE126 width=55 valign=middle>"+
			          "<input name='tourTime' class='easyui-datebox' data-options=\"validType:'dateValided',editable:false,required:true,split:true,border:false,region:'north'\" style='width:100px;'/></td>"+
			          "<td class=STYLE126 width=35 valign=middle>"+
			          "<select name='tourWeekday'><option value='周日'>周日</option>"+
			          "<option value='周一'>周一</option>"+
			          "<option value='周二'>周二</option>"+
			          "<option value='周三'>周三</option>"+
			          "<option value='周四'>周四</option>"+
			          "<option value='周五'>周五</option>"+
			          "<option value='周六'>周六</option></select></td>"+
			          "<td class=STYLE126 width=308 valign=middle><input type=text name='tourDesc'></td>"+
			          "<td class=STYLE126 width=50 valign=middle><input name='mileage' type='number' min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v()></td>"+
			          "<td class=STYLE126 width=124 valign=middle><select name='travelItem' class='easyui-combobox'  style='width:100px;' data-options=\"url:'travelItem/allItems',valueField:'alias',textField:'item',multiple:true,method:'get',editable:false,region:'north',split:true,border:false,required:true,width:151,height:22," +
			          "formatter:function(row){return '<span><input type=checkbox class=selectId style=vertical-align: middle name=selectId_"+new Date().getTime()+"'+row.alias+' value='+row.alias+'>'+row.item+'<span>';},onSelect:function(record){$('input[name=selectId_"+new Date().getTime()+"'+record.alias+']').attr('checked', true);},onUnselect:function(record){$('input[name=selectId_"+new Date().getTime()+"'+record.alias+']').attr('checked', false);}\"></select></td>"+
			          "<td class=STYLE126 width=67 valign=middle>早餐：<input name='breakfast' checked=checked type=checkbox>"+
			          "中餐：<input name='lunch' checked=checked type=checkbox>"+
			          "晚餐：<input name='dinner' checked=checked type=checkbox></td>"+
			          "<td class=STYLE126 width=57 valign=middle><input type=text name=stayposition></td>"+
			          "<td class=STYLE126 width=171 valign=middle><select name='hotel' >"+
			            "<option>选择该城市酒店</option>"+
			            "<option value='贵山商务酒店'>贵山商务酒店</option>"+
			            "<option value='嘉绒酒店'>嘉绒酒店</option></select>"+
			            "<input name='selfhotel' size=10 type=text>"+
			            "<br>*也可自己填写</td>"+
			            "<td class=style126 width=88 valign=middle><input name='hotelprice' size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v()>" +
			          "</td><td><a name='routeminus' onclick='javascript:itour.quoteEdit.routeMinus(this)'><img alt='' style='height:16px;height:16px;' src='images/minus.png' ></a></td>"+
			        "</tr>";
			//_this.initTravelItem(insertTr);
			$(insertTr).insertBefore(lastTr);
			//$.parser.parse($(insertTr));
			$.parser.parse($("table[name='routetable'] tbody"));
		},
		routeMinus:function(e){
			//$("table[name=='routetable'] tbody")
			//var index = $(e).parent().parent().attr("rowIndex");
			 $(e).parent().parent().remove();
		},
		cardPlus:function(){
			var insertBlock="<span class=STYLE126><br> "+
	        "<input name=card size=20 type=text>&nbsp;&nbsp;"+
	        "<input name=cardprice size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
	        "元/人&nbsp;&nbsp;备注：<input name=cardremark size=20 type=text><a name=minusCard><img src=images/minus.png onclick='javascript:itour.quoteEdit.sightMinus(this)' width=20 height=20 ></a></span>";
			$("#addcarddiv").append(insertBlock);
		},cardMinus:function(e){
			 $(e).parent().parent().remove();
		},
		guidePlus:function(){
			var insertBlock="<span class=style126>"+
			"<br><input name=alltheway value=全程 size=10 type=text>"+
          "<select name=choselanguage id=choselanguage>"+
            "<option>选择语种</option>"+
            "<option value=中文>中文</option>"+
            "<option value=英文>英文</option>"+
          "</select>&nbsp;&nbsp;"+
        "<input name=priceperday size=6  style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
        "元/天 &nbsp;&nbsp;X "+
          "<input name=days  size=6 style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
          	"天 &nbsp;&nbsp;备注：<input name=guideremark size=10 type=text>" +
          	"<a name=guideminus onclick='javascript:itour.quoteEdit.guideMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span>"	;
			$("#addGuideDiv").append(insertBlock);
		},guideMinus:function(e){
			$(e).parent().remove();
		},
		carPlus:function(){
			var insertBlock="  <span class=STYLE126> <br>   "+
			"<input name=alltheway value=全程 size=10 type=text>&nbsp;&nbsp;"+
			"<input name=carprice size=6 style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
        	"元/ <select name=carstyle id=carstyle>"+
            "<option selected=selected>方式</option>"+
            "<option value=天>天</option>"+
            "<option value=公里>公里 </option>"+
            "<option value=趟>趟</option>"+
	          "</select>"+
	          "X<input name=carcount size=6 style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
             	"数量&nbsp;&nbsp;　备注： "+
              "<input name=carremark size=20 type=text>"+
              "<a name=carminus onclick='javascript:itour.quoteEdit.carMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span>";
			$("#addcardiv").append(insertBlock);
		},
		carMinus:function(e){
			$(e).parent().remove();
		},trafficPlus:function(){
			var insertBlock="<span class=STYLE126><br> "+
			"<input name=trafficpersons size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
			"<input name=trafficperprice size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
        	"元/ 人 &nbsp;&nbsp;备注： <input name=trafficremark size=20 type=text>" +
        	"<a name=trafficminus onclick='javascript:itour.quoteEdit.trafficMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span>";
			$("#addbigtrafficdiv").append(insertBlock);
		},trafficMinus:function(e){
			$(e).parent().remove();
		},insurancePlus:function(){
		  var insertBlock="<span class=style126><br><select name=insuranceselect id=insuranceselect>"+
          "<option value=人>内宾旅游意外保险</option>"+
          "<option value=团>入境旅游意外保险</option>"+
          "</select>"+
          "<input name=insuranceprice size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
          	"元/人&nbsp;&nbsp;备注："+
            "<input name=insuranceremark size=20 type=text>"+
            "<a name=insuranceminus onclick='javascript:itour.quoteEdit.insuranceMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span>";
			$("#insurancediv").append(insertBlock);
		},insuranceMinus:function(e){
			$(e).parent().remove();
		},allfeePlus:function(){
			var insertBlock="<span class=style126><br>"+
      "<input name=feeName value=旅行社综合服务费 size=20 type=text>"+
          "<input name=feeperperson size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
       	"元/人&nbsp;&nbsp;备注："+
        "<input name=feeremark size=20 type=text>"+
      "<a name=allfeeminus onclick='javascript:itour.quoteEdit.allfeeMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span>";
		$("#allfeesdiv").append(insertBlock);
		},allfeeMinus:function(e){
			$(e).parent().remove();
		},joyPlus:function(){
			var insertBlock="<span class=STYLE126><br>"+
			"<input name=joyitem size=20 type=text>"+
            "<input name=perjoyprice size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
      		"元/人　&nbsp;&nbsp;备注："+
      		"<input name=joyremark size=20 type=text>"+
      		"<a name=joyminus onclick='javascript:itour.quoteEdit.joyMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span>";
			$("#addjoysdiv").append(insertBlock);
		},
		joyMinus:function(e){
			$(e).parent().remove();
		},hikingGuidePlus:function(){
			var insertBlock="<span class=style126> <br>"+
			"<input name=hikingitem size=20 type=text>"+
			"<input name=guidename size=4 type=text>"+
			"向导数 X"+
			"<input name=guideperday size=6 style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
			"元/天 X  "+
			"<input name=guidedays size=4 style='width:50px' type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
        	"天　&nbsp;&nbsp;备注："+
        	"<input name=hikingguideremark size=20 type=text>"+
          	"<a name=joyminus onclick='javascript:itour.quoteEdit.joyMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span> ";
		$("#hikingguidediv").append(insertBlock);
		},hikingGuideMinus:function(e){
			$(e).parent().remove();
		},bathhorsePlus:function(){
			var insertBlock="<span class=STYLE126><br><input name=bathorseCost size=20 type=text>"+
			"<input name=bathorsenum size=4 style=width:50px type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
			"马匹数 X<input name=bathorseperday size=6 style=width:50px type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
			"元/天  X  <input name=bathorseprice size=4 style=width:50px type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
         	 "天　&nbsp;&nbsp;备注：<input name=bathorseremark size=20 type=text> <a name=bathorseminus onclick='javascript:itour.quoteEdit.bathhorseMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span> ";
			$("#bathorseCostdiv").append(insertBlock);
		},bathhorseMinus:function(e){
			$(e).parent().remove();
		},ridehorsePlus:function(){
			var insertBlock=" <span class=style126><br>"+
			"<input name=ridehorse size=20 type=text>"+
			"<input name=ridehorseperday size=6 type=text>"+
       		"元/天  X<input name=ridehorsedays size=4 type=text>天　&nbsp;&nbsp;备注："+
       		"<input name=ridehorseremark size=20 type=text>"+
            "<a name=rideorseminus onclick='javascript:itour.quoteEdit.ridehorseMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span> 　";
			$("#addridehorseCost").append(insertBlock);
		},ridehorseMinus:function(e){
			$(e).parent().remove();
		},climbRegisterPlus:function(){
			var insertSpan="<span class=style126><br>"+
				"<input name=climbRegister size=20 type=text><input name=climbRegisterperday size=6 type=text>"+
				"元/天  X<input name=climbRegisterdays size=4 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
				"天　&nbsp;&nbsp;备注：<input name=climbRegisterremark size=20 type=text>"+
				"<a name=climbRegisterminus onclick='javascript:itour.quoteEdit.climbRegisterMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span";
				$("#climbregisterdiv").append(insertSpan);
		},climbRegisterMinus:function(e){
			$(e).parent().remove();
		},climbnexusPlus:function(){
			var insertSpan="<span class=style126><br>"+
				"<input name=climbnexus size=20 type=text><input name=climbnexusnum value=1 size=4 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>人数 X"+
				"<input name=climbnexusperday size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>元/天  X  "+
				"<input name=climbnexusdays size=4 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>天　&nbsp;&nbsp;备注："+
				"<input name=climbnexusremark size=20 type=text>"+
				"<a name=climbnexusminus onclick='javascript:itour.quoteEdit.climbnexusMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></span>";
				$("#climbnexusdiv").append(insertSpan);
		},climbnexusMinus:function(e){
			$(e).parent().remove();
		},elsefeePlus:function(){
			var insertSpan="<span class=STYLE126><br>"+
			"<input name=elseitem size=20 type=text>"+
			"<input name=elseitemprice size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>"+
       	 	" 元/	<select name=elseitemstyle id=elseitemstyle>"+
       	 	" <option selected=selected>方式</option>"+
       	 	" <option value=人>人</option>"+
       	 	" <option value=团>团</option>"+
       	 	"</select>&nbsp;&nbsp;备注：<input name=elseitemremark size=20 type=text>"+
           	" <a name=elseitemminus onclick='javascript:itour.quoteEdit.elsefeeMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></span>";
			$("#elseitemdiv").append(insertSpan);
		},elsefeeMinus:function(e){
			$(e).parent().remove();
		},
		showSuccess:function (str) {
			$('#alertMessage').removeClass('error').html(str).stop(true, true).show().animate({
				opacity : 1,
				right : '0'
			}, 500);
		},
		showError:function (str) {//显示错误提示
			$('#alertMessage').addClass('error').html(str).stop(true, true).show().animate({
				opacity : 1,
				right : '0'
			}, 500);

		},
		initTravelItem:function(e){
			$("select[name='travelItem']",e).combobox({
			url:'travelItem/allItems',
			valueField:'alias',
			textField:'item',
			multiple:true,
			method:'get',
		    editable : false  ,
			formatter:function(row){
			   var s = "<span><input type='checkbox' class='selectId' style='vertical-align: middle' id='selectId_"+row.alias+"' value="+row.alias+">"+row.item+"<span>"
			   return s;  
			},
			onSelect:function(record){
				$("#selectId_"+record.alias).attr("checked", true);
			},
			onUnselect:function(record){
				$("#selectId_"+record.alias).attr("checked", false);
			}
		})},
		checkedAll:function (name){//全选
		  var names=document.getElementsByName(name);
		  var len=names.length;
		  if(len>0){
		   for(var i=0;i<len;i++)
		   names[i].checked=true;
		  }
		},
		uncheckedAll:function (name){//全不选
			var names=document.getElementsByName(name);
			var len=names.length;
			if(len>0){
			    for(var i=0;i<len;i++)
			    names[i].checked=false;
			  }
		},
		formatterDate : function(date) {//得到当前日期
			var day = date.getDate() > 9 ? date.getDate() : "0" + date.getDate();
			var month = (date.getMonth() + 1) > 9 ? (date.getMonth() + 1) : "0"
			+ (date.getMonth() + 1);
			return date.getFullYear() + '-' + month + '-' + day;
		},
		init:function(){
	/*	   $("input[name='tourTime']").datebox({  
			   onSelect:function(date){  
			            var nowDate = new Date();  
			            if(date<=nowDate){  
			            	itour.alert("提示","选择行程安排日期应在当前日期之后","info" );
			                $("input[name='tourTime']").datebox('setValue','');  
			                return false;
			            }else{
			            	return true;
			            }  
			        }  
		    }); */
			$("input[name='rtbtn']").click(_this.saveQuoteForm);
			$("input[name='route_checkall']").click(function(){
				if($(this).attr("checked")){
					_this.checkedAll("breakfast");
					_this.checkedAll("lunch");
					_this.checkedAll("dinner");
				}else{
					_this.uncheckedAll("breakfast");
					_this.uncheckedAll("lunch");
					_this.uncheckedAll("dinner");
				}
			});
			$("a[name='routeplus']").click(_this.routePlus);
			$("a[name='addSight']").click(function(){_this.sightPlus()});
			$("a[name='addCard']").click(function(){_this.cardPlus()});
			$("a[name='addGuide']").click(function(){_this.guidePlus()});  
			$("a[name='addusecar']").click(function(){_this.carPlus()});
			$("a[name='addbigtraffic']").click(function(){_this.trafficPlus()});
			$("a[name='addinsurance']").click(function(){_this.insurancePlus()});
			$("a[name='addallfees']").click(function(){_this.allfeePlus()});
			$("a[name='addjoys']").click(function(){_this.joyPlus()});
			$("a[name='addhikingguide']").click(function(){_this.hikingGuidePlus()});   
			$("a[name='addbathorseCost']").click(function(){_this.bathhorsePlus()});
			$("#addridehorseCost").click(function(){_this.ridehorsePlus()});
			$("a[name='addclimbregisterCost']").click(function(){_this.climbRegisterPlus()});
			$("a[name='addclimbnexusCost']").click(function(){_this.climbnexusPlus()});
			$("a[name='addelseitem']").click(function(){_this.elsefeePlus()}); 
			$("a[name='adddinner']").click(function(){_this.dinnerPlus()});
			$("a[name='addspecialdinner']").live('click',function(){_this.specialDinnerPlus(this)});
			$("a[name='addsingledinner']").live('click',function(){_this.singleDinnerPlus(this)}); 
		
			$.extend($.fn.validatebox.defaults.rules,{  
			    dateValided : {  
			        validator : function(value) { //参数value为当前文本框的值
			        	var d =  _this.formatterDate(new Date());
			        //	itour.alert('提示',value +"    "+ d+"   "+(value > d),'info');
			           if(d>=value){
			        	   //itour.alert('提示','选择行程安排日期应在当前日期之后','warn');
			        	   //$("input[name='tourTime']").datebox('setValue','');  
			           }else{
			        	   return value > d;  
			           }
			        },  
			        message : '选择行程安排日期应在当前日期之后'  //
			    }  
			}); 
		

		} 
	}
	return _this;
}();
window.onload=function(){
	itour.quoteEdit.init();
}
/*$(function(){
	itour.quoteEdit.init();
});*/
