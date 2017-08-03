package com.itour.test;

import java.util.concurrent.locks.ReentrantLock;

public class ReetrantLockTest {
	   /**

     * 一个可重入锁成员变量

     */

    private ReentrantLock lock =new ReentrantLock();

    public static void main(String[] args) {

           ReetrantLockTest dalt = new ReetrantLockTest();

        dalt.testLock();

    }

    public void testLock(){

           for(int i = 0; i < 5; i++) {

                  Thread thread = new Thread(new Runnable(){

                                       @Override

                                       public void run() {

                                              sayHello();

                                       }

                                },"thread"+i);

                  thread.start();

           }

    }

    public void sayHello() {

           /**

            * 当一条线程不释放锁的时候，第二个线程走到这里的时候就阻塞掉了

            */

           try {

        	   	lock.lock();

                  System.out.println(Thread.currentThread().getName()+" locking ...");

                  System.out.println("Hello world!");

                  System.out.println(Thread.currentThread().getName()+" unlocking ...");

           }finally {

               lock.unlock();

        }

 }
}
