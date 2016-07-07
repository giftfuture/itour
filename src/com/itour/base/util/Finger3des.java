package com.itour.base.util;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class Finger3des {
	//定义加密算法，有DES、DESede(即3DES)、Blowfish
  //  private static final String Algorithm = "3DES";//解密模式-关键
    private static final String Algorithm = "AES";//解密模式-关键"AES/ECB/PKCS5Padding
  //  public static final byte[] PASSWORD_CRYPT_KEY = "immanuel-Christ-Lord".getBytes();//约定密钥
    //1234567812345678
    public static final byte[] PASSWORD_CRYPT_KEY = "immanuel-Christ_".getBytes();//约定密钥
    
    /**
     * 解密函数
     * @param src 密文的字节数组
     */
    public static byte[] decryptMode(byte[] src) {
        try {
            SecretKey deskey = new SecretKeySpec((PASSWORD_CRYPT_KEY), Algorithm);
            Cipher c1 = Cipher.getInstance(Algorithm);
            c1.init(Cipher.DECRYPT_MODE, deskey);//初始化为解密模式
            return c1.doFinal(src);
        } catch (java.security.NoSuchAlgorithmException e1) {
            e1.printStackTrace();
        } catch (javax.crypto.NoSuchPaddingException e2) {
            e2.printStackTrace();
        } catch (java.lang.Exception e3) {
            e3.printStackTrace();
        }
        return null;
     }
    
    /**
     * 加密方法//未用
     * @param src 源数据的字节数组
     * @return 
     */
    public static byte[] encryptMode(byte[] src) {
        try {
             SecretKey deskey = new SecretKeySpec((PASSWORD_CRYPT_KEY), Algorithm);//生成密钥
             Cipher c1 = Cipher.getInstance(Algorithm);//实例化负责加密/解密的Cipher工具类
             c1.init(Cipher.ENCRYPT_MODE, deskey);  //初始化为加密模式
             byte[]  result = c1.doFinal(src);
             return result;
         } catch (java.security.NoSuchAlgorithmException e1) {
             e1.printStackTrace();
         } catch (javax.crypto.NoSuchPaddingException e2) {
             e2.printStackTrace();
         } catch (java.lang.Exception e3) {
             e3.printStackTrace();
         }
         return null;
     } 
    
    public static void main(String[]args){
    	String key ="admin";
    	System.out.println(encryptMode(key.getBytes(Charset.forName("UTF-8")))) ;
    	/*String pwd =java.util.Base64.getEncoder().encodeToString("some string".getBytes("utf-8")); 
    	try {
			System.out.println(key+" encode    "+new String(,"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
    }
}
