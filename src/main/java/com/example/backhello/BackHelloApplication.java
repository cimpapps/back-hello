package com.example.backhello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class BackHelloApplication {

    public static void main(String[] args) {
        SpringApplication.run(BackHelloApplication.class, args);
    }

    @GetMapping
    public String back() {
        return "back at you";
    }

}
