package com.xjtu.controller;

import com.xjtu.dao.UserDao;
import com.xjtu.domain.User;
import org.jboss.logging.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    @Transactional
    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String index(@RequestParam("name") String name, @RequestParam("university") String university) {
        userDao.save(new User(name, university));
        return "success";
    }
}
