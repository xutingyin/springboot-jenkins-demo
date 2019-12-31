package cn.xutingyin.springbootjenkins.controller;

import java.time.LocalDateTime;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping
@RestController
public class HelloController {

    @RequestMapping("hello")
    public String hello() {
        String msg = "Hello, LocalDateTime:" + LocalDateTime.now();
        return msg;
    }
}
