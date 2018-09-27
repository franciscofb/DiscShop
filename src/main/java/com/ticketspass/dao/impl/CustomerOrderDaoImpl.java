package com.ticketspass.dao.impl;

import com.ticketspass.dao.CustomerOrderDao;
import com.ticketspass.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by FFB on 09/05/2018.
 */

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao{

        @Autowired
        private SessionFactory sessionFactory;

        public void addCustomerOrder(CustomerOrder customerOrder) {
            Session session = sessionFactory.getCurrentSession();
            session.saveOrUpdate(customerOrder);
            session.flush();
        }
}
