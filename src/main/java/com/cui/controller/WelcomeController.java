package com.cui.controller;

import com.cui.dao.NameDao;
import com.cui.domain.Name;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

public class WelcomeController {
    @Autowired
    private NameDao nameDao;
    
    @RequestMapping("/")
    @ResponseBody
    public String index() {
        return names();
    }

    private String names() {
        StringBuffer sb = new StringBuffer();
        for (Name name : nameDao.all()) {
            sb.append(name.getName() + "<br/>");
        }
        return sb.toString();
    }
}
