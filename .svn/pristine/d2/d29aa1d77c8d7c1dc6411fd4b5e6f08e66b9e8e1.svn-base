/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Model.Product;
import Utils.HibernateUtils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Napster
 */
public class AdminService {
     public static boolean insert(Product pr) {
        Session session = HibernateUtils.getSessionFactory().openSession();
        Transaction trans = null;
        try {

            trans = session.beginTransaction();
            session.save(pr);
            trans.commit();
            return true;

        } catch (HibernateException e) {

            if (trans != null) {
                trans.rollback();
            }
            e.printStackTrace();
            System.out.println("Failed to create sessionFactory object." + e);
            return false;
        } finally {
            session.close();
            
        }
        
    }
}
