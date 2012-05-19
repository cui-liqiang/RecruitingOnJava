package com.xjtu.controller;

import com.xjtu.dao.NameDao;
import com.xjtu.domain.Name;
import com.xjtu.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class WelcomeController {
    @RequestMapping("/")
    public String index() {
        return "index";
    }
}
