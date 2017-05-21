package com.config;

import com.dao.CustomerDao;
import com.impl.CustomerDaoImp;

public class TestApplicationContext {

	/**
	 * @param args
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 */
	public static void main(String[] args) throws InstantiationException,
	IllegalAccessException {
		// TODO Auto-generated method stub

		System.out.println("Hi");
		CustomerDao customerDaoImpl = ApplicationContext
				.getInstance(CustomerDaoImp.class);

		System.out.println(customerDaoImpl);

		CustomerDao customerDaoImpl1 = ApplicationContext
				.getInstance(CustomerDaoImp.class);

		System.out.println(customerDaoImpl1);
	}
}
