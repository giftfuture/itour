$package('itour.quoteEdit');
itour.quoteEdit = function(){
	var _box = null;
	var _this = {
		saveQuoteForm:function(){
			var formData = new Object();
			var actionurl=basePath+"routeTemplate/updateQuoteForm";
			formData["routeTemplate"]  = $('input[name="rtId"]').val();
			//formData.quoteEditForm = $("form[name='quoteEditForm']").html();
			formData["beriefTrip"]=$("table[name='routetable'] tbody").html();
			formData["adults"] = $("input[name='adults']").val();
			formData["children"]=$("input[name='children']").val();
			formData["isAsAdult"] = $("input[name='isAsAdult'][value='isAsAdult']").attr("checked");
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
			formData["bigTrafficSum"]=$("input[name='train-ticket'][value='bigTrafficSum']").attr("checked");
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
			//console.log(formData);
			__.post(actionurl, formData, function(result) {
				//console.log("data.success="+data.success);
				if (result.success) {
					showSuccess(result.msg);
				} else {
					showError(result.msg);
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
		
	config:{
		event:{
				add : function(){
					_this.delAllLine(true);//清空已有的数据
					_box.handler.add();//调用add方法
				var parentId =$('#search_parentId').val();
				if(parentId){
					$("#edit_parentId").val(parentId);
				}
			},
			edit:function(){
				_this.delAllLine(true);
				_box.handler.edit(function(result){
					$.each(result.data.btns,function(i,btn){
						_this.addLine(btn);
					});
				});
			},
			save:function(){
				
			}
		},
		action:{
	 			//save:'routeTemplate/updateQuoteForm', //新增&修改 保存Action  
			}
		},
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
					"<td class=STYLE126 width=34 valign=middle><div align=center></div></td>"+
			          "<td class=STYLE126 width=55 valign=middle>"+
			          "<input name='tourTime' class='easyui-datebox' data-options=\"editable:false,required:true,split:true,border:false,region:'north'\" style='width:100px;'/></td>"+
			          "<td class=STYLE126 width=35 valign=middle>"+
			          "<select name=tourWeekday><option>周日</option>"+
			          "<option>周一</option>"+
			          "<option>周二</option>"+
			          "<option>周三</option>"+
			          "<option>周四</option>"+
			          "<option>周五</option>"+
			          "<option>周六</option></select></td>"+
			          "<td class=STYLE126 width=308 valign=middle><input type=text name=tourDesc></td>"+
			          "<td class=STYLE126 width=50 valign=middle><input name=mileage type='number' min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v()></td>"+
			          "<td class=STYLE126 width=124 valign=middle><input type=text name=travelItem  class='easyui-combobox'  style='width:100px;' data-options=\"valueField:'alias',textField:'item',mode:'remote',panelHeight:'auto',editable:false,method:'get',url:'travelItem/allItems'\"></td>"+
			          "<td class=STYLE126 width=67 valign=middle>早餐：<input name=breakfast checked=checked type=checkbox>"+
			          "中餐：<input name=lunch checked=checked type=checkbox>"+
			          "晚餐：<input name=dinner checked=checked type=checkbox></td>"+
			          "<td class=STYLE126 width=57 valign=middle><input type=text name=stayposition></td>"+
			          "<td class=STYLE126 width=171 valign=middle><select name=hotel id=select5>"+
			            "<option>选择该城市酒店</option>"+
			            "<option>贵山商务酒店</option>"+
			            "<option>嘉绒酒店</option></select>"+
			            "<input name=selfhotel size=10 type=text>"+
			            "<br>*也可自己填写</td>"+
			            "<td class=STYLE126 width=88 valign=middle><input name=hotelprice size=6 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v()>" +
			          "</td><td><a name=routeminus onclick='javascript:itour.quoteEdit.routeMinus(this)'><img alt='' style='height:16px;height:16px;' src='images/minus.png' ></a></td>"+
			        "</tr>";
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
		init:function(){
		   $("input[name='tourTime']").datebox({  
			        onSelect:function(date){  
			            var nowDate = new Date();  
			            if(date<nowDate){  
			            	alert("选择行程安排日期应在当前日期或以后" );
			                $("input[name='tourTime']").datebox("setValue","");  
			            }  
			        }  
		    }); 
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
		} 
	}
	return _this;
}();

$(function(){
	itour.quoteEdit.init();
});