package config;


import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Set;

import org.reflections.Reflections;

public class ApplicationContext {

	static ApplicationContext _instance;

	static public HashMap<Type, Object> registry;

	public ApplicationContext() {
		super();
		registry = new HashMap<Type, Object>();
	}

	public static <T> T getInstance(Class<T> serviceRequired) throws InstantiationException, IllegalAccessException {
		if (_instance == null){
			createInstance();
		}
		Type type = serviceRequired.getClass();
	    return (T)_instance.registry.get(serviceRequired);
	}

	private static void createInstance() throws InstantiationException, IllegalAccessException {

		if (_instance == null) {
			_instance = new ApplicationContext();

			Reflections reflections = new Reflections("com.impl");
			Set<Class<?>> annotated = reflections
					.getTypesAnnotatedWith(config.Service.class);

			for (Class<?> clazz : annotated) {
				final Object newInstance = clazz.newInstance();
				Type type=newInstance.getClass();
				registry.put(type, newInstance);				
			}
		}
	}

}
