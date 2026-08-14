package com.hasan.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.hasan.interceptor.AuthInterceptor;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

	@Autowired
	private AuthInterceptor interceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		 registry.addInterceptor(interceptor)

         .addPathPatterns("/profile")

         .excludePathPatterns(
                 "/login",
                 "/logout"
         );
	}
	
}
