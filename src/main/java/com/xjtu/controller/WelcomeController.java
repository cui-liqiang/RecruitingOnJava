package com.xjtu.controller;

import com.xjtu.dao.NameDao;
import com.xjtu.domain.Name;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class WelcomeController {
    @Autowired
    private NameDao nameDao;
    
    @RequestMapping("/")
    public String index() {
        return "index";
    }

    private String names() {
        StringBuffer sb = new StringBuffer();
        for (Name name : nameDao.all()) {
            sb.append(name.getName() + "<br/>");
        }
        return sb.toString();
    }
}
