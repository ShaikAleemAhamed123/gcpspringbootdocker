package com.gcp.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.service.annotation.GetExchange;

@Controller
public class controller {

    @GetMapping("/")
    @ResponseBody
    public String homeRoute(){
        return "Keep Calm...and Do Fruitful Work... Allah SWT indeed love those who are being patient";
    }
}
