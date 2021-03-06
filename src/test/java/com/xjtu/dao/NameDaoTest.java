package com.xjtu.dao;


import com.xjtu.domain.Name;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.Assert.assertEquals;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@TransactionConfiguration(defaultRollback = false)
public class NameDaoTest extends AbstractTransactionalJUnit4SpringContextTests {
    
    @Autowired
    private NameDao nameDao;

    @Test
    public void should_select_all_names() throws Exception {
        nameDao.deleteAll();
        Name name = new Name(1L);
        name.setName("name");
        nameDao.save(name);
        assertEquals(1, nameDao.all().size());
    }

}
