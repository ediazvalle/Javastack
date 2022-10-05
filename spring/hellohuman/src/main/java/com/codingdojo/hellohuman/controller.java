package com.codingdojo.hellohuman;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class controller {
    @RequestMapping("")
    public String name(@RequestParam(value="name", required=false) String firstname) {
        if(firstname == null){
            return "hello human";
        }
        else{
            return "hello " + firstname;
        }
    }
}
