package com.xjtu.controller;

import com.xjtu.dao.NameDao;
import com.xjtu.dao.UserDao;
import com.xjtu.domain.Name;
import com.xjtu.domain.User;
import org.hibernate.SessionFactory;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    @Transactional
    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String index(User user) {
        //#TODO CAN'T SAVE USER INFO INTO DATABASE,BUT UNIT TEST WORKS WELL
        User user1 = new User("sss", "sdfdf");
        userDao.save(user1);
        return "success";
    }
}
