package com.jimmy.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.Arrays;

@Configuration
public class CorsConfig {

    @Bean
    public CorsConfigurationSource corsConfigurationSource() throws Exception{
        CorsConfiguration configuration = new CorsConfiguration();
//        configuration.setAllowedHeaders(Arrays.asList("Authorization", "Content-Type"));
        configuration.setAllowedHeaders(Arrays.asList("*"));
        configuration.setAllowedOrigins(Arrays.asList("http://localhost:8888"));
        configuration.setAllowedMethods(Arrays.asList("PUT", "POST", "GET", "DELETE, OPTIONS, PATCH, HEAD, TRACE, CONNECT"));
        configuration.applyPermitDefaultValues();
        configuration.setAllowCredentials(true);
        configuration.setMaxAge(1728000l);

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/personal/doAddUser", configuration);

        return source;
    }

}
