package com.hellokoding.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class icsse2017 {
    @RequestMapping("/welcome2017")
    public String hello(){
        return "FileBody";
    }
    @RequestMapping("/ckeditor")
    public String ckeditor() {
        return "ckEditor";
    }

    //Bước 1: Xét giá trị vào CKEditor trong Controller
    // giá trị  là hello
    //Bước 2: Chử hello không phải nằm trong contrller mà nằm trong SQL
}
