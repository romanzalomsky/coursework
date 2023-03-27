package com.boots.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/addEstate").setViewName("addEstate");
        registry.addViewController("/search").setViewName("search");
        registry.addViewController("/converter").setViewName("converter");
        registry.addViewController("/view").setViewName("view");
        registry.addViewController("/favorite").setViewName("favorite");
        registry.addViewController("/news").setViewName("news");
        registry.addViewController("/profile").setViewName("profile");
    }
}
