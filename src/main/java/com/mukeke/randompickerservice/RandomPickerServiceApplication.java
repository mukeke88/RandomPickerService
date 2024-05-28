package com.mukeke.randompickerservice;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.mukeke.randompickerservice.mapper")
public class RandomPickerServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(RandomPickerServiceApplication.class, args);
    }

}
