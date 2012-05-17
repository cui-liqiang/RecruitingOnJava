package com.cui;


import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})

public class IntegrationTest extends AbstractTransactionalJUnit4SpringContextTests {
    
    @Test
    public void smoke_test() throws Exception {

    }
    
}
