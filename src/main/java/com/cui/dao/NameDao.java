package com.cui.dao;

import com.cui.domain.Name;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class NameDao  {

    @PersistenceContext
    private EntityManager entityManager;

    public List<Name> all() {
        return entityManager.createQuery("from Name").getResultList();
    }
    
    public void save(Name name) {
        entityManager.persist(name);
    }

}
