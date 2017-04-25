<%@ page language="java"  pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE HTML>
<html>
 <head>
 <link rel="stylesheet" type="text/css" href="${basePath}/css/zxxFile.css">
 <script type="text/javascript" src="${basePath}/js/commons/zxxFile.js"></script> 
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" style="height: 120px;" title="过滤条件" data-options="striped: true,region:'north',collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">景点代码:</label>
			<input name="itemCode" class="easyui-box ui-text" style="width:110px;"/>
			<label class="ui-label">景点名称:</label>
			<input name="item" class="easyui-box ui-text" style="width:108px;"/>
			<label class="ui-label">是否热门:</label>
			<select name="hot" class="easyui-box ui-text" style="width:108px;">
				<option value="0">否</option>
			 	<option value="1">是</option>
			 </select>
			<label class="ui-label">海&nbsp;&nbsp;拔:</label>
			<select name="elevation" class="easyui-box ui-text" style="width:100px;">
				<option value="">--请选择--</option>
				<option value="1">100米以下</option>
				<option value="2">500米以下</option>
				<option value="3">1000米以下</option>
				<option value="4">2000米以下</option>
				<option value="5">4000米以下</option>
				<option value="6">6000米以下</option>
				<option value="7">8000米以下</option>
				<option value="8">8000米以上</option>
			</select>
			<label class="ui-label">所属省市:</label>
			 <input name="areas" class="easyui-combobox"  data-options="width:130,height:20,valueField:'scopeAlias',textField:'scope',mode:'remote',panelHeight:'auto',editable:false,method:'get',url:'${basePath}travelItem/allScopes'">
		<!-- 	<select name="scope" class="easyui-box ui-text" style="width:100px;">
				<option value="">--请选择--</option>
				<option value="四川">四川</option>
				<option value="云南">云南</option>
				<option value="西藏">西藏</option>
				<option value="新疆">新疆</option>
			</select> -->
			</p><p class="ui-fields"><label id="rcmdCrowd" class="ui-label">推荐人群:&nbsp;</label>
			<label class="ui-label" id="SelectrankLabel">推荐指数:&nbsp;</label>
			<label class="ui-label">里&nbsp;&nbsp;程:</label>
			<select name="mileage" class="easyui-box ui-text" style="width:100px;">
				<option value="">--请选择--</option>
				<option value="1">5公里以内</option>
				<option value="2">20公里以内</option>
				<option value="3">50公里以内</option>
				<option value="4">200公里以内</option>
				<option value="5">500公里以内</option>
				<option value="6">1000公里以内</option>
				<option value="7">2000公里以内</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a></p>
      </form>
      </div>
       <!--  Search panel end -->
     <div region="center" border="false" >
     <!-- Data List -->
     <table id="data-list"></table>
	 </div>
	 <!-- Edit Win&Form -->
	 <div id="upload-photo" title="图片上传" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:420px;">	 
     	<form  class="ui-form" id="multiDataForm" name="multiDataForm" method="post" enctype="multipart/form-data" autocomplete="off">
   				 <input class="hidden" name="id">
   				 <div class="ui-edit">
    		       <div class="fitem upload"><!-- <label>美&nbsp;&nbsp;图:</label> -->
					<div class="upload_box">
                        <div class="upload_main">
                            <div class="upload_choose">
                                <input id="fileImage" type="file" name="fileselect" size="30"  multiple="multiple" accept="image/*"  />
                            </div>
                            <div id="preview" class="upload_preview"></div>
                        </div>
                        <div class="upload_submit">
                            <button type="submit" id="fileSubmit" class="upload_submit_btn">确认上传</button>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <button class="upload_cancel_btn" id="win-close">取消上传</button>
                        </div>
                        <div id="uploadInf" class="upload_inf"></div>
                    </div>
				</div>
				</div>
     	</form>
	 </div>  
 	 <div id="edit-photo" title="图片编辑" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:420px;">	 
     	<form action="" class="ui-form" id="editPhotoForm" name="editPhotoForm" method="post" ><!-- enctype="multipart/form-data" -->
   				 <input class="hidden" name="id">
   				 <div class="ui-edit">
    		       <div class="fitem upload"><!-- <label>美&nbsp;&nbsp;图:</label> -->
					<div class="upload_box">
                        <div class="upload_main">
                            <div id="previewPhotos" class="upload_preview">
								<!-- <img alt="图片浏览" src=""> -->
                            </div>
                        </div>
                        <div class="upload_submit">
                            <button type="submit" id="editPhotoSubmit" class="upload_submit_btn">确定</button>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <button class="upload_cancel_btn" id="editwin-close">取消</button>
                        </div>
                        <div id="uploadInf" class="upload_inf"></div>
                    </div>
				</div>
				</div>
     	</form>
	 </div>  
     <div id="edit-win" title="旅行景点" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:420px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">旅行景点</div>
					<div class="fitem">
						<label>景点名称:</label><input name="item" type="text" maxlength="255" required="true" class="easyui-validatebox" data-options="" missingMessage="请填写项目名称">
						<span style="color:red">*</span>
					</div>
					<div class="fitem">
						<label>所属省市:</label><input name="scope" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写scope">
					</div>
					<div class="fitem">
						<label>简略描述:</label><input name="shortContent" type="text" maxlength="255" required="true" class="easyui-validatebox" data-options="" missingMessage="请填写简略描述"><span style="color:red">*</span>
					</div>	
						
					<div class="fitem">
						<label>海&nbsp;&nbsp;拔:</label><input name="elevation" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写elevation">
					</div>
<!-- 					<div class="fitem">
						<label>里&nbsp;&nbsp;程:</label><input name="mileage" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写mileage">
					</div> -->
					<div class="fitem">
						<label>具体介绍:</label><textarea rows="7" cols="30" name="remark" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写具体介绍"></textarea>
					</div> 
				  	<div class="fitem">
						<label id="rankLabel">推荐指数:</label>
						</div>  
<!-- 					<div class="fitem">
						<label>推荐原因:</label><input name="recommandReason" type="text" maxlength="512" class="easyui-validatebox" data-options="" missingMessage="请填写recommandReason">
					</div>
					<div class="fitem">
						<label>建议天数:</label><input name="rcdDays" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写rcdDays">
					</div>
					<div class="fitem">
						<label id="difficultyRateLabel">挑战度:</label>
					</div>
					<div class="fitem">
						<label id="happyLabel">好玩值:</label>
					</div>
					<div class="fitem">
						<label id="rucrowd">建议人群:</label>
					</div> -->
					<div class="fitem">
						<label>备注(提醒建议):</label><textarea rows="7" cols="30" name="remark" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写remark"></textarea>
					</div>
  			</div>
     	</form>
  	 </div>
<script type="text/javascript" src="${basePath}/js/ux/sys/travelItem.js"></script>		  
  </body>
</html>
