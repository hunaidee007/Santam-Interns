package com.config;

import com.dao.CustomerDao;
import com.impl.CustomerDaoImpl;

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
				.getInstance(CustomerDaoImpl.class);

		System.out.println(customerDaoImpl);

		CustomerDao customerDaoImpl1 = ApplicationContext
				.getInstance(CustomerDaoImpl.class);

		System.out.println(customerDaoImpl1);
	}

}
