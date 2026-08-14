package com.hasan.intecepter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class HomeMvcConfigrure implements WebMvcConfigurer {
	@Autowired
	private HomeIntercepter homeIntercepter;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		System.out.println("HomeMvcConfigrure.addInterceptors()");
		registry.addInterceptor(homeIntercepter);
	}

}
