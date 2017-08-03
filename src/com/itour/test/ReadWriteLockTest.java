package com.itour.test;

import java.util.Random;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class ReadWriteLockTest {
	 /**

     * 一个可重入读写锁

     */

    private ReentrantReadWriteLock readWriteLock =new ReentrantReadWriteLock();

    /**

     * 读锁

     */

    private ReadLock readLock =readWriteLock.readLock();

    /**

     * 写锁

     */

    private WriteLock writeLock =readWriteLock.writeLock();

    /**

     * 共享资源

     */

    private String shareData ="寂寞等待中...";

   

    public void write(String str) throws InterruptedException {

          

     writeLock.lock();

           System.err.println("ThreadName:"+Thread.currentThread().getName()+"locking...");

           try {

                  shareData = str;

                  System.err.println("ThreadName:" + Thread.currentThread().getName()+"修改为"+str);

                  Thread.sleep(1);

           }catch(InterruptedException e) {

                  e.printStackTrace();

           }finally {

                  System.err.println("ThreadName:" + Thread.currentThread().getName()+"  unlock...");

                  writeLock.unlock();

           }

    }

   

    public String read() {

           readLock.lock();

           System.out.println("ThreadName:" + Thread.currentThread().getName()+"lock...");

           try {

                  System.out.println("ThreadName:"+Thread.currentThread().getName()+"获取为："+shareData);

                  Thread.sleep(1);

           }catch(InterruptedException e) {

                  e.printStackTrace();

           }finally {

                  System.out.println("ThreadName:" + Thread.currentThread().getName()+"unlock...");

                  readLock.unlock();

           }

           return shareData;

    }

   

    public static void main(String[] args) {

           final ReadWriteLockTest shareData =new ReadWriteLockTest();

           /**

            * 起50条读线程

            */

           for(int i = 0; i < 50; i++) {

                  new Thread(new Runnable() {

                         public void run() {

                                       try {

                                              Thread.sleep(1);

                                       }catch (InterruptedException e) {

                                              e.printStackTrace();

                                       }

                                       shareData.read();

                                }

                  },"get Thread-read"+i).start();

           }

          

           for(int i = 0; i < 5; i++) {

                  new Thread(new Runnable() {

                         public void run() {

                                try {

                                       Thread.sleep(1);

                                }catch (InterruptedException e1) {

                                       e1.printStackTrace();

                                }

                                try {

                                       shareData.write(new Random().nextLong()+"");

                                }catch (InterruptedException e) {

                                       e.printStackTrace();

                                }

                         }

                  },"wirte Thread-write"+i).start();

           }

    }
}
