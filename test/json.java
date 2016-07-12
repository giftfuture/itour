import org.json.JSONException;

import com.itour.base.util.json.JSONUtil;
import com.itour.entity.Customers;


public class json {

	public static void main(String[] args) {
		Customers cust = new Customers(1,"dsd","ddssss");
		try {
			String s = JSONUtil.toJSONString(cust);
			System.out.println(s);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
