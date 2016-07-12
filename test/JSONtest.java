
import java.lang.reflect.Field;



import org.json.JSONException;

import com.itour.base.util.json.JSONUtil;
/*import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;*/
package test;
import com.itour.entity.Customers;
import  com.alibaba.fastjson.parser.ParserConfig;


public class JSONtest {
     
	public static void main(String[] args) {
		Customers cust = new Customers(1,"dsd","ddssss");
		try {
			String s = JSONUtil.toJSONString(cust);
			System.out.println(s);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*String s = JSONArray.(cust);
		Field ff = ParserConfig.getField(com.itour.entity.Customers.class, "name");
		System.out.println(JSON.toJSON(cust, ParserConfig.getGlobalInstance()));
		System.out.println(JSON.toJSONString(cust));*/

	}
	
}
