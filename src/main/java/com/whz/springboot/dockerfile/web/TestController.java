package com.whz.springboot.dockerfile.web;

import org.springframework.web.bind.annotation.*;

/**
 * @Author 盖伦
 * @Date 2023/4/18
 */
@RestController
public class TestController {

    @GetMapping("/hello-world")
    public String helloWorld() {
        return "hello world";
    }

    @GetMapping("/test-get")
    public String testGet(@RequestParam String bizCode) {
        return bizCode;
    }

    @PostMapping("/test-post")
    public String testPost(@RequestBody String json) {
        return json;
    }

}