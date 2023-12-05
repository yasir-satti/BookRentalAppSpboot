package com.project.bookrentalappspboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.test.context.ContextConfiguration;

@SpringBootApplication
@ContextConfiguration
//@MapperScan
public class BookRentalAppSpbootApplication {

    public static void main(String[] args) {

        SpringApplication.run(BookRentalAppSpbootApplication.class, args);
    }
}
