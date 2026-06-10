package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc

@ComponentScan(basePackages = {
        "controller",
})
//
//@EnableJpaRepositories(basePackages = "repository")

public class WebConfig {

    @Bean
    public InternalResourceViewResolver
    viewResolver() {

        InternalResourceViewResolver resolver =
                new InternalResourceViewResolver();

        resolver.setPrefix("/WEB-INF/view/");

        resolver.setSuffix(".jsp");

        return resolver;
    }

//    @Bean
//    public BCryptPasswordEncoder passwordEncoder(){
//
//        return new BCryptPasswordEncoder();
//    }
}