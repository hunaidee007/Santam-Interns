package com.config;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Set;

import org.reflections.Reflections;

/**
 * Application context
 * @author s983985
 *
 */
public class ApplicationContext {

	static ApplicationContext _instance;

	static public HashMap<Type, Object> registry;

	public ApplicationContext() {
		super();
		System.out.println("constructing application context");
		registry = new HashMap<Type, Object>();
	}

	public static <T> T getInstance(Class<T> serviceRequired) {
		if (_instance == null) {
			createInstance();
		}
		Type type = serviceRequired.getClass();
		return (T) _instance.registry.get(serviceRequired);
	}

	private static void createInstance() {
		try {
			if (_instance == null) {
				_instance = new ApplicationContext();

				Reflections reflections = new Reflections("com.impl");
				Set<Class<?>> annotated = reflections
						.getTypesAnnotatedWith(Service.class);

				for (Class<?> clazz : annotated) {
					final Object newInstance = clazz.newInstance();
					Type type = newInstance.getClass();
					registry.put(type, newInstance);
				}
			}

		} catch (Exception e) {
		}
	}
}
