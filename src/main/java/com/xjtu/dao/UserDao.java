package com.xjtu.dao;

import com.xjtu.domain.Name;
import com.xjtu.domain.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class UserDao {
    @PersistenceContext
    private EntityManager entityManager;

    public List<User> all() {
        return entityManager.createQuery("from User").getResultList();
    }

    public void save(User user) {
        entityManager.persist(user);
    }

    public void deleteAll() {
        entityManager.createQuery("delete from User").executeUpdate();
    }

}
