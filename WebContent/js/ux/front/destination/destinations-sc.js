$package('itour.destinationssc');
itour.destinationssc = function(){
	var _this = {
		
		init:function(){
		/*	$("select[name='allScopes']").combobox({ 
			    url:basePath+'travelItem/allScopes', 
			    valueField:'key',    
			    textField:'value'
			});
			$("select[name='scopes']").combobox({ 
			    url:basePath+'travelItem/allScopes', 
			    valueField:'key',    
			    textField:'value'
			});
			$("select[name='areas']").combobox({ 
			    url:basePath+'travelItem/allScopes', 
			    valueField:'key',    
			    textField:'value'
			});*/
		}
	}
	return  _this;
}();

$(function(){
	itour.destinationssc.init();
});