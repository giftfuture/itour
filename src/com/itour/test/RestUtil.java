package com.itour.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class RestUtil {
	public String load(String url,String query) throws Exception
    {

		URL restURL = new URL(url);

        HttpURLConnection conn = (HttpURLConnection) restURL.openConnection();

        conn.setRequestMethod("POST");

        conn.setDoOutput(true);

        conn.setAllowUserInteraction(false);

        PrintStream ps = new PrintStream(conn.getOutputStream());
        ps.print(query);

        ps.close();

        BufferedReader bReader = new BufferedReader(new InputStreamReader(conn.getInputStream()));

        String line,resultStr="";

        while(null != (line=bReader.readLine()))

        {
        resultStr +=line;
        }

        bReader.close();

        return resultStr;

    }

    public static void main(String []args) {
        try {
            RestUtil restUtil = new RestUtil();
            String resultString = restUtil.load("http://zjj.itours.com.cn/itour/search","vacation=16");
            System.out.println(resultString);
            } catch (Exception e) {
            System.out.print(e.getMessage());
            }

        }

}
