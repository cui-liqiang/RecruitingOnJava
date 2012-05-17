package com.cui.dao;


import com.cui.domain.Name;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

import static junit.framework.Assert.assertEquals;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class NameDaoTest extends AbstractTransactionalJUnit4SpringContextTests {
    
    @Autowired
    private NameDao nameDao;

    @Test
    public void should_select_all_names() throws Exception {
        Name name = new Name(1L);
        name.setName("Hello");
        nameDao.save(name);
        assertEquals(1, nameDao.all().size());
    }

}
